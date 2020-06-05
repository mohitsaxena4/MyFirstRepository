public class QuizController {
   @AuraEnabled
    public static List<Quiz__c> getQuizQuestions(String subject) {
        // Getting the list of Quiz questions
                List<Quiz__c> quizList = [Select Question__c,Option_1__c,Option_2__c,Option_3__c,Option_4__c,Answer__c from Quiz__c where subject__c =: subject];
                // Returning the Quiz list
        integer currentIndex = quizList.size();
        Quiz__c temporaryValue;
        integer randomIndex;
        while (0 != currentIndex) {
            randomIndex = integer.valueOf(Math.floor(Math.random() * currentIndex));
            currentIndex -= 1;
            temporaryValue = quizList[currentIndex];
            quizList[currentIndex] = quizList[randomIndex];
            quizList[randomIndex] = temporaryValue;
        }
        return quizList;
    }
}