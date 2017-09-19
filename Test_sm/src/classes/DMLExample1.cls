public class DMLExample1 {
    public string name 		{set;get;}
    public string phone 	{set;get;}
    public string rating 	{set;get;}
    public string industry	{set;get;}
    public string ownership	{set;get;}
    public decimal amount	{set;get;}
    //save method
public PageReference save(){
    integer count=[select count() from account where name=:name];
    if(count>0){
        Apexpages.Message msg=new ApexPages.Message(ApexPages.Severity.ERROR, 'Duplicate record exists');
        ApexPages.addMessage(msg);
        return null;
    }else {
        account acc =new account();
        acc.name=name;
        acc.phone=phone;
        acc.industry=industry;
        acc.Ownership=ownership;
        acc.AnnualRevenue=amount;
        acc.rating='HOT';
        insert acc;
        pageReference p =new PageReference('/'+acc.Id);
        return p;
        
    }
    
}
    //reset method
    public void reset(){
        name=null;
        phone=null;
        industry=null;
        ownership=null;
        amount=null;
        rating=null;
    }
}