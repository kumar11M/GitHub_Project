public class DMLExamplep {
    public string name		{set;get;}
    public string phone		{set;get;}
    public string rating	{set;get;}
    public string ownership	{set;get;}
    public decimal amount	{set;get;}
    public string industry	{set;get;}
    public PageReference save(){
        //write a soql query to find any duplicate records based on name
        integer counts=[select count() from account where name =:name];
        //if the records find greater than 0
        //write a Apex Message error on same page and return to same page
            if(counts>0){
                ApexPages.Message msg= new ApexPages.Message(apexPages.Severity.ERROR,'Duplicate Record exists');
               	ApexPages.addMessage(msg);
                return null;
            }else{
                //if not find any duplicate records then create new record in account
                account acc1=new account();
                acc1.name=name;
                acc1.Phone=phone;
                acc1.Industry=industry;
                acc1.rating='Cold';
                acc1.ownership=ownership;
                acc1.AnnualRevenue=amount;
                insert acc1;
                //once the record created then return to detail Page
                pageReference p=new PageReference('/'+acc1.id);
                return p;
            }
    }
    public void reset(){
        name=null;
        phone=null;
        industry=null;
        rating=null;
        ownership=null;
        amount=null;
    }

}