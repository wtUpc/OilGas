package com.oilgas.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

/**
 * Created by Administrator on 2017/5/8.
 */
@Data
public class FrBasicData {   // 可研报告管输价格测算基础参数表
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long gdh;
    @Transient
    private String gdName = "测试1"; // gd name
    @Transient
    private String condition1 = "测试1";  // 简述管道建设项目建设地点、途径地区、管道长度等情况
    @Transient
    private String condition2 = "测试1";  // 简述建设项目设计压力、管径、设计输量、站场等情况
    @Transient
    private String condition3 = "测试1";  // 简述本工程的工程性质、工程类别、建设期等情况
    @Transient
    private String gslCondition = "测试1";  // guan shu liang
    @Transient
    private String dlfyCondition = "测试1"; // do li fei yong
    @Transient
    private String rlfyCondition = "测试1"; // ran liao fei yong
    @Transient
    private String compareReason = "测试1"; // 本版价格测算结果与可研价格不同主要是由于以下两方面原因
    private Float jsq = 0.0F;
    private Float sjsl = 0.0F;
    private Float gxcd = 0.0F;
    private Float gdgxcd = 0.0F;
    private Float gdzxcd = 0.0F;
    private Float ygsl = 0.0F;
    private Float tzze = 0.0F;
    private Float jstz = 0.0F;
    private Float ldzj = 0.0F;
    private Float zjnx = 0.0F;
    private Float jzsyl = 0.0F;
    private Integer pjq = 0;
    private Float hydj = 0.0F;
    private Float hqdj = 0.0F;
    private Float hmdj = 0.0F;
    private Float hsdj = 0.0F;
    private Float hddj = 0.0F;
    private Float jjdj = 0.0F;
    private Float hyclf = 0.0F;
    private Float rjngz = 0.0F;
    private Float ngzzzbl = 0.0F;
    private Float gzfjbl = 0.0F;
    private Float wxf = 0.0F;
    private Float agxcdcsbz = 0.0F;
    private Float azcyzcsbz = 0.0F;
    private Float qtyxfy = 0.0F;
    private Float drpjbz = 0.0F;
    private Float qtglfy = 0.0F;
    private Float drpjglfbz = 0.0F;
    private Float cgzwqtfynzzl = 0.0F;
    private Float xsfy = 0.0F;
    private Float ayysrcsbz = 0.0F;
    private Float aqscfyjybl = 0.0F;
    private Float cwfy = 0.0F;
    private Float gdzctzjkbl = 0.0F;
    private Float gncqdkll = 0.0F;
    private Float ldzjjkbl = 0.0F;
    private Float ldzjdkll = 0.0F;
    private Float syqshl = 0.0F;
    private Float sjjfj = 0.0F;
    private Float sdsl = 0.0F;
    private Float zzsl = 0.0F;
    private Float gssr = 0.0F;
    private Float rl = 0.0F;
    private Float dl = 0.0F;
    private Float sh = 0.0F;
    private Float qt = 0.0F;
    private Float cjsl = 0.0F;
    private Float jyffj = 0.0F;
    private Float dfjyffj = 0.0F;
    private String gsjz = "测试1";
    private String ylx1mc = "测试1";
    private Float ylx1z = 0.0F;
    private String ylx2mc = "测试1";
    private Float ylx2z = 0.0F;

    @Transient
    private Integer bb = 0;
    @Transient
    private String gdmc = "测试1";
}
