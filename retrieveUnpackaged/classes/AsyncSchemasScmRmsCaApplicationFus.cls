//Generated by wsdl2apex

public class AsyncSchemasScmRmsCaApplicationFus {
    public class oPingResponse_elementFuture extends System.WebServiceCalloutFuture {
        public schemasScmRmsCaCommonSecurity.tServiceCredential getValue() {
            schemasScmRmsCaApplicationFus.oPingResponse_element response = (schemasScmRmsCaApplicationFus.oPingResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.oPingResult;
        }
    }
    public class oGetFUSResultsByAddressResponse_elementFuture extends System.WebServiceCalloutFuture {
        public schemasScmRmsCaApplicationFus.tResponse_oGetFUSResultsByAddressv2 getValue() {
            schemasScmRmsCaApplicationFus.oGetFUSResultsByAddressResponse_element response = (schemasScmRmsCaApplicationFus.oGetFUSResultsByAddressResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.oGetFUSResultsByAddressResult;
        }
    }
    public class oGetFUSLatLngResultByAddressResponse_elementFuture extends System.WebServiceCalloutFuture {
        public schemasScmRmsCaApplicationFus.tResponse_oGetFUSLatLngResultByAddress getValue() {
            schemasScmRmsCaApplicationFus.oGetFUSLatLngResultByAddressResponse_element response = (schemasScmRmsCaApplicationFus.oGetFUSLatLngResultByAddressResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.oGetFUSLatLngResultByAddressResult;
        }
    }
}