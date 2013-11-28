public class Controller2 {
    
    public Controller2(){
        system.debug('constructing the PortalCheck to retrieve the cookieCheck ...');
        PortalCheck pc = new PortalCheck('cookieCheck');
        // cookieGot = PortalCheck.getCookie('cookieCheck').getValue();
        // system.debug('cookieGot is assigned the value:: '+PortalCheck.getCookie('cookieCheck').getValue());
    }
    
}