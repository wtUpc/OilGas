<#include "../components/html-header.ftl"/>
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
<body>
<div id="wrapper">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">查询结果</h2>
            </div>
        </div>
        <hr/>
        <p><#if pipeReport??>${pipeReport.gsjgsqbg}</#if></p>
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>

