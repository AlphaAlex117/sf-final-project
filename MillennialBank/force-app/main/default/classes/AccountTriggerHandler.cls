public class AccountTriggerHandler {
    public static void handle(System.TriggerOperation operation) {
        if (operation == System.TriggerOperation.BEFORE_INSERT) {
            beforeInsert(Trigger.new);
        } else if (operation == System.TriggerOperation.AFTER_INSERT) {
            afterInsert(Trigger.new);
        } else if (operation == System.TriggerOperation.BEFORE_UPDATE) {
            beforeUpdate(Trigger.new, Trigger.oldMap);
        } else if (operation == System.TriggerOperation.AFTER_UPDATE) {
            afterUpdate(Trigger.new, Trigger.oldMap);
        } else if (operation == System.TriggerOperation.BEFORE_DELETE) {
            beforeDelete(Trigger.old);
        } else if (operation == System.TriggerOperation.AFTER_DELETE) {
            afterDelete(Trigger.old);
        } else if (operation == System.TriggerOperation.AFTER_UNDELETE) {
            afterUndelete(Trigger.new);
        }
    }
    private static void beforeInsert(List<Account> newAccounts) {
		 calculateInterest(newAccounts);
    }
    private static void afterInsert(List<Account> newAccounts) {
        
    }
    private static void beforeUpdate(List<Account> newAccounts, Map<Id, SObject> oldAccountMap) {
        calculateInterest(newAccounts);
    }
    private static void afterUpdate(List<Account> newAccounts, Map<Id, SObject> oldAccountMap) {
    }
    private static void beforeDelete(List<Account> oldAccounts) {
    }
    private static void afterDelete(List<Account> oldAccounts) {
    }
    private static void afterUndelete(List<Account> newAccounts) {
    }
    // Method to calculate Calculated Interest
    private static void calculateInterest(List<Account> accounts) {
        for (Account acc : accounts) {
            if (acc.Balance__c != null && acc.Interest_Rate__c != null) {
                acc.Calculated_Interest__c = (acc.Balance__c * acc.Interest_Rate__c)/100;
            }
        }
    }
}