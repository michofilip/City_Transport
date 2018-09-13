package pl.coderslab;

public class CalculatorTest {
    private static final int VAL_A = 2;
    private static final int VAL_B = 3;
    private static final int RESULT_ADD = 5;

    public static void main(String[] args) {
        Calculator calculator = new Calculator();
        int resultAdd = calculator.add(VAL_A, VAL_B);
        if (resultAdd == RESULT_ADD) {
            System.out.println("OK");
        } else {
            System.out.println("ERROR");
        }
    }
}
