global class oauthtestHandler implements Auth.RegistrationHandler
{
    
      global User createUser(Id portalId, Auth.UserData data)
      {
          User user = [select id from user where email= 'dddeepanker28@gmail.com' limit 1];
          return user;         
      }    
      global void updateUser(Id userid, Id portalid, Auth.UserData data)
      {
                
      }
      
            
}