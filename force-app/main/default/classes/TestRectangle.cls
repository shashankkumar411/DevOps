@isTest
private class TestRectangle{ 
        static testMethod void myUnitTest(){
        Rectangle rect = new Rectangle();
        Rectangle rect1 = new Rectangle(10,65);
        rect.area();
        rect.area(10,20);
        rect.perimeter();
        rect.perimeter(10,20);
        rect.showResult();
        }
        
}