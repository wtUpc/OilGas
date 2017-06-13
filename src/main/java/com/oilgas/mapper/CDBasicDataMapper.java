package com.oilgas.mapper;

import com.oilgas.model.CdBasicData;
import com.oilgas.util.MyMapper;

import java.util.Map;

/**
 * Created by Administrator on 2017/5/9.
 */
public interface CDBasicDataMapper extends MyMapper<CdBasicData> {

    /**
     * 根据 管道号 查询 CdBasicData 的某一参数
     * @param params
     * @return
     */
    Map selectSingleParamByGdh(Map<String, Object> params);

    CdBasicData selectListParam(Long gdh);

    CdBasicData selectByGdh(Long gdh);
}
