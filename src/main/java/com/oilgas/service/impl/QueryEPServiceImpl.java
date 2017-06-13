package com.oilgas.service.impl;

import com.google.common.base.Throwables;
import com.google.common.collect.Maps;
import com.oilgas.mapper.EvaluParametersMapper;
import com.oilgas.service.QueryEPService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * Created by Administrator on 2017/5/14.
 */
@Service
public class QueryEPServiceImpl implements QueryEPService {


    private Logger logger = LoggerFactory.getLogger(QueryEPServiceImpl.class);

    private final EvaluParametersMapper evaluParametersMapper;

    public QueryEPServiceImpl(EvaluParametersMapper evaluParametersMapper) {
        this.evaluParametersMapper = evaluParametersMapper;
    }


    /**
     * 查询 EvaluParameters 某一个参数
     *
     * @param gdh
     * @param param
     * @return
     */
    @Override
    public Object queryEPSingleParam(Integer gdh, String param) {

        try {
            Map<String, Object> params = Maps.newHashMap();
            params.put("gdh", gdh);
            params.put("param", param);
            return evaluParametersMapper.selectSingleParamByGdh(params).get(param);
        } catch (Exception e) {
            logger.error("query EvaluParameters failed. gdh:{}, param:{}, cause:{}", gdh, param, Throwables.getStackTraceAsString(e));
            return null;
        }

    }
}
