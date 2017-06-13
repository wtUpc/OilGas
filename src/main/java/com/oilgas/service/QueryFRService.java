package com.oilgas.service;

import com.oilgas.model.FrBasicData;

/**
 * Created by Administrator on 2017/5/13.
 */

public interface QueryFRService {


    /**
     * 查询 FR_BasicDate 某一个参数
     * @param gdh
     * @param param
     * @return
     */

    Object queryFRBDSingleParam(Integer gdh, String param);

    FrBasicData selectListParam(Long gdh);
}
