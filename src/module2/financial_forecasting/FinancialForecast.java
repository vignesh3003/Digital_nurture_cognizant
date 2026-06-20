package module2.financial_forecasting;

public class FinancialForecast {

    public static double calculateFutureValue(
            double currentValue,
            double growthRate,
            int years
    ) {

        // Base Case
        if (years == 0) {
            return currentValue;
        }

        // Recursive Case
        return calculateFutureValue(
                currentValue * (1 + growthRate),
                growthRate,
                years - 1
        );
    }
}