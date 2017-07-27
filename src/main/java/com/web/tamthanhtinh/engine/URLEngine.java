package com.web.tamthanhtinh.engine;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.web.tamthanhtinh.constant.WebConstant;

public class URLEngine {
	Logger logger = LoggerFactory.getLogger(URLEngine.class);
	
	public String getContentHTML(String myurl){

        URL url;

        try {
            // get URL content
        	logger.debug("========start get url========");
            String a=WebConstant.DOMAIN_WEB+myurl;
            logger.debug("URL:"+a);
            
            url = new URL(a);
            //CookieHandler.setDefault(new CookieManager(null, CookiePolicy.ACCEPT_ALL));
            CookieHandler.setDefault(new CookieManager());
            URLConnection conn = url.openConnection();

            // open the stream and put it into BufferedReader
            BufferedReader br = new BufferedReader(
                               new InputStreamReader(conn.getInputStream()));

            String inputLine;
            StringBuilder html = new StringBuilder();
            while ((inputLine = br.readLine()) != null) {
                    html.append(inputLine);
            }
            br.close();
            //System.out.println("html:"+html.toString());
            logger.debug("=========Get HTML done=======");
            return html.toString();

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
		
	}
}
