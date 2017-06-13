<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">选择管道生成报告</h2>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <td>管道号</td>
                        <td>管道名</td>
                        <td>创建时间</td>
                        <td>油气</td>
                        <td>支线数</td>
                        <td>操作</td>
                    </tr>
                    </thead>
                    <tbody>
                    <#if projects??&&(projects?size>0)>
                        <#list projects as p>
                        <tr>
                            <td>${p.id}</td>
                            <td>${p.name}</td>
                            <td>${p.time?string('yyyy-MM-dd HH:mm')}</td>
                            <td>${p.oilorgas}</td>
                            <td>${p.zxs}</td>
                            <td>
                                <a href="<#if !p.reportExist>${request.contextPath}/report/createReport?gdh=${p.id}<#else>javascript:void(0);</#if>">生成报告</a>
                            </td>
                        </tr>
                        </#list>
                    </#if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>

