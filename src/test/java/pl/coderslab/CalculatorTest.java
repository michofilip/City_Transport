package pl.coderslab;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class CalculatorTest {
    private static final int VAL_A = 2;
    private static final int VAL_B = 3;
    private static final int RESULT_ADD = 5;
    private static final int RESULT_SUBTRACT = -1;

    @Test
    public void add() {
        Calculator calculator = new Calculator();
        int resultAdd = calculator.add(VAL_A, VAL_B);
        assertEquals(resultAdd, RESULT_ADD);
    }

    @Test
    public void subtract() {
        Calculator calculator = new Calculator();
        int resultSubtract = calculator.subtract(VAL_A, VAL_B);
        assertEquals(resultSubtract, RESULT_SUBTRACT);
    }

    @Test
    public void addFail() {

    }
}