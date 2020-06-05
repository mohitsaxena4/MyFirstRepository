trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    List<Task> taskList = new List<Task>();
    
    
        
    for(opportunity opp: Trigger.New){
    
        if(opp.StageName=='Closed Won')
        {
            Task t=new Task();
            t.subject='Follow Up Test Task';
            t.whatId=opp.id;
            taskList.add(t);
        }
    
    }

    
    if(taskList.size()>0){
        
        insert taskList;
        
    }
    
}