<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th class="text-center">参数名称</th>
                    <th class="text-center">原参数值</th>
                    <th class="text-center">变化后参数值</th>
                </tr>
                </thead>
                <tbody class="text-center">
                <tr>
                    <td><#if queryParam??>${queryParam.paramDisplay}</#if></td>
                    <td><#if (fenXiResult.frBasicData)??>${fenXiResult.frBasicData}</#if></td>
                    <td><input value=""></td>
                </tr>
                <tr>
                    <td>管输价格</td>
                    <td>0.3551</td>
                    <td><input id="result"></input></td>
                </tr>
                </tbody>
            </table>
            <button type="button" class="btn btn-default" onclick="calculate()">计算</button>
        </div>
    </div>
</div>
<script type="text/javascript">
    var calculate = function () {
        document.getElementById("result").value = 2.99;
    }
</script>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>

