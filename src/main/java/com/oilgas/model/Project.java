package com.oilgas.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wangshang on 17/6/3.
 */
@Data
public class Project {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private Date time;
    private String oilorgas;
    private Integer zxs;

    @Transient
    private boolean reportExist = false;

    public enum OilOrGas {
        OIL(), GAS()
    }
}
