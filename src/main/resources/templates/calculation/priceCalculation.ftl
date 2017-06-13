<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2> 基础参数填写</h2>
                <hr/>
                <form class="form-horizontal" action="${request.contextPath}/savePriceCalculation" method="post">
                    <div class="form-group">
                        <label for="bb" class="col-sm-2 control-label">选择版本</label>
                        <div class="input-group">
                            <select class="form-control" id="bb" name="bb">
                                <option value="1" selected>可研报告版</option>
                                <option value="2">管道公司申报版</option>
                            </select>
                            <div class="input-group-addon"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="gdmc" class="col-sm-2 control-label">管道名称</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="gdmc" name="gdmc" placeholder="管道名称">
                            <div class="input-group-addon">点击校验管道名称</div>
                        </div>
                    </div>
                    <h4>基本参数</h4>
                    <hr/>
                    <div class="form-group">
                        <label for="gsjz" class="col-sm-2 control-label">管输介质</label>
                        <div class="input-group">
                            <select class="form-control" id="gsjz" name="gsjz" >
                                <option value="gas" selected>气</option>
                                <option value="oil">原油</option>
                                <option value="madeoil">成品油</option>
                            </select>
                            <div class="input-group-addon"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="pjq" class="col-sm-2 control-label">评价期</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="pjq" name="pjq" placeholder="评价期" value="8">
                            <div class="input-group-addon">年</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jsq" class="col-sm-2 control-label">建设期</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="jsq" name="jsq" placeholder="建设期" value="2">
                            <div class="input-group-addon">年</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="sjsl" class="col-sm-2 control-label">设计输量</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="sjsl" name="sjsl" placeholder="设计输量" value="13.6">
                            <div class="input-group-addon">亿方/万吨</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="gxcd" class="col-sm-2 control-label">管线长度</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="gxcd" name="gxcd" placeholder="管线长度" value="350">
                            <div class="input-group-addon">公里</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="gdgxcd" class="col-sm-2 control-label">管道干线长度</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="gdgxcd" name="gdgxcd" placeholder="管道干线长度" value="0">
                            <div class="input-group-addon">公里</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="gdzxcd" class="col-sm-2 control-label">管道支线长度</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="gdzxcd" name="gdzxcd" placeholder="管道支线长度" value="0">
                            <div class="input-group-addon">公里</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="hthyg" class="col-sm-2 control-label">员工数量</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="ygsl" name="ygsl" placeholder="员工数量" value="100">
                            <div class="input-group-addon">人</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="tzze" class="col-sm-2 control-label">投资总额</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="tzze" name="tzze" placeholder="投资总额" value="194178.2">
                            <div class="input-group-addon">万元</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jstz" class="col-sm-2 control-label">建设投资</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="jstz" name="jstz" placeholder="建设投资" value="192671">
                            <div class="input-group-addon">万元</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ldzj" class="col-sm-2 control-label">流动资金</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="ldzj" name="ldzj" placeholder="流动资金" value="1607.2">
                            <div class="input-group-addon">万元</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="zjnx" class="col-sm-2 control-label">折旧年限</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="zjnx" name="zjnx" placeholder="折旧年限" value="30">
                            <div class="input-group-addon">年</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="hydj" class="col-sm-2 control-label">耗油单价（含税）</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="hydj" name="hydj" placeholder="耗油单价（含税）" value="0">
                            <div class="input-group-addon">元/吨</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="hqdj" class="col-sm-2 control-label">耗气单价（含税）</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="hqdj" name="hqdj" placeholder="耗气单价（含税）" value="2.259">
                            <div class="input-group-addon">元/方</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="hmdj" class="col-sm-2 control-label">耗煤单价（含税）</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="hmdj" name="hmdj" placeholder="耗煤单价（含税）" value="0">
                            <div class="input-group-addon">元/吨</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="hsdj" class="col-sm-2 control-label">耗水单价(含税)</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="hsdj" name="hsdj" placeholder="耗水单价（含税）" value="0">
                            <div class="input-group-addon">元/方</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="hddj" class="col-sm-2 control-label">耗电单价（含税）</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="hddj" name="hddj" placeholder="耗电单价（含税）" value="0.88">
                            <div class="input-group-addon">元/度</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jjdj" class="col-sm-2 control-label">加剂单价（含税）</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="jjdj" name="jjdj" placeholder="加剂单价（含税）" value="0">
                            <div class="input-group-addon">元/吨</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="rjngz" class="col-sm-2 control-label">人均年工资</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="rjngz" name="rjngz" placeholder="人均年工资" value="11.7">
                            <div class="input-group-addon">万元</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ngzzzbl" class="col-sm-2 control-label">年工资增长比例</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="ngzzzbl" name="ngzzzbl" placeholder="年工资增长比例" value="6">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="gzfjbl" class="col-sm-2 control-label">工资附加比例</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="gzfjbl" name="gzfjbl" placeholder="工资附加比例" value="69.7">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="agxcdcsbz" class="col-sm-2 control-label">维修费按管线长度测算标准</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="agxcdcsbz" name="agxcdcsbz"
                                   placeholder="维修费按管线长度测算标准" value="2.5"/>
                            <div class="input-group-addon">万元/公里</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="azcyzcsbz" class="col-sm-2 control-label">维修费按资产原值测算标准</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="azcyzcsbz" name="azcyzcsbz"
                                   placeholder="维修费按资产原值测算标准" value="2.5"/>
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="qtyxfy" class="col-sm-2 control-label">其他运行费用单人标准</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="qtyxfy" name="qtyxfy" placeholder="其他运行费用单人标准" value="7.29">
                            <div class="input-group-addon">万元/人年</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="qtglfy" class="col-sm-2 control-label">其他管理费用单人标准</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="qtglfy" name="qtglfy" placeholder="其他管理费用单人标准" value="4.23">
                            <div class="input-group-addon">万元/人年</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cgzwqtfynzzl" class="col-sm-2 control-label">除工资外其他费用年增长率</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="cgzwqtfynzzl" name="cgzwqtfynzzl"
                                   placeholder="除工资外其他费用年增长率" value="2">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ayysrcsbz" class="col-sm-2 control-label">销售费按营业收入测算标准</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="ayysrcsbz" name="ayysrcsbz"
                                   placeholder="销售费按营业收入测算标准" value="1">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="aqscfyjtbl" class="col-sm-2 control-label">安全生产费用计提比例</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="aqscfyjtbl" name="aqscfyjtbl" placeholder="安全生产费用计提比例" value="1.5">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="gdzctzjkdbl" class="col-sm-2 control-label">固定资产投资借款的比例</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="gdzctzjkdbl" name="gdzctzjkdbl"
                                   placeholder="固定资产投资借款的比例" value="60">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="gncqdkll" class="col-sm-2 control-label">国内长期贷款利率</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="gncqdkll" name="gncqdkll" placeholder="国内长期贷款利率" value="4.95">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ldzjjkbl" class="col-sm-2 control-label">流动资金借款比例</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="ldzjjkbl" name="ldzjjkbl"
                                   placeholder="流动资金借款比例" value="70">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ldzjdkll" class="col-sm-2 control-label">流动资金贷款利率</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="ldzjdkll" name="ldzjdkll"
                                   placeholder="流动资金贷款利率" value="4.59">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="syqshl" class="col-sm-2 control-label">输油气损耗率</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="syqshl" name="syqshl" placeholder="输油气损耗率" value="0.2">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="sdsl" class="col-sm-2 control-label">所得税率</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="sdsl" name="sdsl" placeholder="所得税率" value="25">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="gssr" class="col-sm-2 control-label">管输收入增值税率</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="gssr" name="gssr" placeholder="管输收入增值税率" value="11">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="dl" class="col-sm-2 control-label">动力增值税率</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="dl" name="dl" placeholder="动力增值税率" value="17">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="rl" class="col-sm-2 control-label">燃料增值税率</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="rl" name="rl" placeholder="燃料增值税率" value="13">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="sh" class="col-sm-2 control-label">损耗增值税率</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="sh" name="sh" placeholder="损耗增值税率" value="13">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cjsl" class="col-sm-2 control-label">城建税率</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="cjsl" name="cjsl" placeholder="城建税率" value="7">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jyffj" class="col-sm-2 control-label">教育费附加</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="jyffj" name="jyffj" placeholder="教育费附加" value="3">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="dfjyffj" class="col-sm-2 control-label">地方教育费附加</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="dfjyffj" name="dfjyffj" placeholder="地方教育费附加" value="0">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="jzsyl" class="col-sm-2 control-label">基准收益率</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="jzsyl" name="jzsyl" placeholder="基准收益率" value="8">
                            <div class="input-group-addon">%</div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-default">提交测算</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    checkGuanDao = function () {
        alert("www");
    }
</script>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>