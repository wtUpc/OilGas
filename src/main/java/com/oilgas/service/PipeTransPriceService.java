package com.oilgas.service;

/**
 * Created by wangshang on 17/6/5.
 */
public interface PipeTransPriceService {

    Boolean save(Integer version, Long gdh, float price);
}
