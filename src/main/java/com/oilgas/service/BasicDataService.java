package com.oilgas.service;

import com.oilgas.model.FrBasicData;

/**
 * Created by wangshang on 17/6/4.
 */
public interface BasicDataService {

    FrBasicData saveBasicData(FrBasicData frBasicData);

    FrBasicData selectBasicData(Integer version, Long gdh);
}
