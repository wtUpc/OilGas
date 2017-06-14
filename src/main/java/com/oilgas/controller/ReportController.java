package com.oilgas.controller;

import com.oilgas.conf.StorageProperties;
import com.oilgas.dto.QueryResult;
import com.oilgas.dto.ResultListParam;
import com.oilgas.mapper.FRBasicDataMapper;
import com.oilgas.model.*;
import com.oilgas.service.AnnualParameterService;
import com.oilgas.service.PipeReportService;
import com.oilgas.service.ProjectService;
import com.oilgas.service.QueryFRService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import static com.oilgas.util.WordUtil.exportWord;

/**
 * Created by wangshang on 17/6/4.
 */
@Controller
@RequestMapping("/report")
public class ReportController {

    @Autowired
    private StorageProperties properties;
    @Autowired
    private ProjectService projectService;
    @Autowired
    private PipeReportService pipeReportService;
    @Autowired
    private QueryFRService queryFRService;
    @Autowired
    private AnnualParameterService annualParameterService;

    @GetMapping("/projects")//生成报告及其附表
    public ModelAndView projects() {
        ModelAndView result = new ModelAndView("file/projects");
        List<Project> projects = projectService.getAll();

        projects.forEach(it -> {
            it.setReportExist(pipeReportService.checkReportExist(it.getId()));
        });
        result.addObject("projects", projects);
        return result;
    }

    @GetMapping("/createReport")
    public ModelAndView createReport(@RequestParam Long gdh) {

        ModelAndView result = new ModelAndView("file/createReport");
        FrBasicData frBasicData = queryFRService.selectListParam(gdh);
        List<FrAnnualParameter> frAnnualParameters = annualParameterService.selectByGdh(gdh);
        Project project = projectService.getById(gdh);
        result.addObject("frBasicData", frBasicData);
        StringBuilder gslCondition = new StringBuilder();
        frAnnualParameters.forEach(it -> {
            gslCondition.append(it.getNh() + "年为" + it.getGsl() + "亿方，");
        });
        StringBuilder dlfyCondition = new StringBuilder();
        frAnnualParameters.forEach(it -> {
            dlfyCondition.append(it.getNh() + "年为" + it.getHdl() + "万千瓦时，");
        });
        StringBuilder rlfyCondition = new StringBuilder();
        frAnnualParameters.forEach(it -> {
            rlfyCondition.append(it.getNh() + "年为" + it.getHql() + "万方，");
        });
        result.addObject("gslCondition", gslCondition.toString().substring(0, gslCondition.length() - 1));
        result.addObject("dlfyCondition", dlfyCondition.toString().substring(0, dlfyCondition.length() - 1));
        result.addObject("rlfyCondition", rlfyCondition.toString().substring(0, rlfyCondition.length() - 1));
        result.addObject("frAnnualParameters", frAnnualParameters);
        result.addObject("project", project);
        return result;
    }

    @PostMapping("/doCreateReport")
    public String doCreateReport(FrBasicData frBasicData) throws IOException {

        // 1. 根据 管道号 查询 pipe_trans_price
        String filename = frBasicData.getGdName() + ".docx";
        FileOutputStream out = new FileOutputStream(properties.getLocation() + "/" + filename);
        PipeTransPrice pipeTransPrice = new PipeTransPrice();
        exportWord(frBasicData, pipeTransPrice, out);
        out.close();
        String location = MvcUriComponentsBuilder
                .fromMethodName(FileController.class, "serveFile", filename)
                .build().toString();
        PipeReport pipeReport = new PipeReport();
        pipeReport.setGsjgsqbg(location);
        pipeReport.setGdh(frBasicData.getGdh());

        pipeReportService.save(pipeReport);
        return "redirect:/report/projects";
    }

}
