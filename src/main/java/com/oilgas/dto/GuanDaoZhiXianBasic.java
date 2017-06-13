package com.oilgas.dto;

import lombok.Data;

/**
 * 管道支线 基础信息
 * Created by wangshang on 17/6/3.
 */
@Data
public class GuanDaoZhiXianBasic {

    /**
     * 起止地址
     */
    private String qsdz;

    /**
     * 支线长度
     */
    private Float zxcd;
}
