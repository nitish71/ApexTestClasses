@isTest
public class CircleTest {
    
    @isTest
    private static void circleAreaTest(){
        decimal a = CircleStaticJuly24.areaOfCircle(10);
        system.assertEquals(314, a, 'area is incorrect');
    }
    
    @isTest
    private static void circlePeriTest(){
        decimal p = CircleStaticJuly24.periOfCircle(10);
        system.assertEquals(62.8, p, 'perimeter is incorrect');
    }

}
