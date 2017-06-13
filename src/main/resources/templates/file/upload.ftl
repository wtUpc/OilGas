<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">文件上传</h2>
            </div>
        </div>


        <hr/>
    <#--<div th:if="${message}">-->
    <#--<h2 th:text="${message}"/>-->
    <#--</div>-->

        <div>
            <form method="POST" enctype="multipart/form-data" action="/file">
                <table>
                    <tr>
                        <td>File to upload:</td>
                        <td><input type="file" name="file"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Upload"/></td>
                    </tr>
                </table>
            </form>
        </div>

        <div>
            <ul>
            <#if files??>
                <#list files as file>
                    <li th:each="file : ${files}">
                        <a th:href="${file}" th:text="${file}"/>
                    </li>
                </#list>
            </#if>
            </ul>
        </div>
    </div>
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>

