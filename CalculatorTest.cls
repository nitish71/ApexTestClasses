@isTest
public class CalculatorTest {
    
    @isTest
    private static void testAdd(){
        integer a = CalculatorStaticJuly24.sumOfNumbers(100,200);
        system.assertEquals(300, a , 'sum is incorrcet');
    }
    
    @isTest
    private static void testSub(){
        integer s = CalculatorStaticJuly24.subOfNumbers(10, 20);
        system.assertEquals(-10, s, 'sub is incorrcet');
    }
    
    @isTest
    private static void testMul(){
        integer m = CalculatorStaticJuly24.mulOfNumbers(5, 6);
        system.assertEquals(30, m, 'multiP* is incorrcet');
    }
    
    @isTest
    private static void testDiv(){
        integer d = CalculatorStaticJuly24.divOfNumbers(20, 5);
        system.assertEquals(4, d, 'division is incorrcet');
    }

}
