<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">管输价格批复文件查询</h2>
            </div>
        </div>
        <form role="form">
            <div class="form-group">
                <label>管线名称</label>
                <input class="form-control" id="gxmc" name="gdh"/>
            </div>
            <button type="submit" class="btn btn-default">开始查询</button>
        </form>
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>

