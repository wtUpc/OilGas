package com.oilgas.service.impl;

import com.google.common.base.Throwables;
import com.google.common.collect.Lists;
import com.oilgas.mapper.CDAnuualParameterMapper;
import com.oilgas.mapper.FRAnnualParameterMapper;
import com.oilgas.model.CdAnnualParameter;
import com.oilgas.model.FrAnnualParameter;
import com.oilgas.service.AnnualParameterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wangshang on 17/6/4.
 */
@Service
public class AnnualParameterServiceImpl implements AnnualParameterService {

    private final Logger logger = LoggerFactory.getLogger(AnnualParameterServiceImpl.class);

    @Autowired
    private FRAnnualParameterMapper frAnnualParameterMapper;
    @Autowired
    private CDAnuualParameterMapper cdAnuualParameterMapper;

    @Override
    public Boolean save(Integer version, List<FrAnnualParameter> frAnnualParameters) {
        try {

            switch (version) {
                case 1:
                    frAnnualParameterMapper.insertList(frAnnualParameters);
                    return Boolean.TRUE;
                case 2:
                    List<CdAnnualParameter> cdAnnualParameters = Lists.newArrayList();
                    frAnnualParameters.forEach(it -> {
                        CdAnnualParameter cdAnnualParameter = new CdAnnualParameter();
                        BeanUtils.copyProperties(it, cdAnnualParameter);
                        cdAnnualParameters.add(cdAnnualParameter);
                    });
                    cdAnuualParameterMapper.insertList(cdAnnualParameters);
                    return Boolean.TRUE;
            }
            return Boolean.FALSE;
        } catch (Exception e) {
            logger.error("cause:{}", Throwables.getStackTraceAsString(e));
            return Boolean.FALSE;
        }
    }

    @Override
    public List<FrAnnualParameter> selectByGdh(Long gdh) {
        try {
            return frAnnualParameterMapper.selectAllByGdh(gdh);
        } catch (Exception e) {
            logger.error("");
            return null;
        }
    }
}
