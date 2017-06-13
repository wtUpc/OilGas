package com.oilgas.mapper;

import com.oilgas.model.PipeReport;
import com.oilgas.util.MyMapper;

/**
 * Created by Administrator on 2017/6/6.
 */
public interface PipeReportMapper extends MyMapper<PipeReport> {

    //通过管道号查询是否存在管输价格申请报告
    PipeReport selectByGdh (Long gdh);
}
