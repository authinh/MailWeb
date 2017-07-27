package com.web.tamthanhtinh.engine;

public interface CodeEngine {
	public String encrypt(String message);
	public String decrypt(String message);
	public String generateCode();
}
