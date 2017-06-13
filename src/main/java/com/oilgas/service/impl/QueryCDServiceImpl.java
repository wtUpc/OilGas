package com.oilgas.service.impl;

import com.google.common.base.Throwables;
import com.google.common.collect.Maps;
import com.oilgas.mapper.CDBasicDataMapper;
import com.oilgas.model.CdBasicData;
import com.oilgas.service.QueryCDService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * Created by Administrator on 2017/5/9.
 */
@Service
public class QueryCDServiceImpl implements QueryCDService {

    private Logger logger = LoggerFactory.getLogger(QueryCDServiceImpl.class);

    private final CDBasicDataMapper cdBasicDataMapper;

    public QueryCDServiceImpl(CDBasicDataMapper cdBasicDataMapper) {
        this.cdBasicDataMapper = cdBasicDataMapper;
    }

    /**
     * 查询 CD_BasicDate 某一个参数
     *
     * @param gdh
     * @param param
     * @return
     */
    @Override
    public Object queryCDBDSingleParam(Integer gdh, String param) {
        try {
            Map<String, Object> params = Maps.newHashMap();
            params.put("gdh", gdh);
            params.put("param", param);
            return cdBasicDataMapper.selectSingleParamByGdh(params).get(param);
        } catch (Exception e) {
            logger.error("query cd_basic_data failed. gdh:{}, param:{}, cause:{}", gdh, param, Throwables.getStackTraceAsString(e));
            return null;
        }
    }

    @Override
    public CdBasicData selectListParam(Long gdh) {
        try{
            return cdBasicDataMapper.selectListParam(gdh);
        }catch (Exception e){
            logger.error("query cd_basic_data failed. gdh:{},  cause:{}", gdh, Throwables.getStackTraceAsString(e));
            return null;
        }
    }
}
