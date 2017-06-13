package com.oilgas.dto;

import com.oilgas.model.FrAnnualParameter;
import com.oilgas.model.FrTransAddress;
import lombok.Data;
import org.joda.time.LocalDate;

import java.util.List;

/**
 * Created by wangshang on 17/6/5.
 */
@Data
public class CalculationAnnualItem {

    private FrAnnualParameter frAnnualParameter;

    private List<FrTransAddress> frTransAddresses;

    public void initFRT() {
        frTransAddresses.forEach(frTransAddress -> frTransAddress.setNh(new LocalDate().plusYears(frTransAddress.getNh() - 1).getYear()));
    }

    public void initFRA() {
        frAnnualParameter.setNh(new LocalDate().plusYears(frAnnualParameter.getNh() - 1).getYear());
    }

    public void initGsl() {
        frAnnualParameter.setGsl((float) frTransAddresses.stream().mapToDouble(FrTransAddress::getSqlf).sum());
    }

}
