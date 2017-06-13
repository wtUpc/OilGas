<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <form role="form" action="" method="post">
                <div class="form-group">
                    <label>管道号</label>
                    <input class="form-control" id="gxmc1" name="gdh"/>
                </div>
                <div class="form-group">
                    <label>参数名称</label>
                    <select class="form-control" id="csmc1" name="paramName">
                        <option>---请选择---</option>
                        <option value="jsq">建设期</option>
                        <option value="sjsl">设计输量</option>
                        <option value="gxcd">管线长度</option>
                        <option value="gdgxcd">管道干线长度</option>
                        <option value="gdzxcd">管道支线长度</option>
                        <option value="ygsl">员工数量</option>
                        <option value="tzze">投资总额</option>
                        <option value="jstz">建设投资</option>
                        <option value="ldzj">流动资金</option>
                        <option value="pjq">评价期</option>
                        <option value="xsfy">销售费用</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-default">查询</button>
            </form>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th  class="text-center">参数名称</th>
                    <th  class="text-center">原参数值</th>
                    <th  class="text-center"><input value="">变化后参数值</th>
                    <th  class="text-center">变化</th>
                </tr>
                </thead>
                <tbody class="text-center">
                <tr>
                    <td>管输价格</td>
                    <td>0.3551</td>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>
                <button type="submit" class="btn btn-default">计算</button>
            </table>
        </div>
        <hr/>
    </div>
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>
