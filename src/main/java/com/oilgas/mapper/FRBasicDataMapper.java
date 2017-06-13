package com.oilgas.mapper;

import com.oilgas.model.FrBasicData;
import com.oilgas.util.MyMapper;


import java.util.Map;

/**
 * Created by Administrator on 2017/5/13.
 */
public interface FRBasicDataMapper extends MyMapper<FrBasicData> {
    /**
     * 根据 管道号 查询 CdBasicData 的某一参数
     * @param params
     * @return
     */

    Map selectSingleParamByGdh(Map<String, Object> params);

    FrBasicData selectListParam(Long gdh);

    FrBasicData selectByGdh(Long gdh);

}
