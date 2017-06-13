package com.oilgas.service;

/**
 * Created by Administrator on 2017/5/14.
 */
public interface QueryEPService {

    /**
    * 查询EvaluParameters 的一个参数
    * @param gdh
    * @param param
    * @return
    * */
    Object queryEPSingleParam(Integer gdh,String param);

}
