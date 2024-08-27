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
        Map<Id, String> recordTypeNames = getRecordTypeNames(newAccounts);
        calculateRemainingLoanAmount(newAccounts);
        calculateInterest(newAccounts);
        calculateLoanInterestRate(newAccounts, recordTypeNames);
    }

    private static void beforeUpdate(List<Account> newAccounts, Map<Id, SObject> oldAccountMap) {
        Map<Id, String> recordTypeNames = getRecordTypeNames(newAccounts);
        calculateRemainingLoanAmount(newAccounts);
        calculateInterest(newAccounts);
        calculateLoanInterestRate(newAccounts, recordTypeNames);
    }

    private static void afterInsert(List<Account> newAccounts) {
    }

    private static void afterUpdate(List<Account> newAccounts, Map<Id, SObject> oldAccountMap) {
    }

    private static void beforeDelete(List<Account> oldAccounts) {
    }

    private static void afterDelete(List<Account> oldAccounts) {
    }

    private static void afterUndelete(List<Account> newAccounts) {
    }

    // Method to calculate Remaining Loan Amount
    private static void calculateRemainingLoanAmount(List<Account> accounts) {
        for (Account acc : accounts) {
            if (acc.Total_Loan_Amount__c != null && acc.Monthly_Interest_Rate_Payments__c != null) {
                acc.Remaining_Loan_Amount__c = acc.Total_Loan_Amount__c - (acc.Monthly_Interest_Rate_Payments__c / 2);
            } else {
                acc.Remaining_Loan_Amount__c = acc.Total_Loan_Amount__c;
            }
        }
    }

    // Method to get RecordType Names
    private static Map<Id, String> getRecordTypeNames(List<Account> accounts) {
        // Get all unique RecordTypeIds from the accounts list
        Set<Id> recordTypeIds = new Set<Id>();
        for (Account acc : accounts) {
            recordTypeIds.add(acc.RecordTypeId);
        }

        // Query to get RecordType names based on these RecordTypeIds
        Map<Id, RecordType> recordTypeMap = new Map<Id, RecordType>(
            [SELECT Id, Name FROM RecordType WHERE Id IN :recordTypeIds]
        );

        // Create a map of RecordTypeId to RecordType.Name
        Map<Id, String> recordTypeNames = new Map<Id, String>();
        for (Id recordTypeId : recordTypeMap.keySet()) {
            recordTypeNames.put(recordTypeId, recordTypeMap.get(recordTypeId).Name);
        }

        return recordTypeNames;
    }

    // Method to calculate Calculated Interest
    private static void calculateInterest(List<Account> accounts) {
        for (Account acc : accounts) {
            if (acc.Balance__c != null && acc.Interest_Rate__c != null) {
                acc.Calculated_Interest__c = (acc.Balance__c * acc.Interest_Rate__c/100);
            }
        }
    }

    // Method to calculate Loan Interest Rate
    private static void calculateLoanInterestRate(List<Account> accounts, Map<Id, String> recordTypeNames) {
        for (Account acc : accounts) {
            String recordTypeName = recordTypeNames.get(acc.RecordTypeId);

            if (recordTypeName == 'Salary Account') {
                if (acc.Loan_Type__c == 'Home Loan') {
                    if (acc.Total_Loan_Amount__c <= 100000) {
                        acc.Loan_Interest_Rate__c = 8.0;
                    } else if (acc.Total_Loan_Amount__c <= 500000) {
                        acc.Loan_Interest_Rate__c = 11.0;
                    } else if (acc.Total_Loan_Amount__c <= 1000000) {
                        acc.Loan_Interest_Rate__c = 14.0;
                    }
                } else if (acc.Loan_Type__c == 'Car Loan') {
                    if (acc.Total_Loan_Amount__c <= 100000) {
                        acc.Loan_Interest_Rate__c = 8.4;
                    } else if (acc.Total_Loan_Amount__c <= 500000) {
                        acc.Loan_Interest_Rate__c = 10.3;
                    } else if (acc.Total_Loan_Amount__c > 500000) {
                        acc.addError('We do not provide loans beyond $500,000 for Salary Account with Car Loan.');
                    }
                }
            } else if (recordTypeName == 'Transactional Account') {
                if (acc.Loan_Type__c == 'Home Loan') {
                    if (acc.Total_Loan_Amount__c <= 100000) {
                        acc.Loan_Interest_Rate__c = 9.0;
                    } else if (acc.Total_Loan_Amount__c <= 500000) {
                        acc.Loan_Interest_Rate__c = 11.8;
                    } else if (acc.Total_Loan_Amount__c <= 1000000) {
                        acc.Loan_Interest_Rate__c = 15.9;
                    }
                } else if (acc.Loan_Type__c == 'Car Loan') {
                    if (acc.Total_Loan_Amount__c <= 100000) {
                        acc.Loan_Interest_Rate__c = 7.0;
                    } else if (acc.Total_Loan_Amount__c <= 500000) {
                        acc.Loan_Interest_Rate__c = 10.9;
                    } else if (acc.Total_Loan_Amount__c <= 1000000) {
                        acc.Loan_Interest_Rate__c = 13.6;
                    }
                }
            } else if (recordTypeName == 'Current Account') {
                if (acc.Loan_Type__c == 'Home Loan') {
                    if (acc.Total_Loan_Amount__c <= 1000000) {
                        acc.Loan_Interest_Rate__c = 10.0;
                    } else if (acc.Total_Loan_Amount__c <= 5000000) {
                        acc.Loan_Interest_Rate__c = 12.5;
                    } else if (acc.Total_Loan_Amount__c <= 10000000) {
                        acc.Loan_Interest_Rate__c = 16.2;
                    }
                } else if (acc.Loan_Type__c == 'Car Loan') {
                    if (acc.Total_Loan_Amount__c <= 1000000) {
                        acc.Loan_Interest_Rate__c = 9.0;
                    } else if (acc.Total_Loan_Amount__c <= 5000000) {
                        acc.Loan_Interest_Rate__c = 11.9;
                    } else if (acc.Total_Loan_Amount__c <= 10000000) {
                        acc.Loan_Interest_Rate__c = 14.6;
                    }
                }
            }
        }
    }
}