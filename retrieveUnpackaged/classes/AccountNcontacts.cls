public class AccountNcontacts {

    public List<Account> getAccountss() {
        List<Account> ls=new List<Account>();
        ls=[select Name from Account];
        return ls;
    }

}