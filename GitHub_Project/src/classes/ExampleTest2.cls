@isTest
private class ExampleTest2 {
    @isTest
    static void testMe(){
        TestExample2 t=new TestExample2();
        t.industry='Energy';
        t.callMe();
        System.assertEquals('Warm', t.rating);
        System.assertEquals('Public', t.ownership);
        
        TestExample2 t1=new TestExample2();
        t1.industry='Banking';
        t1.callMe();
        System.assertEquals('Hot', t.rating);
        System.assertEquals('Private', t.ownership);
         }

}