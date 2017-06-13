package com.oilgas.mapper;

import com.oilgas.model.PipeTransPrice;
import com.oilgas.util.MyMapper;

import java.util.Map;

/**
 * Created by Administrator on 2017/5/15.
 */
public interface PipeTransPriceMapper extends MyMapper<PipeTransPrice> {


    /**
     * 根据管道号来查询不同版本管输价格
     */
    Map selectPriceByGdh(Map<String, Object> param);

    Map selectPriceByGdhAll(Map<String, Object> param);

}


