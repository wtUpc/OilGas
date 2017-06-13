package com.oilgas.service.impl;

import com.google.common.base.Throwables;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.oilgas.mapper.CDTransAddressMapper;
import com.oilgas.mapper.FRTransAddressMapper;
import com.oilgas.model.CdTransAddress;
import com.oilgas.model.FrTransAddress;
import com.oilgas.service.TransAddressService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by wangshang on 17/6/4.
 */
@Service
public class TransAddressServiceImpl implements TransAddressService {

    private final Logger logger = LoggerFactory.getLogger(TransAddressServiceImpl.class);
    private final CDTransAddressMapper cdTransAddressMapper;
    private final FRTransAddressMapper frTransAddressMapper;

    public TransAddressServiceImpl(CDTransAddressMapper cdTransAddressMapper,
                                   FRTransAddressMapper frTransAddressMapper) {

        this.cdTransAddressMapper = cdTransAddressMapper;
        this.frTransAddressMapper = frTransAddressMapper;
    }

    @Override
    public Boolean saveBasicData(Integer version, List<FrTransAddress> frTransAddresses) {
        try {
            switch (version) {
                case 1:
                    frTransAddressMapper.insertList(frTransAddresses);
                    return Boolean.TRUE;
                case 2:
                    List<CdTransAddress> cdTransAddresses = Lists.newArrayList();
                    frTransAddresses.forEach(it -> {
                        CdTransAddress cdTransAddress = new CdTransAddress();
                        BeanUtils.copyProperties(it, cdTransAddress);
                        cdTransAddresses.add(cdTransAddress);
                    });
                    cdTransAddressMapper.insertList(cdTransAddresses);
                    return Boolean.TRUE;
            }

            return Boolean.FALSE;
        } catch (Exception e) {
            logger.error("cause:{}", Throwables.getStackTraceAsString(e));
            return Boolean.FALSE;
        }
    }

    @Override
    public List<FrTransAddress> selectTransAddress(Long gdh, Integer version, int year) {
        try {
            FrTransAddress frTransAddress = new FrTransAddress();
            frTransAddress.setGdh(gdh);
            frTransAddress.setNh(year);
            switch (version) {
                case 1:
                    return frTransAddressMapper.select(frTransAddress);
                case 2:
                    CdTransAddress cdTransAddress = new CdTransAddress();
                    cdTransAddress.setGdh(gdh);
                    cdTransAddress.setNh(year);
                    List<FrTransAddress> frTransAddresses = Lists.newArrayList();

                    List<CdTransAddress> cdTransAddresses = cdTransAddressMapper.select(cdTransAddress);
                    cdTransAddresses.forEach(it -> {
                        FrTransAddress f = new FrTransAddress();
                        BeanUtils.copyProperties(it, f);
                        frTransAddresses.add(f);
                    });
                    return frTransAddresses;
            }

            return null;
        } catch (Exception e) {
            logger.error("cause:{}", Throwables.getStackTraceAsString(e));
            return null;
        }
    }

    @Override
    public Boolean deleteBasicData(Integer version, Long gdh, int year) {
        try {
            switch (version) {
                case 1:
                    FrTransAddress frTransAddress = new FrTransAddress();
                    frTransAddress.setGdh(gdh);
                    frTransAddress.setNh(year);
                    frTransAddressMapper.delete(frTransAddress);
                    return Boolean.TRUE;
                case 2:
                    CdTransAddress cdTransAddress = new CdTransAddress();
                    cdTransAddress.setGdh(gdh);
                    cdTransAddress.setNh(year);
                    cdTransAddressMapper.delete(cdTransAddress);
                    return Boolean.TRUE;
            }
            return Boolean.FALSE;
        } catch (Exception e) {
            logger.error("cause:{}", Throwables.getStackTraceAsString(e));
            return Boolean.FALSE;
        }
    }

    @Override
    public Boolean deleteBasicData(Integer version, Long gdh) {
        try {
            switch (version) {
                case 1:
                    FrTransAddress frTransAddress = new FrTransAddress();
                    frTransAddress.setGdh(gdh);
                    frTransAddressMapper.delete(frTransAddress);
                    return Boolean.TRUE;
                case 2:
                    CdTransAddress cdTransAddress = new CdTransAddress();
                    cdTransAddress.setGdh(gdh);
                    cdTransAddressMapper.delete(cdTransAddress);
                    return Boolean.TRUE;
            }
            return Boolean.FALSE;
        } catch (Exception e) {
            logger.error("cause:{}", Throwables.getStackTraceAsString(e));
            return Boolean.FALSE;
        }
    }
}
