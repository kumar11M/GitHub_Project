global class AccountBatch implements database.Batchable<sobject> {
    //Batch Class test
    //test github
    //satish
    global database.QueryLocator start(database.BatchableContext BC){
         string accName='Satish_Tes%';
         string myQuery='select id, name, rating from account where name like : accName';
        return database.getQueryLocator(myQuery);
    }
    global void execute(database.BatchableContext BC, List<sobject> scop){
        list<account> lstacc=new list<account>();
        for(sobject e:scop){
            account acc=(Account)e;
            //system.debug('Satish ===='+acc.name);
            acc.name='Satish_Tes1';
            
            lstacc.add(acc);
        }
        if(lstacc.size()>0){
        update lstacc;
        }
    }
    global void finish(database.BatchableContext BC){
        //test
        
    }
    
}