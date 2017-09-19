public class TestExample1 {
    public string name 		{set;get;}
    public string city		{set;get;}
    public void setData(){
        name='Satish Makineni';
        city='Rahway';
        System.debug('Name'+name);
        System.debug('City'+city);
    }
        public void reset(){
            name=null;
            city=null;
            system.debug('Name'+name);
            system.debug('City'+city);
        }
    }