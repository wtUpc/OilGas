package com.oilgas.dto;

import lombok.Data;

import java.util.List;

/**
 * Created by wangshang on 17/6/5.
 */
@Data
public class CalculationAnnual {
    private Integer version;
    private Long gdh;
    private List<CalculationAnnualItem> calculationAnnualItems;

    public void initItem() {
        calculationAnnualItems.forEach(it -> {
            it.initFRA();
            it.initFRT();
            it.initGsl();
        });
    }

}
