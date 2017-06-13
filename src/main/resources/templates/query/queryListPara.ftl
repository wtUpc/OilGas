<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">参数表查询</h2>
            </div>
        </div>
        <hr/>
        <form role="form" action="${request.contextPath}/resultListPara" method="post">
            <div class="form-group">
                <label>管线名称</label>
                <input class="form-control" id="gxmc2" name="gdh"/>
            </div>
            <div class="form-group">
                <label>来源版本</label>
                <select class="form-control" id="lybb2" name="version">
                    <option>---请选择---</option>
                    <option value="0">全部</option>
                    <option value="1">可研报告管输价格基础参数表</option>
                    <option value="2">管道公司申报版管输价格基础参数表</option>
                </select>
            </div>
            <button type="submit" class="btn btn-default">开始查询</button>
        </form>

    </div>
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>

