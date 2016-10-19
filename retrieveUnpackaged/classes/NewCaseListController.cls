public class NewCaseListController {

   
    public List<Case> getNewCases() {
        List<Case> result=Database.query('select id , caseNumber from Case');
        return result;
    }

}