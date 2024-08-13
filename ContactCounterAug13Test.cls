@isTest
public class ContactCounterAug13Test {
    
    @isTest
    private static void countContactTest(){
        
        List<Account> accList = new List<Account>();
        List<Contact> conList = new List<Contact>();
        Set<ID> IDset = new Set<ID>();
        
        for(integer i = 1; i<=5; i++){
            Account acc = new Account();
            acc.Name = 'Testing for conyacy counter' + i;
            acc.Active__c = 'Yes';
            accList.add(acc);
        }
        
        //STart of the test
        Test.startTest();
        if(!accList.isEmpty()){
            insert accList;
        }
        
        for(Account acc : accList){
            Contact con = new Contact();
            con.LastName = 'Cooper';
            con.FirstName = 'Missy';
            con.AccountId = acc.Id;
            conList.add(con);
        }
        
        if(!conList.isEmpty()){
            insert conList;
        }
        
        ContactCounterAug13Test.countContactTest(accID);
        
        test.stopTest();
        
        List<Account> updatedAcc = [SELECT ID, Total_Contacts__c FROM ACCOUNT WHERE ID IN : accID];
        system.assertEquals(1, updatedAcc[0].Total_Contacts__c, 'Account count came as different.');
        
        
        
        
    }
    
}
