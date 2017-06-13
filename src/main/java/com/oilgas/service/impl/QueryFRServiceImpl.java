package com.oilgas.service.impl;

import com.google.common.collect.Maps;
import com.google.common.base.Throwables;
import com.oilgas.mapper.FRBasicDataMapper;
import com.oilgas.model.FrBasicData;
import com.oilgas.service.QueryFRService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * Created by Administrator on 2017/5/13.
 */
@Service
public class QueryFRServiceImpl implements QueryFRService {


    private Logger logger = LoggerFactory.getLogger(QueryFRServiceImpl.class);

    private final FRBasicDataMapper frBasicDataMapper;

    public QueryFRServiceImpl(FRBasicDataMapper frBasicDataMapper) {
        this.frBasicDataMapper = frBasicDataMapper;
    }

    /**
     * 查询 FR_BasicDate 某一个参数
     *
     * @param gdh
     * @param param
     * @return
     */
    @Override
    public Object queryFRBDSingleParam(Integer gdh, String param) {
        try{
            Map<String,Object> params = Maps.newHashMap();
            params.put("gdh",gdh);
            params.put("param",param);
            return frBasicDataMapper.selectSingleParamByGdh(params).get(param);

        }catch (Exception e){
            logger.error("query fr_basic_data failed. gdh:{}, param:{}, cause:{}", gdh, param, Throwables.getStackTraceAsString(e));
            return null;
        }

    }

    @Override
    public FrBasicData selectListParam(Long gdh) {
        try{
            return frBasicDataMapper.selectListParam(gdh);
        }catch (Exception e){
            logger.error("query fr_basic_data failed. gdh:{}, param:{}, cause:{}", gdh, Throwables.getStackTraceAsString(e));
            return null;
        }
    }
}
