package com.oilgas.util;

import java.util.Date;
import java.util.Random;

/**
 * Created by wangshang on 17/3/22.
 */
public class Utils {

    /**
     * 产生随机字符串+时间戳
     *
     * @param length
     * @return
     */
    public static String getRandomString(int length) {
        String base = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            int number = random.nextInt(base.length());
            sb.append(base.charAt(number));
        }
        String timeStamp = String.valueOf(new Date().getTime());
        return sb.toString() + "_" + timeStamp;
    }
}
