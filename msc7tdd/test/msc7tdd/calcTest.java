package msc7tdd;



import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 * Test class for Calc
 */
public class calcTest {

    public calcTest() {
    }

    @BeforeAll
    public static void setUpClass() {
        // Runs once before all tests
    }

    @AfterAll
    public static void tearDownClass() {
        // Runs once after all tests
    }

    @BeforeEach
    public void setUp() {
        // Runs before each test
    }

    @AfterEach
    public void tearDown() {
        // Runs after each test
    }

    @Test
    public void testAdd() {
        int a = 7;
        int b = 8;
        int expectedResult = 15;

        calc instance = new calc();
        int result = instance.add(a, b);
        assertEquals(expectedResult, result, "The add method should correctly add two numbers");
    }
    
    // Remove or implement other test methods as needed
}
