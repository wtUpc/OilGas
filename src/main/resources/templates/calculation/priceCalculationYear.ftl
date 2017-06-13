<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2> 管道支线数量</h2>
                <hr/>
                <form class="form-horizontal" action="${request.contextPath}/saveGuanDaoTiaoshu" method="post">
                    <input name="version"
                           value="<#if calculationYear??&&calculationYear.version??>${calculationYear.version}</#if>"
                           hidden/>
                    <input name="gdh"
                           value="<#if calculationYear??&&calculationYear.gdh??>${calculationYear.gdh}</#if>" hidden/>
                    <div class="form-group">
                        <label for="gdzxsl" class="col-sm-2 control-label">管道支线数量</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="gdzxsl" name="gdzxsl" placeholder="管道支线数量"
                                   value="<#if calculationYear??&&calculationYear.gdzxts??>${calculationYear.gdzxts}</#if>">
                            <div class="input-group-addon">条</div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-success">保存管道支线条数</button>
                </form>

                <hr/>
                <h2> 管道支线基本信息</h2>
                <form class="form-horizontal" action="${request.contextPath}/saveGuanDaoBasic" method="post">
                    <input name="version"
                           value="<#if calculationYear??&&calculationYear.version??>${calculationYear.version}</#if>"
                           hidden/>
                    <input name="gdh"
                           value="<#if calculationYear??&&calculationYear.gdh??>${calculationYear.gdh}</#if>" hidden/>
                <#if calculationYear??&&calculationYear.gdzxts??>
                    <#list 0..calculationYear.gdzxts-1 as i>
                        <input name="frTransAddresses[${i}].gdh"
                               value="<#if calculationYear??&&calculationYear.gdh??>${calculationYear.gdh}</#if>"
                               hidden/>
                        <div class="form-group">
                            <label for="qsdz[${i}]" class="col-sm-2 control-label">管道支线起止地址-[${i+1}]</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="qsdz[${i}]"
                                       name="frTransAddresses[${i}].qsdz"
                                       placeholder="管道支线起止地址"
                                       value="<#if calculationYear.frTransAddresses??&&(calculationYear.frTransAddresses?size>0)>${calculationYear.frTransAddresses[i].qsdz}</#if>">
                                <div class="input-group-addon"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="zxcd[${i}]" class="col-sm-2 control-label">管道支线长度-[${i+1}]</label>
                            <div class="input-group">
                                <input type="number" class="form-control" id="zxcd[${i}]"
                                       name="frTransAddresses[${i}].zxcd"
                                       placeholder="管道支线长度"
                                       value="<#if calculationYear.frTransAddresses??&&(calculationYear.frTransAddresses?size>0)>${calculationYear.frTransAddresses[i].zxcd?c}</#if>">
                                <div class="input-group-addon">km</div>
                            </div>
                        </div>
                    </#list>
                </#if>
                    <button type="submit" class="btn btn-success">保存管道支线基本信息</button>
                </form>

                <hr/>
                <h2> 分年度管道支线数据</h2>
                <form class="form-horizontal table-responsive" action="${request.contextPath}/saveCalculationResult"
                      method="post">
                    <input name="gdh"
                           value="<#if calculationYear??&&calculationYear.gdh??>${calculationYear.gdh}</#if>" hidden/>
                    <input name="version"
                           value="<#if calculationYear??&&calculationYear.version??>${calculationYear.version}</#if>"
                           hidden/>
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <td rowspan="2" class="text-center">年号</td>
                            <td colspan="3" class="text-center">燃料消耗</td>
                            <td colspan="2" class="text-center">动力消耗</td>
                            <td class="text-center">材料消耗</td>
                            <td rowspan="2" class="text-center">投资计划比例(%)</td>
                            <td colspan="<#if calculationYear??&&calculationYear.gdzxts??>${calculationYear.gdzxts}<#else>1</#if>"
                                class="text-center">各支线输送量
                            </td>
                        </tr>
                        <tr>
                            <td class="text-center">耗油量(万吨)</td>
                            <td class="text-center">耗气量(亿方)</td>
                            <td class="text-center">耗煤量(万吨)</td>
                            <td class="text-center">耗水量(万吨)</td>
                            <td class="text-center">耗电量(万度)</td>
                            <td class="text-center">加剂量(万吨)</td>
                        <#if calculationYear??&&calculationYear.frTransAddresses??>
                            <#list calculationYear.frTransAddresses as fr>
                                <td class="text-center">${fr.qsdz}</td>
                            </#list>
                        <#else >
                            <td></td>
                        </#if>
                        </tr>
                        </thead>
                        <tbody class="text-center">
                        <#if calculationYear??&&calculationYear.pjq??>
                            <#list 0..calculationYear.pjq-1 as i>
                            <tr>
                                <td hidden><input name="calculationAnnualItems[${i}].frAnnualParameter.gdh"
                                                  value="<#if calculationYear??&&calculationYear.gdh??>${calculationYear.gdh}</#if>"/>
                                </td>
                                <td><input name="calculationAnnualItems[${i}].frAnnualParameter.nh" value="${i+1}"
                                           readonly/></td>
                                <td><input name="calculationAnnualItems[${i}].frAnnualParameter.hyl" value="0"
                                           type="number"/></td>
                                <td><input name="calculationAnnualItems[${i}].frAnnualParameter.hql" value="0"
                                           type="number"/></td>
                                <td><input name="calculationAnnualItems[${i}].frAnnualParameter.hml" value="0"
                                           type="number"/></td>
                                <td><input name="calculationAnnualItems[${i}].frAnnualParameter.hsl" value="0"
                                           type="number"/></td>
                                <td><input name="calculationAnnualItems[${i}].frAnnualParameter.hdl" value="0"
                                           type="number"/></td>
                                <td><input name="calculationAnnualItems[${i}].frAnnualParameter.jjl" value="0"
                                           type="number"/></td>
                                <td><input name="calculationAnnualItems[${i}].frAnnualParameter.tzjhbl" value="0"
                                           type="number"/></td>
                                <#if calculationYear.gdzxts??>
                                    <#list 0..calculationYear.gdzxts-1 as j>
                                        <td hidden><input name="calculationAnnualItems[${i}].frTransAddresses[${j}].nh"
                                                          value="${i+1}"
                                                          readonly/></td>
                                        <td hidden><input name="calculationAnnualItems[${i}].frTransAddresses[${j}].gdh"
                                                          value="<#if calculationYear??&&calculationYear.gdh??>${calculationYear.gdh}</#if>"/>
                                        </td>
                                        <td hidden><input name="calculationAnnualItems[${i}].frTransAddresses[${j}].qsdz"
                                                          value="<#if calculationYear??&&calculationYear.frTransAddresses??&&(calculationYear.frTransAddresses?size>0)>${calculationYear.frTransAddresses[j].qsdz}</#if>"/>

                                        </td>
                                        <td>
                                            <input name="calculationAnnualItems[${i}].frTransAddresses[${j}].sqlf" value="0"
                                                   type="number"/>
                                        </td>
                                        <td hidden><input name="calculationAnnualItems[${i}].frTransAddresses[${j}].zxcd"
                                                          value="<#if calculationYear.frTransAddresses??&&(calculationYear.frTransAddresses?size>0)>${calculationYear.frTransAddresses[j].zxcd?c}</#if>"/>

                                        </td>
                                    </#list>
                                </#if>
                            </tr>
                            </#list>
                        </#if>
                        </tbody>
                    </table>
                    <button type="submit" class="btn btn-success">计算并保存计算结果</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>