@isTest
    private static void updateDescOnAccTest(){
        
        List<Account> accList = new List<Account>();
        
        for(Integer i=1; i<=5 ; i++){
            Account acc = new Account();
            acc.Name = 'Test ' + i;
            accList.add(acc);
        }
        
        insert accList;
        
        List<Account> updatedAcc = [SELECT Description FROM Account WHERE Id IN: accList];
        
        System.assertEquals('This is updated trigger - handler1111.', updatedAcc[0].Description,'Description is not updated');
    }
