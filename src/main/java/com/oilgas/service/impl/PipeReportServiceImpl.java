package com.oilgas.service.impl;

import com.oilgas.mapper.PipeReportMapper;
import com.oilgas.model.PipeReport;
import com.oilgas.service.PipeReportService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/6/6.
 */
@Service
public class PipeReportServiceImpl implements PipeReportService {

    private Logger logger = LoggerFactory.getLogger(PipeReportServiceImpl.class);

    @Autowired
    private PipeReportMapper pipeReportMapper;

    @Override
    public PipeReport selectByGdh(Long gdh) {
        try{

            PipeReport pipeReport =new PipeReport();
            pipeReport.setGdh(gdh);
            return pipeReportMapper.queryByGdh(gdh);
        }catch (Exception e){

        }
        return null;
    }

    @Override
    public Boolean checkReportExist(Long gdh) {
        try {

            return pipeReportMapper.selectByGdh(gdh) != null;


        } catch (Exception e) {

            return false;
        }

    }

    /**
     * 创建 报告
     *
     * @param pipeReport
     * @return
     */
    @Override
    public Boolean save(PipeReport pipeReport) {
        try {

            pipeReportMapper.insert(pipeReport);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
