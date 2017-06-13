package com.oilgas.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by Administrator on 2017/5/8.
 */
@Data
public class EvaluParameters {// 集团公司建设项目经济评价参数表
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer gdh;
    private Integer nh;
    private Float jzsyl;
    private Float pjq;
    private Float zjnx;
    private Float njgzbz;
    private Float syqshl;
    private Float wsffl;
    private Float qtyyfyde;
    private Float qtglfyde;
    private Float aqscfyjtbl;
    private Float xsfy;
}
