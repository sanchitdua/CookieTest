public class Controller1 {
    public PageReference actionCall(){
        // ApexPages.currentPage().getCookies().get('gjajia')
        system.debug('action invoked for the cookie value:: '+ApexPages.currentPage().getCookies().get('cookieCheck'));
        PortalCheck.createNewCookie('test','cookieCheck');
        system.debug('after making the cookie:: '+ApexPages.currentPage().getCookies().get('cookieCheck'));
        return new PageReference('/apex/Page2');
    }
}