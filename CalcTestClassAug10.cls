@isTest
public class CalculatorTest {
    
    @isTest
    private static void addtionTest(){
        decimal a = CalculatorStaticJuly24.sumOfNumbers(11,23);
        system.assertEquals(34,a,'Addition is incorrect');
    }
    
    @isTest
    private static void subtractionTest(){
        decimal b = CalculatorStaticJuly24.subOfNumbers(11,23);
        system.assertEquals(-12,b,'subtraction is incorrect');
    }
    
    @isTest
    private static void multiplicationTest(){
        decimal c = CalculatorStaticJuly24.mulOfNumbers(11,23);
        system.assertEquals(253,c,'mulOfNumbers is incorrect');
    }
    
    @isTest
    private static void divisionTest(){
        decimal d = CalculatorStaticJuly24.divOfNumbers(11,23);
        system.assertEquals(34,d,'divOfNumbers is incorrect');
    }
}
