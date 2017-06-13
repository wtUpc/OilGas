package com.oilgas.dto;

import com.oilgas.model.CdBasicData;
import com.oilgas.model.FrBasicData;
import lombok.Data;

/**
 * Created by Administrator on 2017/5/29.
 */
@Data
public class ResultListParam {

    private FrBasicData frBasicData;

    private CdBasicData cdBasicData;
}
