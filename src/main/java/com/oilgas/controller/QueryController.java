package com.oilgas.controller;


import com.oilgas.dto.*;
import com.oilgas.model.PipeReport;
import com.oilgas.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * Created by Administrator on 2017/5/8.
 */
@Controller
public class QueryController {

    private final QueryCDService queryCDService;
    private final QueryFRService queryFRService;
    private final QueryEPService queryEPService;
    private final QueryPriceService queryPriceService;
    private final PipeReportService pipeReportService;

    public QueryController(QueryCDService queryCDService,
                           QueryFRService queryFRService,
                           QueryEPService queryEPService,
                           QueryPriceService queryPriceService, PipeReportService pipeReportService) {
        this.queryCDService = queryCDService;
        this.queryFRService = queryFRService;
        this.queryEPService = queryEPService;
        this.queryPriceService = queryPriceService;
        this.pipeReportService = pipeReportService;
    }


    @GetMapping("/index")
    public ModelAndView index() {
        ModelAndView result = new ModelAndView("index");

        return result;
    }

    @GetMapping("/querySinglePara")
    public ModelAndView querySinglePara() {
        ModelAndView result = new ModelAndView("query/querySinglePara");

        return result;
    }

    @PostMapping("/resultSinglePara")
    public ModelAndView doQuery(QueryParam queryParam) {
        System.out.println(queryParam);
        ModelAndView result = new ModelAndView("query/resultSinglePara");
        QueryResult queryResult = new QueryResult();
        if (queryParam.getVersion() == 1) {
            queryResult.setFrBasicData(queryFRService.queryFRBDSingleParam(queryParam.getGdh(), queryParam.getParamName()));
        } else if (queryParam.getVersion() == 2) {
            queryResult.setCdBasicData(queryCDService.queryCDBDSingleParam(queryParam.getGdh(), queryParam.getParamName()));
        } else if (queryParam.getVersion() == 3) {
            queryResult.setEvaluParameters(queryEPService.queryEPSingleParam(queryParam.getGdh(), queryParam.getParamName()));
        } else if (queryParam.getVersion() == 0) {
            queryResult.setFrBasicData(queryFRService.queryFRBDSingleParam(queryParam.getGdh(), queryParam.getParamName()));
            queryResult.setCdBasicData(queryCDService.queryCDBDSingleParam(queryParam.getGdh(), queryParam.getParamName()));
            queryResult.setEvaluParameters(queryEPService.queryEPSingleParam(queryParam.getGdh(), queryParam.getParamName()));
        }

        result.addObject("resultSinglePara", queryResult);
        System.out.println(queryResult);
        queryParam.initParamDisplay();
        result.addObject("queryParam", queryParam);
        return result;
    }

    @GetMapping("/queryListPara")
    public ModelAndView queryListPara() {
        ModelAndView result = new ModelAndView("query/queryListPara");

        return result;
    }

    @PostMapping("/resultListPara")
    public ModelAndView doQuery(Long gdh, Integer version) {
        ModelAndView result = new ModelAndView("query/resultListPara");
        ResultListParam resultListParam = new ResultListParam();
        switch (version) {
            case 0:
                resultListParam.setCdBasicData(queryCDService.selectListParam(gdh));
                resultListParam.setFrBasicData(queryFRService.selectListParam(gdh));
                break;
            case 1:
                resultListParam.setFrBasicData(queryFRService.selectListParam(gdh));
                break;
            case 2:
                resultListParam.setCdBasicData(queryCDService.selectListParam(gdh));
                break;

        }
        result.addObject("resultListParam", resultListParam);
        return result;
    }


    @GetMapping("/queryTransPriceApply")//管输价格申请报告查询
    public ModelAndView queryTransPriceApply() {
        ModelAndView result = new ModelAndView("query/queryTransPriceApply");
        return result;
    }

    @PostMapping("/resultTransPriceApply")
    public ModelAndView doQuery(Long gdh){
        ModelAndView result=new ModelAndView("query/resultTransPriceApply");
        PipeReport pipeReport = pipeReportService.selectByGdh(gdh);
        result.addObject("PipeReport",pipeReport);
        return result;
    }

    @GetMapping("/queryTransPriceReply")//管输价格批复文件查询
    public ModelAndView queryTransPriceReply() {
        ModelAndView result = new ModelAndView("query/queryTransPriceReply");
        return result;
    }

    @GetMapping("/queryPrice")
    public ModelAndView queryPrice() {
        ModelAndView result = new ModelAndView("query/queryPrice");
        return result;
    }

    @PostMapping("/resultQueryPrice")
    public ModelAndView doQuery(QueryPrice queryPrice) {
        ModelAndView result = new ModelAndView("query/resultQueryPrice");
        Map map;
        if (queryPrice.getPriceVersion().equals("all")) {
            map = queryPriceService.selectPriceByGdhAll(queryPrice.getGdh());
        } else {
            map = queryPriceService.queryPriceByGdh(queryPrice.getGdh(), queryPrice.getPriceVersion());
        }
        result.addObject("resultQueryPrice", map);
        result.addObject("queryPrice", queryPrice);
        return result;
    }

}
