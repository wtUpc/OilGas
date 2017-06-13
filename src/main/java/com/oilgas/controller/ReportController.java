package com.oilgas.controller;

import com.oilgas.dto.QueryResult;
import com.oilgas.dto.ResultListParam;
import com.oilgas.mapper.FRBasicDataMapper;
import com.oilgas.model.FrAnnualParameter;
import com.oilgas.model.FrBasicData;
import com.oilgas.model.Project;
import com.oilgas.service.AnnualParameterService;
import com.oilgas.service.PipeReportService;
import com.oilgas.service.ProjectService;
import com.oilgas.service.QueryFRService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by wangshang on 17/6/4.
 */
@Controller
@RequestMapping("/report")
public class ReportController {

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
        Project project =projectService.getById(gdh);
        result.addObject("frBasicData", frBasicData);
        result.addObject("frAnnualParameters", frAnnualParameters);
        result.addObject("project",project);
        return result;
    }
}
