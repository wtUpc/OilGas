<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">
            <li class="text-center"><img src="${request.contextPath}/static/assets/img/find_user.png"
                                         class="user-image img-responsive"/>
            </li>
            <li><a href="#"><i class="fa fa-sitemap fa-3x"></i> 数据查询<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="#"><i class="fa fa-sitemap fa-3x"></i> 基础数据查询<span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a href="${request.contextPath}/querySinglePara">单项参数查询</a></li>
                            <li><a href="${request.contextPath}/queryListPara">参数表查询</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="fa fa-sitemap fa-3x"></i> 管输价格查询<span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a href="${request.contextPath}/queryPrice">管输价格查询</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="fa fa-sitemap fa-3x"></i> 文件查询<span class="fa arrow"></span> </a>
                        <ul class="nav nav-third-level">
                            <li><a href="${request.contextPath}/queryTransPriceApply">管输价格申请报告查询</a></li>
                            <li><a href="${request.contextPath}/queryTransPriceReply">管输价格批复文件查询</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-sitemap fa-3x"></i> 数据测算<span class="fa arrow"></span> </a>
                <ul class="nav nav-second-level">
                    <li><a href="${request.contextPath}/priceCalculation">单条管道价格测算</a></li>
                    <li><a href="${request.contextPath}/fenXi"> 敏感性分析</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-sitemap fa-3x"></i> 报告生成<span class="fa arrow"></span> </a>
                <ul class="nav nav-second-level">
                    <li><a href="${request.contextPath}/report/projects">生成管输价格申请报告及报告附表</a></li>
                </ul>
            </li>
            <li><a href="${request.contextPath}/file/upload"><i class="fa fa-square-o fa-3x"></i>
                文件上传</a>
            </li>
        </ul>
    </div>
</nav>
<!-- /. NAV SIDE  -->