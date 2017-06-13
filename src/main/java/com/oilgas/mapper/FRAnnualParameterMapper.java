package com.oilgas.mapper;

import com.oilgas.model.FrAnnualParameter;
import com.oilgas.util.MyMapper;

import java.util.List;

/**
 * Created by wangshang on 17/6/4.
 */
public interface FRAnnualParameterMapper extends MyMapper<FrAnnualParameter> {
    /**
     * 通过管道号查询出分年度所有参数
     */
    List<FrAnnualParameter> selectAllByGdh(Long gdh);
}
