package com.oilgas.mapper;

import com.oilgas.model.EvaluParameters;
import com.oilgas.util.MyMapper;

import java.util.Map;

/**
 * Created by Administrator on 2017/5/14.
 */
public interface EvaluParametersMapper extends MyMapper<EvaluParameters> {

    /**
     * 根据 管道号 查询 EvaluParameters 的某一参数
     * @param params
     * @return
     */
    Map selectSingleParamByGdh(Map<String,Object>params);
}
