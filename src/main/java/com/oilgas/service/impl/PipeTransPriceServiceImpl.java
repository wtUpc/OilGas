package com.oilgas.service.impl;

import com.google.common.base.Throwables;
import com.oilgas.mapper.PipeTransPriceMapper;
import com.oilgas.model.PipeTransPrice;
import com.oilgas.service.PipeTransPriceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * Created by wangshang on 17/6/5.
 */
@Service
public class PipeTransPriceServiceImpl implements PipeTransPriceService {
    private final Logger logger = LoggerFactory.getLogger(PipeTransPriceServiceImpl.class);

    @Autowired
    private PipeTransPriceMapper pipeTransPriceMapper;

    @Override
    public Boolean save(Integer version, Long gdh, float price) {
        try {
            PipeTransPrice pipeTransPrice = new PipeTransPrice();
            pipeTransPrice.setGdh(gdh);
            switch (version) {
                case 1:
                    pipeTransPrice.setKybggsjg(price);
                    break;
                case 2:
                    pipeTransPrice.setGdgssbgsjg(price);
                    break;
            }
            pipeTransPriceMapper.insert(pipeTransPrice);
            return Boolean.TRUE;
        } catch (Exception e) {
            logger.error("cause:{}", Throwables.getStackTraceAsString(e));
            return Boolean.FALSE;
        }
    }
}
