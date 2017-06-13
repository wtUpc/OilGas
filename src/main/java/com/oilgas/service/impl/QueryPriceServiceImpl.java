package com.oilgas.service.impl;

import com.google.common.base.Throwables;
import com.oilgas.dto.QueryPriceResult;
import com.oilgas.mapper.PipeTransPriceMapper;
import com.google.common.collect.Maps;
import com.oilgas.service.QueryPriceService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.Map;

import static org.apache.ibatis.ognl.DynamicSubscript.all;

/**
 * Created by Administrator on 2017/5/15.
 */
@Service
public class QueryPriceServiceImpl implements QueryPriceService {
    private Logger logger = LoggerFactory.getLogger(QueryPriceServiceImpl.class);


    public final PipeTransPriceMapper pipeTransPriceMapper;

    public QueryPriceServiceImpl(PipeTransPriceMapper pipeTransPriceMapper) {
        this.pipeTransPriceMapper = pipeTransPriceMapper;
    }

    /**
     * 通过管道号来查询不同版本的管输价格
     */
    @Override
    public Map queryPriceByGdh(Integer gdh, String priceVersion) {

        try {
            Map<String, Object> param = Maps.newHashMap();
            param.put("gdh", gdh);
            param.put("priceVersion", priceVersion);

            return pipeTransPriceMapper.selectPriceByGdh(param);

        } catch (Exception e) {
            logger.error("query PipeTransPrice failed. gdh:{}, version:{}, cause:{}", gdh, priceVersion, Throwables.getStackTraceAsString(e));
            return null;

        }
    }

    @Override
    public Map selectPriceByGdhAll(Integer gdh) {
        try {
            Map<String, Object> param = Maps.newHashMap();
            param.put("gdh", gdh);
            return pipeTransPriceMapper.selectPriceByGdhAll(param);
        } catch (Exception e) {
            return null;
        }
    }
}
