<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">生成报告及附表</h2>
            </div>
        </div>
        <hr/>
        <#if frBasicData??&&frAnnualParameters??&&project??>
        <form action="${request.contextPath}/report/doCreateReport" method="post">
            <input value="${project.id}" hidden name="gdh">
            <input value="${project.name}" name="gdName" hidden>
            <h3 align="center">关于核定<input value="${project.name}">管输价格有关问题的请示</h3>

            <p>中国石油天然气股份有限公司：</p>
            <p>  <input value="${project.name}">竣工在即，需在该线投产前核定其管输价格，现将该管线定价有关事宜汇报如下：</p>
            <p>一、<input value="${project.name}">基本情况</p>
                <textarea style="width: 90%;height: 100px" name="condition1"></textarea>
                <p><font style="color: red">填写说明：简述管道建设项目建设地点、途径地区、管道长度等情况。</font></p>
                <textarea style="width: 90%;height: 100px" name="condition2"></textarea>
                <p><font style="color: red">填写说明：简述建设项目设计压力、管径、设计输量、站场等情况。</font></p>
                 <textarea style="width: 90%;height: 100px" name="condition3"></textarea>
                <p><font style="color: red">填写说明：简述本工程的工程性质、工程类别、建设期等情况。</font></p>

            <p>二、<input value="${project.name}">价格测算</p>
            <p>（一）测算依据及主要参数</p>
            <p>以可研报告为基础，结合管道公司在役管道实际情况进行测算，主要参数如下：</p>
            <p>1.管输量：</p>
            <p><textarea style="width: 90%" readonly name="gslCondition">${gslCondition}</textarea></p>
            <p>2.管线长度：<input value="${frBasicData.gxcd}" name="gxcd">公里。</p>
            <p>3.动力费用：在生产过程中消耗电的费用。电力消耗量依据可研情况测算，</p>
            <p><textarea style="width: 90%" readonly name="dlfyCondition">${dlfyCondition}</textarea></p>
            <p>动力价格按照管道沿线的平均用电价格<input value="${frBasicData.hddj}" name="hddj">元/千瓦时测算。</p>
            <p>4.燃料费用：在生产过程中消耗天然气的费用。天然气消耗量依据可研情况测算，</p>
            <p><textarea style="width: 90%"  readonly name="rlfyCondition">${rlfyCondition}</textarea></p>
            <p>天然气价格按照管道沿线天然气最高门站价格<input value="${frBasicData.hqdj}" name="hqdj">元/方测算。</p>
            <p>5.人员成本：项目定员为<input value="${frBasicData.ygsl}" name="ygsl">人，年均工资<input value="${frBasicData.rjngz}" name="rjngz">万元/人；</p>
            <p>根据管道公司整体增长水平，年工资增长比例为<input value="${frBasicData.ngzzzbl}" name="ngzzzbl">%；根据股份公司规定，工资附加比例为<input value="${frBasicData.gzfjbl}"name="gzfjbl">%。</p>
            <p>6.固定资产折旧：根据股份公司规定，长输管道折旧年限为<input value="${frBasicData.zjnx}" name="zjnx">年，残值率为0%。</p>
            <p>7.修理费：按照固定资产原值（扣除建设期利息）的<input value="${frBasicData.azcyzcsbz}" name="azcyzcsbz">%计算。</p>
            <p>8.评价期：<input value="${frBasicData.pjq}" name="pjq">年（不含建设期）。</p>
            <p>9.内部收益率：<input value="${frBasicData.jzsyl}" name="jzsyl">%。</p>
            <p>10.损耗：损耗率为<input value="${frBasicData.sh}" name="sh">‰。</p>
            <p>11.其他参数参见附件1。</p>
            <p>（二）测算结果及与可研对比</p>
            <p>1.本版价格测算结果</p>
            <p>经测算，<input value="${project.name}">管输价格为<input value="0.3551">元/方（含增值税）。</p>
            <p>2.可研价格测算结果</p>
            <p>可研测算管输价格为<input value="0.3551">元/方（含增值税）。</p>
            <p>本版价格测算结果与可研价格不同主要是由于以下两方面原因：</p>
            <textarea style="width: 90%;height: 100px" name="compareReason"></textarea>
            <p>测算参数不同对管输价格的影响详见附表2。</p>
            <p>三、关于<input value="${project.name}">定价的建议</p>
            <p>综上所述，建议如下：</p>
            <p><input value="${project.name}">管输定价为<input value="0.3551">元/方，如果实际输量达不到可研输量，应相应上调管输价格。</p>
            <p>妥否，请批示。</p>

            <p>附件1：<input value="${project.name}">管输价格测算基础参数表</p>
            <p>附件2：测算参数不同对管输价格的影响表</p>



            <p align="right">中国石油管道公司</p>
            <p align="right">2015年8月12日</p>
            <button type="submit" class="btn btn-default">生成报告</button>
        </form>
        </#if>

        <p>附件1</p>
        <#if project??>
        <p align="center">附件1-1 <input value="${project.name}">管输价格基础参数表</p>
        </#if>
        <#if frBasicData??>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th rowspan="2" class="text-center">序号</th>
                <th rowspan="2" class="text-center">参数名称</th>
                <th rowspan="2" class="text-center">单位</th>
                <th rowspan="2" class="text-center">参数值</th>
                <th rowspan="2" class="text-center">依据</th>
            </tr>
            </thead>
            <tbody class="text-center">
            <tr>
                <td>1</td>
                <td>管道号</td>
                <td></td>
                <td><#if frBasicData.gdh ??>${frBasicData.gdh}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>2</td>
                <td>建设期</td>
                <td>年</td>
                <td><#if frBasicData.jsq ??>${frBasicData.jsq}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>3</td>
                <td>设计输量</td>
                <td>10^8 m^3/年</td>
                <td><#if frBasicData.sjsl ??>${frBasicData.sjsl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>4</td>
                <td>管线长度</td>
                <td>km</td>
                <td><#if frBasicData.gxcd ??>${frBasicData.gxcd}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>5</td>
                <td>管道干线长度</td>
                <td>km</td>
                <td><#if frBasicData.gdgxcd ??>${frBasicData.gdgxcd}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>6</td>
                <td>管道支线长度</td>
                <td>km</td>
                <td><#if frBasicData.gdzxcd ??>${frBasicData.gdzxcd}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>7</td>
                <td>员工数量</td>
                <td>人</td>
                <td><#if frBasicData.ygsl ??>${frBasicData.ygsl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>8</td>
                <td>投资总额</td>
                <td>万元</td>
                <td><#if frBasicData.tzze ??>${frBasicData.tzze}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>9</td>
                <td>建设投资</td>
                <td>万元</td>
                <td><#if frBasicData.jstz ??>${frBasicData.jstz}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>10</td>
                <td>流动资金</td>
                <td>万元</td>
                <td><#if frBasicData.ldzj ??>${frBasicData.ldzj}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>11</td>
                <td>折旧年限</td>
                <td>年</td>
                <td><#if frBasicData.zjnx ??>${frBasicData.zjnx}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>12</td>
                <td>基准收益率</td>
                <td>%</td>
                <td><#if frBasicData.jzsyl ??>${frBasicData.jzsyl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>13</td>
                <td>评价期</td>
                <td></td>
                <td><#if frBasicData.pjq ??>${frBasicData.pjq}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>14</td>
                <td>耗油单价</td>
                <td>元/方</td>
                <td><#if frBasicData.hydj ??>${frBasicData.hydj}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>15</td>
                <td>耗气单价</td>
                <td>元/方</td>
                <td><#if frBasicData.hqdj ??>${frBasicData.hqdj}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>16</td>
                <td>耗煤单价</td>
                <td>元/吨</td>
                <td><#if frBasicData.hmdj ??>${frBasicData.hmdj}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>17</td>
                <td>耗水单价</td>
                <td>元/方</td>
                <td><#if frBasicData.hsdj ??>${frBasicData.hsdj}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>18</td>
                <td>耗电单价</td>
                <td>元/度</td>
                <td><#if frBasicData.hddj??>${frBasicData.hddj}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>19</td>
                <td>加剂单价</td>
                <td></td>
                <td><#if frBasicData.jjdj ??>${frBasicData.jjdj}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>20</td>
                <td>混油处理费</td>
                <td>元</td>
                <td><#if frBasicData.hyclf ??>${frBasicData.hyclf}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>21</td>
                <td>人均年工资</td>
                <td>万元</td>
                <td><#if frBasicData.rjngz ??>${frBasicData.rjngz}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>22</td>
                <td>年工资增长比例</td>
                <td>%</td>
                <td><#if frBasicData.ngzzzbl ??>${frBasicData.ngzzzbl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>23</td>
                <td>工资附加比例</td>
                <td>%</td>
                <td><#if frBasicData.gzfjbl ??>${frBasicData.gzfjbl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>24</td>
                <td>维修费</td>
                <td></td>
                <td><#if frBasicData.wxf ??>${frBasicData.wxf}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>25</td>
                <td>按管线长度测算标准</td>
                <td>万元/公里</td>
                <td><#if frBasicData.agxcdcsbz??>${frBasicData.agxcdcsbz}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>26</td>
                <td>按资产原值测算标准</td>
                <td>%</td>
                <td><#if frBasicData.azcyzcsbz ??>${frBasicData.azcyzcsbz}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>27</td>
                <td>其他运行费用</td>
                <td>万元/人年</td>
                <td><#if frBasicData.qtyxfy ??>${frBasicData.qtyxfy}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>28</td>
                <td>单人平均标准</td>
                <td>万元/人年</td>
                <td><#if frBasicData.drpjbz ??>${frBasicData.drpjbz}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>29</td>
                <td>其他管理费用</td>
                <td></td>
                <td><#if frBasicData.qtglfy ??>${frBasicData.qtglfy}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>30</td>
                <td>单人平均管理费标准</td>
                <td>万元/人年</td>
                <td><#if frBasicData.drpjglfbz ??>${frBasicData.drpjglfbz}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>31</td>
                <td>除工资外其他费用年增长率</td>
                <td>%</td>
                <td><#if frBasicData.cgzwqtfynzzl ??>${frBasicData.cgzwqtfynzzl}</#if></td>
                <td></#if></td>
            </tr>
            <tr>
                <td>32</td>
                <td>销售费用</td>
                <td></td>
                <td><#if frBasicData.xsfy ??>${frBasicData.xsfy}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>33</td>
                <td>按营业收入测算标准</td>
                <td>%</td>
                <td><#if frBasicData.ayysrcsbz ??>${frBasicData.ayysrcsbz}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>34</td>
                <td>安全生产费用计提比例</td>
                <td>%</td>
                <td><#if frBasicData.aqscfyjtbl ??>${frBasicData.aqscfyjtbl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>35</td>
                <td>财务费用</td>
                <td></td>
                <td><#if frBasicData.cwfy ??>${frBasicData.cwfy}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>36</td>
                <td>固定资产投资借款的比例</td>
                <td>%</td>
                <td><#if frBasicData.gdzctzjkbl ??>${frBasicData.gdzctzjkbl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>37</td>
                <td>国内长期贷款利率</td>
                <td>%</td>
                <td><#if frBasicData.gncqdkll ??>${frBasicData.gncqdkll}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>38</td>
                <td>流动资金借款比例</td>
                <td>%</td>
                <td><#if frBasicData.ldzjjkbl ??>${frBasicData.ldzjjkbl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>39</td>
                <td>流动资金贷款利率</td>
                <td>%</td>
                <td><#if frBasicData.ldzjdkll ??>${frBasicData.ldzjdkll}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>40</td>
                <td>输油气损耗率</td>
                <td>%</td>
                <td><#if frBasicData.syqshl ??>${frBasicData.syqshl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>41</td>
                <td>税金及附加</td>
                <td>元</td>
                <td><#if frBasicData.sjjfj ??>${frBasicData.sjjfj}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>42</td>
                <td>所得税率</td>
                <td>%</td>
                <td><#if frBasicData.sdsl ??>${frBasicData.sdsl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>43</td>
                <td>增值税率</td>
                <td>%</td>
                <td><#if frBasicData.zzsl ??>${frBasicData.zzsl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>44</td>
                <td>管输收入</td>
                <td>%</td>
                <td><#if frBasicData.gssr ??>${frBasicData.gssr}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>45</td>
                <td>燃料</td>
                <td>%</td>
                <td><#if frBasicData.rl ??>${frBasicData.rl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>46</td>
                <td>动力</td>
                <td>%</td>
                <td><#if frBasicData.dl ??>${frBasicData.dl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>47</td>
                <td>损耗</td>
                <td>%</td>
                <td><#if frBasicData.sh ??>${frBasicData.sh}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>48</td>
                <td>其他</td>
                <td></td>
                <td><#if frBasicData.qt ??>${frBasicData.qt}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>49</td>
                <td>城建税率</td>
                <td>%</td>
                <td><#if frBasicData.cjsl ??>${frBasicData.cjsl}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>50</td>
                <td>教育费附加</td>
                <td>%</td>
                <td><#if frBasicData.jyffj ??>${frBasicData.jyffj}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>51</td>
                <td>地方教育费附加</td>
                <td>%</td>
                <td><#if frBasicData.dfjyffj ??>${frBasicData.dfjyffj}</#if></td>
                <td></td>
            </tr>
            <tr>
                <td>52</td>
                <td>管输介质</td>
                <td></td>
                <td><#if frBasicData.gsjz ??>${frBasicData.gsjz}</#if></td>
                <td></td>
            </tr>
            </tbody>

        </table>

    </div>
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>

