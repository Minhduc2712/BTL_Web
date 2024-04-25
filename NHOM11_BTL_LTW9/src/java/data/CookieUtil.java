/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import javax.servlet.http.Cookie;

/**
 *
 * @author HP
 */
public class CookieUtil {
    public static String getCookieValue(Cookie[] cookies,String cookieName){
        String cookieValue="";
        if(cookies!=null)
        {
            for(Cookie cookie:cookies)
                if(cookie.getName().equals(cookieName))
                    cookieValue=cookie.getValue();
        }
        return cookieValue;
    }
}
