<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">管输价格查询结果</h2>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th rowspan="2" class="text-center"> 管道号</th>
                        <th colspan="4" class="text-center"> 来源版本</th>
                    </tr>
                    <tr>
                        <th class="text-center">管道公司申报管输价格</th>
                        <th class="text-center">可研报告管输价格</th>
                        <th class="text-center">批复管输价格</th>
                        <th class="text-center">执行管输价格</th>
                    </tr>
                    </thead>
                    <tbody class="text-center">
                    <tr>
                        <td><#if queryPrice??>${queryPrice.gdh}</#if></td>
                        <td><#if resultQueryPrice.gdgssbgsjg??>${resultQueryPrice.gdgssbgsjg}</#if></td>
                        <td><#if resultQueryPrice.kybggsjg??>${resultQueryPrice.kybggsjg}</#if></td>
                        <td><#if resultQueryPrice.pfgsjg??>${resultQueryPrice.pfgsjg}</#if></td>
                        <td><#if resultQueryPrice.zxgsjg??>${resultQueryPrice.zxgsjg}</#if></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>

