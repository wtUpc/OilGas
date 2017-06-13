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
    public Boolean checkReportExist(Long gdh) {
        try {

            return pipeReportMapper.selectByGdh(gdh) != null;


        } catch (Exception e) {

            return false;
        }

    }
}
