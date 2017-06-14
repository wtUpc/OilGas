package com.oilgas.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by Administrator on 2017/5/15.
 */
@Data
public class PipeTransPrice {//管道管输价格表
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long gdh;
    private Float kybggsjg = 0.222F;//可研报告管输价格
    private Float gdgssbgsjg;//管道公司申报管输价格
    private Float pfgsjg;//批复管输价格
    private Float zxgsjg;//执行管输价格
    private Float kybggsjg2;
    private Float gdgssbgsjg2;//管道公司申报管输价格
    private Float pfgsjg2;//批复管输价格
    private Float zxgsjg2;//执行管输价格
}
