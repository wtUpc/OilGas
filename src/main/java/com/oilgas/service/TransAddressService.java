package com.oilgas.service;

import com.oilgas.model.FrTransAddress;

import java.util.List;

/**
 * Created by wangshang on 17/6/4.
 */
public interface TransAddressService {

    Boolean saveBasicData(Integer version, List<FrTransAddress> frTransAddresses);

    List<FrTransAddress> selectTransAddress(Long gdh, Integer version, int year);

    Boolean deleteBasicData(Integer version, Long gdh, int year);

    Boolean deleteBasicData(Integer version, Long gdh);
}
