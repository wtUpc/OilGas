<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">单项参数查询结果</h2>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th rowspan="2" class="text-center"> 管道号</th>
                        <th rowspan="2" class="text-center"> 参数名</th>
                        <th colspan="3" class="text-center"> 来源版本</th>
                    </tr>
                    <tr>
                        <th class="text-center">可研报告版</th>
                        <th class="text-center">管道公司申报版</th>
                        <th class="text-center">经济评价参数版</th>
                    </tr>
                    </thead>
                    <tbody class="text-center">
                    <tr>
                        <td><#if queryParam??>${queryParam.gdh}</#if></td>
                        <td><#if queryParam??>${queryParam.paramDisplay}</#if></td>
                        <td><#if (resultSinglePara.frBasicData)??>${resultSinglePara.frBasicData}</#if></td>
                        <td><#if (resultSinglePara.cdBasicData)??>${resultSinglePara.cdBasicData}</#if></td>
                        <td><#if resultSinglePara.evaluParameters??>${resultSinglePara.evaluParameters}</#if></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>

