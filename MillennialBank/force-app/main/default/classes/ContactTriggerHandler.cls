public class ContactTriggerHandler {
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
    private static void beforeInsert(List<Contact> newContacts) {
        // Implement logic for before insert if needed
    }
    private static void afterInsert(List<Contact> newContacts) {
        // Implement logic for after insert if needed
    }
	private static void beforeUpdate(List<Contact> newContacts, Map<Id, SObject> oldContactMap) {
    // Iterate through the list of contacts being updated
	}
    private static void afterUpdate(List<Contact> newContacts, Map<Id, SObject> oldContactMap) {
        // Implement logic for after update if needed
    }
    private static void beforeDelete(List<Contact> oldContacts) {
        // Implement logic for before delete if needed
    }
    private static void afterDelete(List<Contact> oldContacts) {
        // Implement logic for after delete if needed
    }
    private static void afterUndelete(List<Contact> newContacts) {
        // Implement logic for after undelete if needed
    }
}