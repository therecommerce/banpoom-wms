package com.sgsone.returnrescue.util;

import java.security.spec.AlgorithmParameterSpec;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class EncryptUtil {
	
	private static Log logger = LogFactory.getLog(EncryptUtil.class);


	private static final String secreteKey = "4C494D452D4920496E646F6F72204C6F";
	private static byte[] ivBytes = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
	
    public static String encodeAES256( String str )
    {    	
    	if(StringUtils.isEmpty(str))
    		return "";
    	
        try {
            byte[] textBytes = str.getBytes( "UTF-8" );
            AlgorithmParameterSpec ivSpec = new IvParameterSpec(ivBytes);
            SecretKeySpec newKey = new SecretKeySpec( secreteKey.getBytes( "UTF-8" ), "AES" );
            Cipher cipher = null;
            cipher = Cipher.getInstance( "AES/CBC/PKCS5Padding" );
            cipher.init( Cipher.ENCRYPT_MODE, newKey, ivSpec );
            
        	logger.debug("encodeAES256-12222 = " + str);

            return Base64.encodeBase64String( cipher.doFinal( textBytes ) );
        } catch ( Exception e ) {
        	logger.error(e.getMessage());
        }
        return "";
    }
    
    
  //복호화
    public static String decodeAES256(String str)  {
    	
    	try {
	        byte[] keyData = secreteKey.getBytes();
	        SecretKey secureKey = new SecretKeySpec(keyData, "AES");
	        Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
	        c.init(Cipher.DECRYPT_MODE, secureKey, new IvParameterSpec(ivBytes));
	
	        byte[] byteStr = Base64.decodeBase64(str.getBytes());
	
	        return new String(c.doFinal(byteStr), "UTF-8");
    	}
        catch (Exception e) {
        	logger.error(e.getMessage());
        }
        return "";
    }
}
