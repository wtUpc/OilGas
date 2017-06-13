package com.oilgas.model;

/**
 * Created by Administrator on 2017/5/13.
 */
public enum VersionType {

    VERSION1(0, "全部"), VERSION2(1, "可研报告版"), VERSION3(2, "管道公司申报版"), VERSION(3, "经济评价参数版");

    private Integer val;

    private String display;

    VersionType(Integer val, String display) {
        this.val = val;
        this.display = display;
    }

    public Integer getVal() {
        return val;
    }

    public String getDisplay() {
        return display;
    }

    public static VersionType fromVersion(Integer val) {
        if (val == null) {
            return null;
        }
        for (VersionType v : VersionType.values()) {
            if (v.val.equals(val))
                return v;
        }
        return null;
    }
}
