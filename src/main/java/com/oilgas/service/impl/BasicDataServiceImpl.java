package com.oilgas.service.impl;

import com.google.common.base.Throwables;
import com.oilgas.mapper.CDBasicDataMapper;
import com.oilgas.mapper.FRBasicDataMapper;
import com.oilgas.model.CdBasicData;
import com.oilgas.model.FrBasicData;
import com.oilgas.service.BasicDataService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

/**
 * Created by wangshang on 17/6/4.
 */
@Service
public class BasicDataServiceImpl implements BasicDataService {

    private Logger logger = LoggerFactory.getLogger(BasicDataServiceImpl.class);

    private final FRBasicDataMapper frBasicDataMapper;
    private final CDBasicDataMapper cdBasicDataMapper;

    public BasicDataServiceImpl(FRBasicDataMapper frBasicDataMapper,
                                CDBasicDataMapper cdBasicDataMapper) {
        this.frBasicDataMapper = frBasicDataMapper;
        this.cdBasicDataMapper = cdBasicDataMapper;
    }

    @Override
    public FrBasicData saveBasicData(FrBasicData frBasicData) {
        try {

            switch (frBasicData.getBb()) {
                case 1:
                    frBasicDataMapper.insert(frBasicData);
                    return frBasicData;
                case 2:
                    CdBasicData cdBasicData = new CdBasicData();
                    BeanUtils.copyProperties(frBasicData, cdBasicData);
                    cdBasicDataMapper.insert(cdBasicData);
                    frBasicData.setId(cdBasicData.getId());
                    return frBasicData;
            }
            return null;
        } catch (Exception e) {
            logger.error("cause:{}", Throwables.getStackTraceAsString(e));
            return null;
        }
    }

    @Override
    public FrBasicData selectBasicData(Integer version, Long gdh) {
        try {
            switch (version) {
                case 1:
                    return frBasicDataMapper.selectByGdh(gdh);
                case 2:
                    CdBasicData cdBasicData = cdBasicDataMapper.selectByGdh(gdh);
                    FrBasicData frBasicData = new FrBasicData();
                    BeanUtils.copyProperties(cdBasicData, frBasicData);
                    return frBasicData;
            }
            return null;
        } catch (Exception e) {
            logger.error("cause:{}", Throwables.getStackTraceAsString(e));
            return null;
        }
    }
}
