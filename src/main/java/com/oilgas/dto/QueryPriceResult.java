package com.oilgas.dto;

import lombok.Data;

/**
 * Created by Administrator on 2017/5/18.
 */
@Data
public class QueryPriceResult {
    private Float kybggsjg;//可研报告管输价格
    private Float gdgssbgsjg;//管道公司申报管输价格
    private Float pfgsjg;//批复管输价格
    private Float zxgsjg;//执行管输价格
}
