package com.oilgas.dto;

import lombok.Data;

/**
 * Created by Administrator on 2017/5/9.
 */
@Data
public class QueryParam {

    private Integer gdh;

    private String paramName;

    private String paramDisplay;

    private Integer version;

    public Integer getVersion() {
        return version;
    }

    public void initParamDisplay() {
        switch (paramName) {
            case "sjsl":
                paramDisplay = "设计输量";
                break;
            case "gxcd":
                paramDisplay = "管线长度";
                break;
            case "gdgxcd":
                paramDisplay = "管道干线长度";
                break;
            case "gdzxcd":
                paramDisplay = "管道支线长度";
                break;
            case "ygsl":
                paramDisplay = "员工数量";
                break;
            case "tzze":
                paramDisplay = "投资总额";
                break;
            case "jstz":
                paramDisplay = "建设投资";
                break;
            case "ldzj":
                paramDisplay = "流动资金";
                break;
            case "pjq":
                paramDisplay = "评价期";
                break;
            case "xsfy":
                paramDisplay = "销售费用";
                break;
            default:
                paramDisplay = "";
        }
    }
}
