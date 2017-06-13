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
public class FrAnnualParameter {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long gdh;
    private Integer nh;
    private Float gsl;
    private Float rlxhl;
    private Float hyl;
    private Float hql;
    private Float hml;
    private Float dlxhl;
    private Float hsl;
    private Float hdl;
    private Float clxhl;
    private Float jjl;
    private Float tzjhbl;
}
