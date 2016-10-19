global with sharing class sendMessagesTwilio {
String ACCOUNT_SID = 'AC5333cb17c40074b7215aa8ea48d14372';
String AUTH_TOKEN = '577cb6617b64c5f1968a1a0c645ac7a5';
TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);

Map<String,String> properties = new Map<String,String> {
            'To'   => '+919988540765',
            'From' => '+13098073102',
            'Body' => 'Hello!'
    };
TwilioMessage message = client.getAccount().getMessages().create(properties);

}