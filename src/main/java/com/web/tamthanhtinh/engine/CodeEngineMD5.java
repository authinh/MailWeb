package com.web.tamthanhtinh.engine;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

import javax.crypto.spec.SecretKeySpec;

public class CodeEngineMD5 implements CodeEngine{

	@Override
	public String encrypt(String message) {
		String result = "";
		MessageDigest digest;
		try {
			digest = MessageDigest.getInstance("MD5");
			digest.update(message.getBytes());
			BigInteger bigInteger = new BigInteger(1,digest.digest());
			result = bigInteger.toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return result;
		
	}

	@Override
	public String decrypt(String message) {
		return null;
	}

	@Override
	public String generateCode() {
		Date date = new Date();
		return encrypt(date.getTime()+"");
	}

	
    /* Encryption Method */
    

	
}
