trigger LaptopBooking on Laptop_B__c (After insert,after update) {

 

    if(trigger.isAfter && ( trigger.isInsert || trigger.isupdate))

    {

    LaptopBookingHandler.sendEmailNotification(trigger.new);

        }



}