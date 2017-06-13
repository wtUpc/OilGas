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
public class CdBasicData {  // 管道公司申报管输价格基础参数表
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long gdh;
    private Float jsq;
    private Float sjsl;
    private Float gxcd;
    private Float gdgxcd;
    private Float gdzxcd;
    private Float ygsl;
    private Float tzze;
    private Float jstz;
    private Float ldzj;
    private Float zjnx;
    private Float jzsyl;
    private Integer pjq;
    private Float hydj;
    private Float hqdj;
    private Float hmdj;
    private Float hsdj;
    private Float hddj;
    private Float jjdj;
    private Float hyclf;
    private Float rjngz;
    private Float ngzzzbl;
    private Float gzfjbl;
    private Float wxf;
    private Float agxcdcsbz;
    private Float azcyzcsbz;
    private Float qtyxfy;
    private Float drpjbz;
    private Float qtglfy;
    private Float drpjglfbz;
    private Float cgzwqtfynzzl;
    private Float xsfy;
    private Float ayysrcsbz;
    private Float aqscfyjybl;
    private Float cwfy;
    private Float gdzctzjkbl;
    private Float gncqdkll;
    private Float ldzjjkbl;
    private Float ldzjdkll;
    private Float syqshl;
    private Float sjjfj;
    private Float sdsl;
    private Float zzsl;
    private Float gssr;
    private Float rl;
    private Float dl;
    private Float sh;
    private Float qt;
    private Float cjsl;
    private Float jyffj;
    private Float dfjyffj;
    private String gsjz;
    private String ylx1mc;
    private Float ylx1z;
    private String ylx2mc;
    private Float ylx2z;

    @Transient
    private Integer bb;
    @Transient
    private String gdmc;

}
