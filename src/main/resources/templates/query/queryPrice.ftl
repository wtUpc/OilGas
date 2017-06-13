<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">管输价格查询</h2>
            </div>
        </div>
        <hr/>
        <form role="form" action="${request.contextPath}/resultQueryPrice" method="post">
            <div class="form-group">
                <label>管线名称</label>
                <input class="form-control" id="gxmc3" name="gdh"/>
            </div>
            <div class="form-group">
                <label>价格版本</label>
                <select class="form-control" id="jgbb" name="priceVersion">
                    <option>---请选择---</option>
                <#--<option value="kybggsjg,gdgssbgsjg,pfgsjg,zxgsjg">全部</option>-->
                    <option value="all">全部</option>
                    <option value="kybggsjg">可研报告管输价格</option>
                    <option value="gdgssbgsjg">管道公司申报版管输价格</option>
                    <option value="pfgsjg">批复管输价格</option>
                    <option value="zxgsjg">执行管输价格</option>
                </select>
            </div>
            <button type="submit" class="btn btn-default">开始查询</button>
        </form>
        <!-- /. PAGE WRAPPER  -->
    </div>
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>

