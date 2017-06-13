package com.oilgas.dto;

import com.oilgas.model.FrAnnualParameter;
import com.oilgas.model.FrTransAddress;
import lombok.Data;

import java.util.List;
import java.util.Map;

/**
 * Created by wangshang on 17/6/3.
 */
@Data
public class CalculationYear {

    /**
     * 管道号
     */
    private Long gdh;

    /**
     * 保存版本
     */
    private Integer version;

    /**
     * 管道支线条数
     */
    private Integer gdzxts;

    /**
     * 评价期
     */
    private Integer pjq;

    /**
     * 支线
     */
    private List<FrTransAddress> frTransAddresses;

    /**
     * 支线基本信息 对应8个年份的，分别是 year1、year2...
     */
    private Map<String, List<FrTransAddress>> frMap;

    /**
     * 分年度 数据
     */
    private List<FrAnnualParameter> frAnnualParameters;
}
