public class extrnSoap{

    public String result1 { get; set; }

    public extrnSoap() {

    }
    //public String getResult(){return null;}
    //public String result{get;set;}
    String ss='<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:fus="http://schemas.scm-rms.ca/Application/FUS"><soapenv:Header><tServiceCredential xmlns="http://schemas.scm-rms.ca/Common/Security" xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><BusinessEntityCode>123</BusinessEntityCode><Password>v4LvAJ7rKbcea9Nt</Password><RoleCode>ROLE_CLIENT</RoleCode><SponsoringBusinessEntityCode>123</SponsoringBusinessEntityCode><Username>fus.web.service@wynward.com</Username></tServiceCredential></soapenv:Header><soapenv:Body><fus:oGetFUSResultsByAddress xmlns="http://schemas.scm-rms.ca/Application/FUS"><fus:FUSRequest xmlns:fus="http://schemas.scm-rms.ca/Application/FUS" xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><fus:Language>E</fus:Language><fus:Latitude></fus:Latitude><fus:Longitude></fus:Longitude><fus:Municipality>Burlington</fus:Municipality><fus:PostalCode>L7M3M7</fus:PostalCode><fus:Province>ON</fus:Province><fus:RequestorID></fus:RequestorID><fus:RiskIdentifier></fus:RiskIdentifier><fus:StreetAddress>3202 Tania Cres</fus:StreetAddress><fus:StreetDirection></fus:StreetDirection><fus:StreetName></fus:StreetName><fus:StreetNumber></fus:StreetNumber><fus:StreetType></fus:StreetType></fus:FUSRequest></fus:oGetFUSResultsByAddress></soapenv:Body></soapenv:Envelope>';


    public void soap() {
        Http http=new Http();
        HttpRequest rqst=new HttpRequest();
        HttpResponse rsp;
        rqst.setEndPoint('http://www1.optaintel.ca/FUSServiceV2/FUSService.svc');
        rqst.setMethod('POST');
        rqst.setBody(ss);
        rqst.setHeader('Content-type','text/xml;charset=utf-8');
        rqst.setHeader('Content-Length','2900');
        rqst.setHeader('soapAction','http://schemas.scm-rms.ca/Application/FUS/IOPTAFUSService/oGetFUSResultsByAddress');
        
        rsp=http.send(rqst);
        result1=rsp.getBody();
    }


    


    


    public extrnSoap(ApexPages.StandardController controller) {

    }

}