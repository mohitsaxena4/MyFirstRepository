({
    openModel: function(component, event, helper) {
        // Set isModalOpen attribute to true
        component.set("v.isModalOpen", true);
    },
    
    closeModel: function(component, event, helper) {
        // Set isModalOpen attribute to false  
        component.set("v.isModalOpen", false);
    },
    
    submitDetails: function(component, event, helper) {
        /*var evt = $A.get("e.force:navigateToComponent");      
        evt.setParams({
            componentDef:"c:FetchQuestions",
        });
        
        evt.fire();*/
        var selected = component.get("v.textSelected");
        component.set("v.subjectScreen",false);
        component.set("v.questionScreen",true);
        component.set("v.nextScreen",true);
        var action = component.get("c.getQuizQuestions");
        action.setParams({subject:selected});
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.quesList",response.getReturnValue());
                console.log(response.getReturnValue());
                component.set("v.question",response.getReturnValue()[0].Question__c);
                component.set("v.op1",response.getReturnValue()[0].Option_1__c);
                component.set("v.op2",response.getReturnValue()[0].Option_2__c);
                component.set("v.op3",response.getReturnValue()[0].Option_3__c);
                component.set("v.op4",response.getReturnValue()[0].Option_4__c);
                component.set("v.answer",response.getReturnValue()[0].Answer__c);
            }
            else {
                Alert("Invalid");
            }
        });
        $A.enqueueAction(action);
        
    },
    
    onGroup : function (component, event, helper) {
        var selected = event.getSource().get("v.text");
        component.set("v.textSelected",selected);
    },
    
    nextDetail : function (component, event, helper) {
        var choice;
        if(document.querySelector('input[name="choice"]:checked')!=null){
            choice = document.querySelector('input[name="choice"]:checked').value;
        }
        if(choice == component.get('v.answer')){
            component.set('v.score',component.get('v.score')+4);
        }
        if(choice != component.get('v.answer') && document.querySelector('input[name="choice"]:checked')!=null){
            component.set('v.score',component.get('v.score')-1);
        }
        var radios = document.getElementsByClassName("myRadio");
        Array.prototype.forEach.call(radios, function(element) {
           element.checked = false;
        });
        var counter = component.get("v.counter");
        component.set("v.counter",counter+1);
        if(counter==9){
            component.set("v.submitScreen",true);
            component.set("v.nextScreen",false);
        }
        component.set("v.question",component.get("v.quesList")[counter].Question__c);
        component.set("v.op1",component.get("v.quesList")[counter].Option_1__c);
        component.set("v.op2",component.get("v.quesList")[counter].Option_2__c);
        component.set("v.op3",component.get("v.quesList")[counter].Option_3__c);
        component.set("v.op4",component.get("v.quesList")[counter].Option_4__c);
        component.set("v.answer",component.get("v.answer")[counter].Answer__c);               
    },

	totalScore : function (component, event, helper) {
        var choice;
        if(document.querySelector('input[name="choice"]:checked')!=null){
            choice = document.querySelector('input[name="choice"]:checked').value;
        }
        if(choice == component.get('v.answer')){
            component.set('v.score',component.get('v.score')+4);
        }
        if(choice != component.get('v.answer') && document.querySelector('input[name="choice"]:checked')!=null){
            component.set('v.score',component.get('v.score')-1);
        }
        var radios = document.getElementsByClassName("myRadio");
        Array.prototype.forEach.call(radios, function(element) {
           element.checked = false;
        });
        component.set("v.nextScreen",false);
        component.set("v.questionScreen",false);
        component.set("v.submitScreen",false);
        component.set("v.scoreScreen",true);
    }
})