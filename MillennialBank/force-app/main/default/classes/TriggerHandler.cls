public class TriggerHandler {
    public static void handle(Schema.SObjectType sObjectType, System.TriggerOperation operation) {
        if (sObjectType == Account.SObjectType) {
            AccountTriggerHandler.handle(operation);
        }
        if (sObjectType == Contact.SObjectType) {
            ContactTriggerHandler.handle(operation);
        }
        if (sObjectType == Case.SObjectType) {
            CaseTriggerHandler.handle(operation);
        }
    }
}