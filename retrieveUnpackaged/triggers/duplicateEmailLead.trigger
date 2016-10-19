trigger duplicateEmailLead on Lead (before insert,before update) {

List<Lead> ld=new List<Lead>();
    ld=[select Name,Company,Status,Email from Lead];
    try{    
    for(Lead ll:trigger.new){
            for(Lead llOld:ld){
              if(ll.Email!=null){
                if(ll.Email==llOld.Email){
                    ll.Email.addError('invalid email');
                }
              }
                else{
                    ll.Email.addError('Enter email');
                
            }
        }
    }
    }
    Catch(Exception ex){
        for(Lead ll1:trigger.new){
            ll1.addError( ex);
        }
    }
}