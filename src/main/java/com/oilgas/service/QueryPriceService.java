package com.oilgas.service;

import java.util.Map;

/**
 * Created by Administrator on 2017/5/15.
 */
public interface QueryPriceService {
    /*查询管道管输价格不同版本*/

    Map queryPriceByGdh(Integer gdh, String priceVersion);

    Map selectPriceByGdhAll(Integer gdh);
}
