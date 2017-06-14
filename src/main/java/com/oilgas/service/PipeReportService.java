package com.oilgas.service;

import com.oilgas.mapper.FRBasicDataMapper;
import com.oilgas.model.PipeReport;

/**
 * Created by Administrator on 2017/6/6.
 */
public interface PipeReportService {
    Boolean checkReportExist(Long gdh);

    /**
     * 创建 报告
     * @param pipeReport
     * @return
     */
    Boolean save(PipeReport pipeReport);

    PipeReport selectByGdh(Long gdh);
}
