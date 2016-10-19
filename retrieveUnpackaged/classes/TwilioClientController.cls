public class TwilioClientController {

    


    public String msgBody { get; set; }

    public String sendMsgTO { get; set; }
    
    
        public PageReference sendMessage() {
        String ACCOUNT_SID = 'AC5333cb17c40074b7215aa8ea48d14372';
        String AUTH_TOKEN = '577cb6617b64c5f1968a1a0c645ac7a5';
        TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);

        Map<String,String> properties = new Map<String,String> {
            'To'   => sendMsgTO ,
            'From' => '+13098073102',
            'Body' => msgBody 
        };
        TwilioMessage message = client.getAccount().getMessages().create(properties);
        return null;
    }
       
        private TwilioCapability capability;
        public String uname {get; set;}
        
        //****** Initalizer - Set up Twilio Capability Token - requires ApplicationSid__c to be set
        public TwilioClientController() {
            capability = TwilioAPI.createCapability();
            capability.allowClientOutgoing(
                TwilioAPI.getTwilioConfig().ApplicationSid__c,null);
                capability.allowClientIncoming('salesforce_agent');
        }
        
        //******* {!Token} method returns a string based capability token
        public String getToken() { return capability.generateToken(); }
        
        //******* Pass in a parameter PhoneNumber - and this will Dial the phone number
        public String getDial() {
            String callerid = TwilioAPI.getTwilioConfig().CallerId__c;        
            //phone number will be passed as http query parameter
            String PhoneNumber = System.currentPageReference().getParameters().get('PhoneNumber');
            TwilioTwiML.Response res = new TwilioTwiML.Response();
            
            TwilioTwiML.Dial d = new TwilioTwiML.Dial(PhoneNumber);
            d.setCallerId(callerid);
            res.append(d);
            return res.toXML();
        }
    }