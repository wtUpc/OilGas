package com.oilgas.service;

import com.oilgas.model.FrAnnualParameter;

import java.util.List;

/**
 * Created by wangshang on 17/6/4.
 */
public interface AnnualParameterService {
    Boolean save(Integer version, List<FrAnnualParameter> frAnnualParameters);

    List<FrAnnualParameter> selectByGdh(Long gdh);
}
