package com.oilgas.util;

import com.oilgas.model.FrBasicData;
import com.oilgas.model.PipeTransPrice;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.joda.time.LocalDate;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/**
 * Created by wangshang on 17/6/13.
 */
public class WordUtil {

    public static void exportWord(FrBasicData frBasicData, PipeTransPrice pipeTransPrice, OutputStream outputStream) throws IOException {
        XWPFDocument doc = new XWPFDocument();

        // 文档标题
        XWPFParagraph title = doc.createParagraph();
        title.setAlignment(ParagraphAlignment.CENTER);
        XWPFRun titleRun = title.createRun();
        titleRun.setBold(true);
        titleRun.setFontSize(20);
        titleRun.setText("关于核定 " + frBasicData.getGdName() + " 管输价格有关问题的请示");
        titleRun.setTextPosition(50);

        // 文档开头
        XWPFParagraph header = doc.createParagraph();
        header.setAlignment(ParagraphAlignment.BOTH);
        XWPFRun headerRun = header.createRun();
        headerRun.setText("中国石油天然气股份有限公司：");

        // 第一段
        XWPFParagraph headerSub = doc.createParagraph();
        headerSub.setIndentationFirstLine(600);
        headerSub.setAlignment(ParagraphAlignment.BOTH);
        XWPFRun headerSubRun = headerSub.createRun();
        headerSubRun.setText(frBasicData.getGdName() + " 竣工在即，需在该线投产前核定其管输价格，现将该管线定价有关事宜汇报如下：");

        // 基本情况 段
        XWPFParagraph basic = doc.createParagraph();
        basic.setIndentationFirstLine(600);
        basic.setAlignment(ParagraphAlignment.LEFT);
        XWPFRun basicHeaderRun = basic.createRun();
        basicHeaderRun.setText("一、" + frBasicData.getGdName() + "基本情况");
        XWPFRun basic1Run = basic.createRun();
        basic1Run.addCarriageReturn();
        basic1Run.setText("           " + frBasicData.getCondition1());
        XWPFRun basic2Run = basic.createRun();
        basic2Run.addCarriageReturn();
        basic2Run.setText("           " + frBasicData.getCondition2());
        XWPFRun basic3Run = basic.createRun();
        basic3Run.addCarriageReturn();
        basic3Run.setText("           " + frBasicData.getCondition3());

        // 价格测算 段
        XWPFParagraph price = doc.createParagraph();
        price.setIndentationFirstLine(600);
        price.setAlignment(ParagraphAlignment.BOTH);
        XWPFRun priceHeaderRun = price.createRun();
        priceHeaderRun.setText("二、" + frBasicData.getGdName() + "价格测算");
        XWPFRun price1Run = price.createRun();
        price1Run.addCarriageReturn();
        price1Run.setText("           " + "（一）测算依据及主要参数");
        XWPFRun p1 = price.createRun();
        p1.addCarriageReturn();
        p1.setText("           " + "以可研报告为基础，结合管道公司在役管道实际情况进行测算，主要参数如下：");
        XWPFRun gsl = price.createRun();
        gsl.addCarriageReturn();
        gsl.setText("           " + "1.管输量：" + frBasicData.getGslCondition());
        XWPFRun gscd = price.createRun();
        gscd.addCarriageReturn();
        gscd.setText("           " + "2.管线长度：" + frBasicData.getGxcd() + "公里");
        XWPFRun dlfy = price.createRun();
        dlfy.addCarriageReturn();
        dlfy.setText("           " + "3.动力费用：在生产过程中消耗电的费用。电力消耗量依据可研情况测算，" + frBasicData.getDlfyCondition()
                + ";动力价格按照管道沿线的平均用电价格"
                + frBasicData.getHddj()
                + "元/千瓦时测算。");
        XWPFRun rlfy = price.createRun();
        rlfy.addCarriageReturn();
        rlfy.setText("           " + "4.燃料费用：在生产过程中消耗天然气的费用。天然气消耗量依据可研情况测算，" + frBasicData.getRlfyCondition()
                + ";天然气价格按照管道沿线天然气最高门站价格"
                + frBasicData.getHqdj() + "元/方测算。");
        XWPFRun rycb = price.createRun();
        rycb.addCarriageReturn();
        rycb.setText("           " + "5.人员成本：项目定员为" + frBasicData.getYgsl() + "人,年均工资" + frBasicData.getRjngz()
                + "万元/人；根据管道公司整体增长水平，年工资增长比例为" + frBasicData.getNgzzzbl()
                + "%；根据股份公司规定，工资附加比例为" + frBasicData.getGzfjbl() + "%。");
        XWPFRun gdzczj = price.createRun();
        gdzczj.addCarriageReturn();
        gdzczj.setText("           " + "6.固定资产折旧：根据股份公司规定，长输管道折旧年限为" + frBasicData.getZjnx() + "年，残值率为0%。");
        XWPFRun xlf = price.createRun();
        xlf.addCarriageReturn();
        xlf.setText("           " + "7.修理费：按照固定资产原值（扣除建设期利息）的" + frBasicData.getAzcyzcsbz() + "%计算。");
        XWPFRun pjq = price.createRun();
        pjq.addCarriageReturn();
        pjq.setText("           " + "8.评价期：" + (frBasicData.getPjq() - frBasicData.getJsq()) + "年（不含建设期）。");
        XWPFRun nbsyl = price.createRun();
        nbsyl.addCarriageReturn();
        nbsyl.setText("           " + "9.内部收益率：" + frBasicData.getJzsyl() + "%。");
        XWPFRun sh = price.createRun();
        sh.addCarriageReturn();
        sh.setText("           " + "10.损耗：损耗率为" + frBasicData.getSh() + "‰。");
        XWPFRun qt = price.createRun();
        qt.addCarriageReturn();
        qt.setText("           " + "11.其他参数参见附件1。");

        // 测算结果及与可研对比
        XWPFParagraph resultCompare = doc.createParagraph();
        resultCompare.setIndentationFirstLine(600);
        resultCompare.setAlignment(ParagraphAlignment.BOTH);
        XWPFRun rcHeader = resultCompare.createRun();
        rcHeader.setText("（二）测算结果及与可研对比");
        XWPFRun rc1 = resultCompare.createRun();
        rc1.addCarriageReturn();
        rc1.setText("           " + "1.本版价格测算结果");
        XWPFRun rc1Content = resultCompare.createRun();
        rc1Content.addCarriageReturn();
        rc1Content.setText("           " + "经测算，" + frBasicData.getGdName() + "管输价格为" + pipeTransPrice.getKybggsjg() + "元/方（含增值税）。");
        XWPFRun rc2 = price.createRun();
        rc2.addCarriageReturn();
        rc2.setText("           " + "2.可研价格测算结果");
        XWPFRun rc2Content1 = price.createRun();
        rc2Content1.addCarriageReturn();
        rc2Content1.setText("           " + "可研测算管输价格为" + pipeTransPrice.getKybggsjg() + "元/方（含增值税）。");
        XWPFRun rc2Content2 = price.createRun();
        rc2Content2.addCarriageReturn();
        rc2Content2.setText("           " + "本版价格测算结果与可研价格不同主要是由于以下两方面原因：" + frBasicData.getCompareReason()
                + "。测算参数不同对管输价格的影响详见附表2。");

        // 关于 定价的 建议
        XWPFParagraph suggestion = doc.createParagraph();
        suggestion.setIndentationFirstLine(600);
        suggestion.setAlignment(ParagraphAlignment.BOTH);
        XWPFRun sugHeader = suggestion.createRun();
        sugHeader.setText("三、关于" + frBasicData.getGdName() + "定价的建议");
        XWPFRun sug1 = suggestion.createRun();
        sug1.addCarriageReturn();
        sug1.setText("           " + "综上所述，建议如下：");
        sug1.addCarriageReturn();
        sug1.setText("           " + frBasicData.getGdName() + "管输定价为" + pipeTransPrice.getKybggsjg() + "元/方，如果实际输量达不到可研输量，应相应上调管输价格。");
        XWPFRun tail = suggestion.createRun();
        tail.addCarriageReturn();
        tail.setText("           " + "妥否，请批示。");

        // 落款
        XWPFParagraph lk = doc.createParagraph();
        lk.setAlignment(ParagraphAlignment.RIGHT);
        XWPFRun company = lk.createRun();
        company.setText("中国石油管道公司");
        XWPFRun date = lk.createRun();
        date.addCarriageReturn();
        date.setText(new LocalDate().toString("yyyy年MM月dd日"));

        doc.write(outputStream);
    }


    public static void main(String[] args) throws Exception {


        FileOutputStream out = new FileOutputStream("upload-dev/simple.docx");
        FrBasicData frBasicData = new FrBasicData();
        PipeTransPrice pipeTransPrice = new PipeTransPrice();
        exportWord(frBasicData, pipeTransPrice, out);
        out.close();
    }
}
