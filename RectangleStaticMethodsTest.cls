@isTest
public class RectangleStaticMethodsTest {
    
    @isTest
    private static void rectangleTestArea(){
        
        integer a  = RectangleStaticJuly24.areaOfRectangle(20,10);
        system.assertEquals(200, a, 'Results are incorrect');
    }
    
    @isTest
    private static void rectangleTestPerimeter(){
        
        integer p = RectangleStaticJuly24.periOfRectangle(6, 5);
        system.assertEquals(22,  p, 'result is incorrect');
    }

}
