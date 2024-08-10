@isTest
public class RectangleStaticMethodsTest {
    
    @isTest
    private static void rectangleAreaTesting(){
        integer a  = RectangleStaticJuly24.areaOfRectangle(10,20);
        system.assertEquals(200,a,'Area is incorrect.');
        
    }
    
    @isTest
    private static void rectanglePeriTesting(){
        integer p = RectangleStaticJuly24.periOfRectangle(20,30);
        system.assertEquals(100,p,'Perimeter is not correct.');
    }

}
