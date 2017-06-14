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
public class PipeReport {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long gdh;
    private String gsjgsqbg;
    private String gsjgsqbgfj;
    private String gsjgpfwj;
}
