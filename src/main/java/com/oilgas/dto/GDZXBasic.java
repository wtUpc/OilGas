package com.oilgas.dto;

import com.oilgas.model.FrTransAddress;
import lombok.Data;
import org.joda.time.LocalDate;

import java.util.List;

/**
 * Created by wangshang on 17/6/4.
 */
@Data
public class GDZXBasic {
    private List<FrTransAddress> frTransAddresses;

    public void initData() {
        frTransAddresses.forEach(it -> {
            it.setNh(new LocalDate().getYear());
            it.setSqlf(0F);
            it.setSsdwl(0F);
        });
    }
}
