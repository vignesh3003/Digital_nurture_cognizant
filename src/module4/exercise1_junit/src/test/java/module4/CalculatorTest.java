package module4;

import static org.junit.Assert.*;

import org.junit.Test;

public class CalculatorTest {

    @Test
    public void testAdd() {

        Calculator calc =
                new Calculator();

        assertEquals(
                10,
                calc.add(
                        5,
                        5
                )
        );
    }
}