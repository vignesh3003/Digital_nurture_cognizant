package module4;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.After;
import org.junit.Test;

public class CalculatorAAATest {

    private Calculator calculator;


    @Before
    public void setup() {

        System.out.println(
                "Setup running..."
        );

        calculator =
                new Calculator();
    }


    @After
    public void teardown() {

        System.out.println(
                "Cleanup running..."
        );
    }


    @Test
    public void testAddition() {

        // Arrange
        int a = 10;
        int b = 5;

        // Act
        int result =
                calculator.add(
                        a,
                        b
                );

        // Assert
        assertEquals(
                15,
                result
        );
    }
}