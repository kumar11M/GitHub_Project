public class TestExample2 {
    public String industry	{set;get;}
    public String rating	{set;get;}
    public string ownership	{set;get;}
    public void callMe(){
        if(industry=='Energy'){
            rating='Warm';
            ownership='Public';
            System.debug('Test'+industry);
        }else{
            rating='Hot';
            ownership='Private';
        }
     }
}