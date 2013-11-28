public class PortalCheck{
    String cookieName;
    public PortalCheck(String cookieName){
        this.cookieName = cookieName;
        Cookie c = PortalCheck.getCookie(cookieName);
        system.debug('thisCookie = '+String.valueOf(c));
    }
    
    private static Cookie getCookie(string cookieName){
        system.debug('&&&&&&&&    Portal.getCookie('+cookieName+')    &&&&&&&&');
        
        Cookie thisCookie=ApexPages.currentPage().getCookies().get(cookieName);
        system.debug('&&&..... thisCookie = '+string.valueOf(thisCookie));
        
        return thisCookie;
    }//END getCookie()
    
    // @params
    /* 'cookieCheck',
       _,
       86400,
       false */
    private static void createCookie(string cookieName,string cookieValue,integer maxAgeInSeconds,boolean isHttpsOnly){
        ApexPages.currentPage().setCookies(new Cookie[]{new Cookie(
            cookieName,         // cookie Name
            cookieValue,        // value
            '.force.',          // domain
            maxAgeInSeconds,    // maxAge (in seconds); -1=SessionCookie
            isHttpsOnly         // isSecure  <------------------------------************ CHANGE ME ********************
        )});
    }//END createCookie(string cookieName,string cookieValue,integer maxAgeInSeconds,boolean isHttpsOnly)
    
     public static void createNewCookie(String user,String cookieName){
        //system.debug('@@@@@@@@  Portal.createNewSession('+string.valueof(user)+','+cookieName+','+sessionRecTypeId+') @@@@@@@@');
        
       
        // create cookie
        PortalCheck.createCookie(cookieName,user+','+'123',86400,true);
     }
}