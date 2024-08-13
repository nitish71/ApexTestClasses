@isTest
public class CalculateTestOriginTest {
    
    @isTest
    public static void testAccountWithCase(){
        
        List<Account> accList = New List<Account>();
        List<Case> csList = new List<Case>();
        List<ID> accID = new List<ID>();
        
        for(Account acc: accList){
            for(integer i = 1; i<=5; i++){
                Account acc = new Account();
            	acc.Name = 'Testing another future'+i;
                accList.add(acc);
               }
            
            test.startTest();
            if(!accList.isEmpty()){
                insert accList;
            }
             
            for(Account acc : accList){
                for(integer i = 1; i<=5; i++){
                    Case cs = new Case();
                    cs.Status = 'New';
                    cs.Origin = 'Web';
                    cs.AccountId = acc.Id;
                    accID.add(acc.Id);
                    csList.add(cs);
                    
                }
                
                for(integer i = 1; i<=5 ; i++){
                    Case cs = new Case();
                    cs.Status = 'New';
                    cs.Origin = 'Phone';
                    cs.AccountId = acc.Id;
                    accID.add(acc.Id);
                    csList.add(cs);
                }
                
                for(integer i = 1; i<=5 ; i++){
                    Case cs = new Case();
                    cs.Status = 'New';
                    cs.Origin = 'Email';
                    cs.AccountId = acc.Id;
                    accID.add(acc.Id);
                    csList.add(cs);
                }
            }
            
            if(!csList.isEmpty()){
                insert csList;
            }
            
            CalculateTestOriginTest.testAccountWithCase(accID);
            test.stopTest();
            
            List<Account> updatedAccs = [SELECT ID, Cases_Through_Email__c ,Cases_Through_Phone__c	, 
                Cases_Through_Web__c  FROM Account WHERE ID IN : accID];
            
            System.assertEquals(5, updatedAccs[2].Cases_Through_Web__c);
            system.assertEquals(5,updatedAccs[1].Cases_Through_Email__c);
            system.assertEquals(5,updatedAccs[0].Cases_Through_Phone__c);
        }
    }

}
