@isTest
private class ExampleTest1 {
    @isTest
    static void testMe(){
        TestExample1 t=new TestExample1();
        t.setData();
        System.assertEquals('Satish Makineni', t.name);
        System.assertEquals('Rahway', t.city);
        System.assertNotEquals('Satish Makine', t.name);
        t.reset();
        System.assertEquals(null, t.name);
        System.assertEquals(null, t.city);
        
        
    }

}