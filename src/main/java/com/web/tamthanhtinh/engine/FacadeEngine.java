package com.web.tamthanhtinh.engine;

public class FacadeEngine {
	
	public static final CodeEngine codengine = new CodeEngineMD5();
	public static final URLEngine urlEngine = new URLEngine();
	
	public static String generateCode(){
		return codengine.generateCode();
	}
	
	public static String getHtmlbyURL(String url){
		return urlEngine.getContentHTML(url);
	}

	

}
