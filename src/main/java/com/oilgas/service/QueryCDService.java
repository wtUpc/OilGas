package com.oilgas.service;

import com.oilgas.model.CdBasicData;

/**
 * Created by Administrator on 2017/5/9.
 */
public interface QueryCDService {

    /**
     * 查询 CD_BasicDate 某一个参数
     *
     * @param gdh
     * @param param
     * @return
     */

    Object queryCDBDSingleParam(Integer gdh, String param);


    CdBasicData selectListParam (Long gdh);

}
