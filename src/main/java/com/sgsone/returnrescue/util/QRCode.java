package com.sgsone.returnrescue.util;


import java.io.ByteArrayOutputStream;
import java.util.Base64;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.oned.EAN13Writer;
import com.google.zxing.qrcode.QRCodeWriter;

/*
Checksum calculation for UPC-A, EAN-13 and EAN-8 Use Worth Data‟s phone number (it's not a real UPC-A code) as sample data: 18314589938 
		Assign even and odd positions, starting at the right and moving left: 

		8 3 9 9 8 5 4 1 3 8 1 odd even odd even odd even odd even odd even odd
		Starting with the leading digit, 8, take the sum of all the characters in the odd positions. 8 + 9 +8 + 4 + 3 + 1 = 33 

		Multiply the result of step 1 by 3. 

		33 x 3 = 99 

		Now take the sum of all the even-position characters. 

		3 + 9 + 5 + 1 + 8 = 26 

		Add the result in Step 2 to the result in Step 3. 

		99 + 26 = 125 

		Subtract the result from the next higher multiple of 10. 

		Next higher multiple of 10 over 125 = 130 

		130 - 125 = 5 

		5 is the Modulo-10 check character. The data to be printed becomes: 183145899385 This same formula is used for EAN-13 (using the 1-12 digits) and EAN-8 (using the 1-7 digits).
		
	    EAN-13의 바코드는 상품에 관계없이 국가코드(3자리) + 생산자번호(또는 판매자번호) 4~6자리 + 상품번호 5~3자리 + 체크섬(1자리)으로 이루어져 있다.
		대한민국의 국가코드는 880
*/


public class QRCode {
	
	public String createQRCodeImage(String text, int width, int height, int qrDarkColor, int qrLightColor) {
		
		try {
			
			QRCodeWriter qrCodeWriter = new QRCodeWriter();
			BitMatrix bitMatrix = qrCodeWriter.encode(text, BarcodeFormat.QR_CODE, width, height); //텍스트, 바코드 포맷,가로,세로
			
			MatrixToImageConfig config = new MatrixToImageConfig(qrDarkColor , qrLightColor); //진한색, 연한색
	        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	        MatrixToImageWriter.writeToStream(bitMatrix, "png", outputStream, config);
			
	        return Base64.getEncoder().encodeToString(outputStream.toByteArray());

		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			
		}
		
		return null;
	}
	
	public String createBarcodeImage(String barcode, int width, int height) {
		
		try {
									
			int chk = getBarcodeCheckSum(barcode);

		    EAN13Writer barcodeWriter = new EAN13Writer();
		    BitMatrix bitMatrix = barcodeWriter.encode("978020137962" + chk, BarcodeFormat.EAN_13, width, height);

			MatrixToImageConfig config = new MatrixToImageConfig(); //진한색, 연한색
	        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	        MatrixToImageWriter.writeToStream(bitMatrix, "png", outputStream, config);
			
	        return Base64.getEncoder().encodeToString(outputStream.toByteArray());

		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			
		}
		
		return null;
	}

	public static int getBarcodeCheckSum(CharSequence s) {
		int length = s.length();
		if (length == 0 || length > 12) {
			return -1;
		}

		int sum = 0;
		for (int i = length - 1; i >= 0; i -= 2) {
			int digit = (int) s.charAt(i) - (int) '0';
			if (digit < 0 || digit > 9) {
				return -1;
			}
			sum += digit;
		}
		sum *= 3;
		for (int i = length-2; i >= 0; i -= 2) {
			int digit = (int) s.charAt(i) - (int) '0';
			if (digit < 0 || digit > 9) {
				return -1;
			}
			sum += digit;
		}
		if(sum%10 == 0)
			return 0;
		
		return 10-(sum % 10);
	}
}
