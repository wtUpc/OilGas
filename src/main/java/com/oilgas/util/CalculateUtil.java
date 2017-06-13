package com.oilgas.util;

/**
 * Created by Administrator on 2017/6/11.
 */
public class CalculateUtil {

    public static double irr(double[] values, double guess) {
        int maxInterationCount = 20;
        double absoluteAccuracy = 1.0E-007D;

        double x0 = guess;
        int i = 0;
        while (i < maxInterationCount) {
            double fValue = 0.0D;
            double fDerivative = 0.0D;
            for (int k = 0; k < values.length; k++) {
                fValue += values[k] / Math.pow(1.0D + x0, k);
                fDerivative += -k * values[k] / Math.pow(1.0D + x0, k + 1);
            }
            double x1 = x0 - fValue / fDerivative;
            if (Math.abs(x1 - x0) <= absoluteAccuracy) {
                return x1;
            }
            x0 = x1;
            i++;
        }
        return (0.0D / 0.0D);
    }
}
