package com.oilgas.controller;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.oilgas.dto.*;
import com.oilgas.model.FrBasicData;
import com.oilgas.model.FrTransAddress;
import com.oilgas.model.PipeTransPrice;
import com.oilgas.model.Project;
import com.oilgas.service.*;
import com.oilgas.util.CalculateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import org.joda.time.LocalDate;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collector;
import java.util.stream.Collectors;

/**
 * Created by wangshang on 17/6/4.
 */
@Controller
public class CalculationController {

    private final ProjectService projectService;
    private final BasicDataService basicDataService;
    private final TransAddressService transAddressService;
    private final AnnualParameterService annualParameterService;
    private final PipeTransPriceService pipeTransPriceService;

    public CalculationController(ProjectService projectService,
                                 BasicDataService basicDataService,
                                 TransAddressService transAddressService,
                                 AnnualParameterService annualParameterService,
                                 PipeTransPriceService pipeTransPriceService) {
        this.projectService = projectService;
        this.basicDataService = basicDataService;
        this.transAddressService = transAddressService;
        this.annualParameterService = annualParameterService;
        this.pipeTransPriceService = pipeTransPriceService;
    }
    @Autowired
    private QueryFRService queryFRService;


    //计算单条管输价格
    @GetMapping("/priceCalculation")
    public String priceCalculation() {
        return "calculation/priceCalculation";
    }

    /**
     * 保存 单条管道价格测算 基础数据
     *
     * @return
     */
    @PostMapping("/savePriceCalculation")
    public String savePriceCalculation(FrBasicData frBasicData) {

        Project project = new Project();
        project.setOilorgas(frBasicData.getGsjz());
        project.setName(frBasicData.getGdmc());
        project.setTime(new Date());
        project.setZxs(1);
        Project result = projectService.createProject(project);
        frBasicData.setGdh(result.getId());
        FrBasicData basicData = basicDataService.saveBasicData(frBasicData);

        return "redirect:/priceCalculationYear?gdh=" + result.getId() + "&version=" + frBasicData.getBb();
    }

    /**
     * 保存 管道条数
     *
     * @return
     */
    @Transactional
    @PostMapping("/saveGuanDaoTiaoshu")
    public String saveGuanDaoTiaoShu(Integer gdzxsl,
                                     Long gdh,
                                     Integer version) {
        Project project = new Project();
        project.setId(gdh);
        project.setZxs(gdzxsl);
        projectService.update(project);
        transAddressService.deleteBasicData(version, gdh);
        return "redirect:/priceCalculationYear?gdh=" + gdh + "&version=" + version;
    }

    /**
     * 保存 管道 支线 基础数据
     *
     * @return
     */
    @Transactional
    @PostMapping("/saveGuanDaoBasic")
    public String saveGuanDaoBasic(GDZXBasic gdzxBasic,
                                   Long gdh,
                                   Integer version) {

        gdzxBasic.initData();
        transAddressService.deleteBasicData(version, gdh, new LocalDate().getYear());
        transAddressService.saveBasicData(version, gdzxBasic.getFrTransAddresses());

        return "redirect:/priceCalculationYear?gdh=" + gdh + "&version=" + version;
    }

    /**
     * 分年度 统计
     *
     * @return
     */
    @GetMapping("/priceCalculationYear")
    public ModelAndView priceCalculationYear(@RequestParam(required = false) Long gdh,
                                             @RequestParam(required = false) Integer version) {
        ModelAndView result = new ModelAndView("calculation/priceCalculationYear");

        CalculationYear calculationYear = new CalculationYear();
        calculationYear.setGdh(gdh);
        calculationYear.setVersion(version);
        calculationYear.setPjq(basicDataService.selectBasicData(version, gdh).getPjq());
        Project project = projectService.getById(gdh);
        calculationYear.setGdzxts(project.getZxs());
        calculationYear.setFrTransAddresses(transAddressService.selectTransAddress(gdh, version, new LocalDate().getYear()));
        Map<String, List<FrTransAddress>> map = Maps.newHashMap();
        calculationYear.setFrMap(map);
        result.addObject("calculationYear", calculationYear);
        return result;
    }

    /**
     * 保存计算结果
     *
     * @return
     */
    @Transactional
    @PostMapping("/saveCalculationResult")
    public String saveCalculationResult(CalculationAnnual calculationAnnual) {

        calculationAnnual.initItem();
        annualParameterService.save(calculationAnnual.getVersion(), calculationAnnual.getCalculationAnnualItems().stream().map(CalculationAnnualItem::getFrAnnualParameter).collect(Collectors.toList()));
        transAddressService.deleteBasicData(calculationAnnual.getVersion(), calculationAnnual.getGdh());
        List<FrTransAddress> frTransAddresses = Lists.newArrayList();
        calculationAnnual.getCalculationAnnualItems().forEach(it -> {
            frTransAddresses.addAll(it.getFrTransAddresses());
        });
        transAddressService.saveBasicData(calculationAnnual.getVersion(), frTransAddresses);

        // 计算
        pipeTransPriceService.save(calculationAnnual.getVersion(), calculationAnnual.getGdh(), 1.115F);
        return "redirect:/queryPrice";
    }


    public double irr(double[] income){
        return CalculateUtil.irr(income,0.1D);
    }

    @GetMapping("/fenXi")
    public ModelAndView fenXi(){
        ModelAndView result =new ModelAndView("calculation/fenXi");
        return result;
    }
    @PostMapping("/fenXiResult")
    public ModelAndView doQuery(QueryParam queryParam){
        ModelAndView result =new ModelAndView("calculation/fenXiResult");
        QueryResult queryResult = new QueryResult();
        queryResult.setFrBasicData(queryFRService.queryFRBDSingleParam(queryParam.getGdh(), queryParam.getParamName()));
        result.addObject("fenXiResult",queryResult);
        queryParam.initParamDisplay();
        result.addObject("queryParam",queryParam);
        System.out.println(queryParam);
        System.out.println(queryResult);
        return result;
    }

}
