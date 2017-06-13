<#include "../components/html-header.ftl"/>
<body>
<div id="wrapper">
<#include "../components/top.ftl" />
<#include "../components/sider.ftl" />
    <div id="page-wrapper">
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">对比查询</h2>
            </div>
        </div>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th rowspan="2" class="text-center">序号</th>
                <th rowspan="2" class="text-center">参数名称</th>
                <th rowspan="2" class="text-center">单位</th>
                <th colspan="2" class="text-center"> 来源版本</th>
            </tr>
            <tr>
                <th class="text-center">可研版本</th>
                <th class="text-center">管道公司版本</th>
            </tr>
            </thead>
            <tbody class="text-center">
            <tr>
                <td>1</td>
                <td>管道号</td>
                <td></td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.gdh ??>${resultListParam.frBasicData.gdh}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.gdh ??>${resultListParam.cdBasicData.gdh}</#if></td>
            </tr>
            <tr>
                <td>2</td>
                <td>建设期</td>
                <td>年</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.jsq ??>${resultListParam.frBasicData.jsq}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.jsq ??>${resultListParam.cdBasicData.jsq}</#if></td>
            </tr>
            <tr>
                <td>3</td>
                <td>设计输量</td>
                <td>10^8 m^3/年</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.sjsl ??>${resultListParam.frBasicData.sjsl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.sjsl ??>${resultListParam.cdBasicData.sjsl}</#if></td>
            </tr>
            <tr>
                <td>4</td>
                <td>管线长度</td>
                <td>km</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.gxcd ??>${resultListParam.frBasicData.gxcd}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.gxcd ??>${resultListParam.cdBasicData.gxcd}</#if></td>
            </tr>
            <tr>
                <td>5</td>
                <td>管道干线长度</td>
                <td>km</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.gdgxcd ??>${resultListParam.frBasicData.gdgxcd}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.gdgxcd ??>${resultListParam.cdBasicData.gdgxcd}</#if></td>
            </tr>
            <tr>
                <td>6</td>
                <td>管道支线长度</td>
                <td>km</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.gdzxcd ??>${resultListParam.frBasicData.gdzxcd}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.gdzxcd ??>${resultListParam.cdBasicData.gdzxcd}</#if></td>
            </tr>
            <tr>
                <td>7</td>
                <td>员工数量</td>
                <td>人</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.ygsl ??>${resultListParam.frBasicData.ygsl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.ygsl ??>${resultListParam.cdBasicData.ygsl}</#if></td>
            </tr>
            <tr>
                <td>8</td>
                <td>投资总额</td>
                <td>万元</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.tzze ??>${resultListParam.frBasicData.tzze}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.tzze ??>${resultListParam.cdBasicData.tzze}</#if></td>
            </tr>
            <tr>
                <td>9</td>
                <td>建设投资</td>
                <td>万元</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.jstz ??>${resultListParam.frBasicData.jstz}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.jstz ??>${resultListParam.cdBasicData.jstz}</#if></td>
            </tr>
            <tr>
                <td>10</td>
                <td>流动资金</td>
                <td>万元</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.ldzj ??>${resultListParam.frBasicData.ldzj}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.ldzj ??>${resultListParam.cdBasicData.ldzj}</#if></td>
            </tr>
            <tr>
                <td>11</td>
                <td>折旧年限</td>
                <td>年</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.zjnx ??>${resultListParam.frBasicData.zjnx}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.zjnx ??>${resultListParam.cdBasicData.zjnx}</#if></td>
            </tr>
            <tr>
                <td>12</td>
                <td>基准收益率</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.jzsyl ??>${resultListParam.frBasicData.jzsyl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.jzsyl ??>${resultListParam.cdBasicData.jzsyl}</#if></td>
            </tr>
            <tr>
                <td>13</td>
                <td>评价期</td>
                <td></td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.pjq ??>${resultListParam.frBasicData.pjq}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.pjq ??>${resultListParam.cdBasicData.pjq}</#if></td>
            </tr>
            <tr>
                <td>14</td>
                <td>耗油单价</td>
                <td>元/方</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.hydj ??>${resultListParam.frBasicData.hydj}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.hydj ??>${resultListParam.cdBasicData.hydj}</#if></td>
            </tr>
            <tr>
                <td>15</td>
                <td>耗气单价</td>
                <td>元/方</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.hqdj ??>${resultListParam.frBasicData.hqdj}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.hqdj ??>${resultListParam.cdBasicData.hqdj}</#if></td>
            </tr>
            <tr>
                <td>16</td>
                <td>耗煤单价</td>
                <td>元/吨</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.hmdj ??>${resultListParam.frBasicData.hmdj}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.hmdj ??>${resultListParam.cdBasicData.hmdj}</#if></td>
            </tr>
            <tr>
                <td>17</td>
                <td>耗水单价</td>
                <td>元/方</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.hsdj ??>${resultListParam.frBasicData.hsdj}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.hsdj ??>${resultListParam.cdBasicData.hsdj}</#if></td>
            </tr>
            <tr>
                <td>18</td>
                <td>耗电单价</td>
                <td>元/度</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.hddj??>${resultListParam.frBasicData.hddj}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.hddj??>${resultListParam.cdBasicData.hddj}</#if></td>
            </tr>
            <tr>
                <td>19</td>
                <td>加剂单价</td>
                <td></td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.jjdj ??>${resultListParam.frBasicData.jjdj}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.jjdj ??>${resultListParam.cdBasicData.jjdj}</#if></td>
            </tr>
            <tr>
                <td>20</td>
                <td>混油处理费</td>
                <td>元</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.hyclf ??>${resultListParam.frBasicData.hyclf}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.hyclf ??>${resultListParam.cdBasicData.hyclf}</#if></td>
            </tr>
            <tr>
                <td>21</td>
                <td>人均年工资</td>
                <td>万元</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.rjngz ??>${resultListParam.frBasicData.rjngz}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.rjngz ??>${resultListParam.cdBasicData.rjngz}</#if></td>
            </tr>
            <tr>
                <td>22</td>
                <td>年工资增长比例</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.ngzzzbl ??>${resultListParam.frBasicData.ngzzzbl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.ngzzzbl ??>${resultListParam.cdBasicData.ngzzzbl}</#if></td>
            </tr>
            <tr>
                <td>23</td>
                <td>工资附加比例</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.gzfjbl ??>${resultListParam.frBasicData.gzfjbl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.gzfjbl ??>${resultListParam.cdBasicData.gzfjbl}</#if></td>
            </tr>
            <tr>
                <td>24</td>
                <td>维修费</td>
                <td></td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.wxf ??>${resultListParam.frBasicData.wxf}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.wxf ??>${resultListParam.cdBasicData.wxf}</#if></td>
            </tr>
            <tr>
                <td>25</td>
                <td>按管线长度测算标准</td>
                <td>万元/公里</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.agxcdcsbz??>${resultListParam.frBasicData.agxcdcsbz}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.agxcdcsbz??>${resultListParam.cdBasicData.agxcdcsbz}</#if></td>
            </tr>
            <tr>
                <td>26</td>
                <td>按资产原值测算标准</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.azcyzcsbz ??>${resultListParam.frBasicData.azcyzcsbz}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.azcyzcsbz ??>${resultListParam.cdBasicData.azcyzcsbz}</#if></td>
            </tr>
            <tr>
                <td>27</td>
                <td>其他运行费用</td>
                <td>万元/人年</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.qtyxfy ??>${resultListParam.frBasicData.qtyxfy}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.qtyxfy ??>${resultListParam.cdBasicData.qtyxfy}</#if></td>
            </tr>
            <tr>
                <td>28</td>
                <td>单人平均标准</td>
                <td>万元/人年</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.drpjbz ??>${resultListParam.frBasicData.drpjbz}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.drpjbz ??>${resultListParam.cdBasicData.drpjbz}</#if></td>
            </tr>
            <tr>
                <td>29</td>
                <td>其他管理费用</td>
                <td></td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.qtglfy ??>${resultListParam.frBasicData.qtglfy}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.qtglfy ??>${resultListParam.cdBasicData.qtglfy}</#if></td>
            </tr>
            <tr>
                <td>30</td>
                <td>单人平均管理费标准</td>
                <td>万元/人年</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.drpjglfbz ??>${resultListParam.frBasicData.drpjglfbz}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.drpjglfbz ??>${resultListParam.cdBasicData.drpjglfbz}</#if></td>
            </tr>
            <tr>
                <td>31</td>
                <td>除工资外其他费用年增长率</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.cgzwqtfynzzl ??>${resultListParam.frBasicData.cgzwqtfynzzl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.cgzwqtfynzzl ??>${resultListParam.cdBasicData.cgzwqtfynzzl}</#if></td>
            </tr>
            <tr>
                <td>32</td>
                <td>销售费用</td>
                <td></td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.xsfy ??>${resultListParam.frBasicData.xsfy}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.xsfy ??>${resultListParam.cdBasicData.xsfy}</#if></td>
            </tr>
            <tr>
                <td>33</td>
                <td>按营业收入测算标准</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.ayysrcsbz ??>${resultListParam.frBasicData.ayysrcsbz}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.ayysrcsbz ??>${resultListParam.cdBasicData.ayysrcsbz}</#if></td>
            </tr>
            <tr>
                <td>34</td>
                <td>安全生产费用计提比例</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.aqscfyjtbl ??>${resultListParam.frBasicData.aqscfyjtbl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.aqscfyjtbl ??>${resultListParam.cdBasicData.aqscfyjtbl}</#if></td>
            </tr>
            <tr>
                <td>35</td>
                <td>财务费用</td>
                <td></td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.cwfy ??>${resultListParam.frBasicData.cwfy}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.cwfy ??>${resultListParam.cdBasicData.cwfy}</#if></td>
            </tr>
            <tr>
                <td>36</td>
                <td>固定资产投资借款的比例</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.gdzctzjkbl ??>${resultListParam.frBasicData.gdzctzjkbl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.gdzctzjkbl ??>${resultListParam.cdBasicData.gdzctzjkbl}</#if></td>
            </tr>
            <tr>
                <td>37</td>
                <td>国内长期贷款利率</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.gncqdkll ??>${resultListParam.frBasicData.gncqdkll}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.gncqdkll ??>${resultListParam.cdBasicData.gncqdkll}</#if></td>
            </tr>
            <tr>
                <td>38</td>
                <td>流动资金借款比例</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.ldzjjkbl ??>${resultListParam.frBasicData.ldzjjkbl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.ldzjjkbl ??>${resultListParam.cdBasicData.ldzjjkbl}</#if></td>
            </tr>
            <tr>
                <td>39</td>
                <td>流动资金贷款利率</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.ldzjdkll ??>${resultListParam.frBasicData.ldzjdkll}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.ldzjdkll ??>${resultListParam.cdBasicData.ldzjdkll}</#if></td>
            </tr>
            <tr>
                <td>40</td>
                <td>输油气损耗率</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.syqshl ??>${resultListParam.frBasicData.syqshl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.syqshl ??>${resultListParam.cdBasicData.syqshl}</#if></td>
            </tr>
            <tr>
                <td>41</td>
                <td>税金及附加</td>
                <td>元</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.sjjfj ??>${resultListParam.frBasicData.sjjfj}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.sjjfj ??>${resultListParam.cdBasicData.sjjfj}</#if></td>
            </tr>
            <tr>
                <td>42</td>
                <td>所得税率</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.sdsl ??>${resultListParam.frBasicData.sdsl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.sdsl ??>${resultListParam.cdBasicData.sdsl}</#if></td>
            </tr>
            <tr>
                <td>43</td>
                <td>增值税率</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.zzsl ??>${resultListParam.frBasicData.zzsl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.zzsl ??>${resultListParam.cdBasicData.zzsl}</#if></td>
            </tr>
            <tr>
                <td>44</td>
                <td>管输收入</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.gssr ??>${resultListParam.frBasicData.gssr}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.gssr ??>${resultListParam.cdBasicData.gssr}</#if></td>
            </tr>
            <tr>
                <td>45</td>
                <td>燃料</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.rl ??>${resultListParam.frBasicData.rl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.rl ??>${resultListParam.cdBasicData.rl}</#if></td>
            </tr>
            <tr>
                <td>46</td>
                <td>动力</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.dl ??>${resultListParam.frBasicData.dl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.dl ??>${resultListParam.cdBasicData.dl}</#if></td>
            </tr>
            <tr>
                <td>47</td>
                <td>损耗</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.sh ??>${resultListParam.frBasicData.sh}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.sh ??>${resultListParam.cdBasicData.sh}</#if></td>
            </tr>
            <tr>
                <td>48</td>
                <td>其他</td>
                <td></td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.qt ??>${resultListParam.frBasicData.qt}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.qt ??>${resultListParam.cdBasicData.qt}</#if></td>
            </tr>
            <tr>
                <td>49</td>
                <td>城建税率</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.cjsl ??>${resultListParam.frBasicData.cjsl}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.cjsl ??>${resultListParam.cdBasicData.cjsl}</#if></td>
            </tr>
            <tr>
                <td>50</td>
                <td>教育费附加</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.jyffj ??>${resultListParam.frBasicData.jyffj}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.jyffj ??>${resultListParam.cdBasicData.jyffj}</#if></td>
            </tr>
            <tr>
                <td>51</td>
                <td>地方教育费附加</td>
                <td>%</td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.dfjyffj ??>${resultListParam.frBasicData.dfjyffj}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.dfjyffj ??>${resultListParam.cdBasicData.dfjyffj}</#if></td>
            </tr>
            <tr>
                <td>52</td>
                <td>管输介质</td>
                <td></td>
                <td><#if resultListParam.frBasicData??&&resultListParam.frBasicData.gsjz ??>${resultListParam.frBasicData.gsjz}</#if></td>
                <td><#if resultListParam.cdBasicData??&&resultListParam.cdBasicData.gsjz ??>${resultListParam.cdBasicData.gsjz}</#if></td>
            </tr>
            </tbody>

        </table>
    </div>
</div>
<!-- /. WRAPPER  -->
<#include "../components/html-footer.ftl"/>

