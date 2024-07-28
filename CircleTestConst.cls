@isTest
public class CircleTestConst {
    
    @isTest
    private static void testArea(){
        CircleAreaConstJuly24 CA = new CircleAreaConstJuly24();
        decimal area  = CA.areaOfcircle(10);
        system.assertEquals(314,area, 'incorrect result' );
        
    }
    
    @isTest
    private static void testPeri(){
        CircleAreaConstJuly24 CP = CircleAreaConstJuly24();
        decimal perim = CP.periOfCircle(10);
        system.assertEquals(62.8, perim, 'incorrcet results');
    }

}
