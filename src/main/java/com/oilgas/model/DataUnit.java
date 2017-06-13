package com.oilgas.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by wangshang on 17/6/3.
 */
@Data
public class DataUnit {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String lm;
    private String zwlm;
    private String sjdw;
    private String ssbm;
    private String fxlm;
}
