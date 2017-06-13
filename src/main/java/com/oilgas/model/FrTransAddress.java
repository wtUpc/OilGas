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
public class FrTransAddress {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long gdh;
    private Integer nh;
    private String qsdz;
    private Float ssdwl;
    private Float sqlf;
    private Float zxcd;
}
