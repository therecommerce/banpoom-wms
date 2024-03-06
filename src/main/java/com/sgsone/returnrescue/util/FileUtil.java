package com.sgsone.returnrescue.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FileUtil {
	private static Logger logger = LoggerFactory.getLogger(FileUtil.class);
	
	public static boolean fileCopy(String inFileName, String outFileName) {
		FileInputStream fis = null;
		FileOutputStream fos = null;
		try {
			fis = new FileInputStream(inFileName);
			fos = new FileOutputStream(outFileName);

			int data = 0;
			while ((data = fis.read()) != -1) {
				fos.write(data);
			}
			fis.close();
			fos.close();
			return true;

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				fis.close();
				fos.close();
			}catch(IOException ie) {
				logger.error("error", ie);
			}
		}
		return false;
	}
	
	public static boolean deleteDirectory(String dirname) {
		return deleteDirectory(new File(dirname));
	}
	
	public static boolean deleteDirectory(File path) {
		
		if (!path.exists()) {
			return false;
		}
		File[] files = path.listFiles();
		for (File file : files) {
			if (file.isDirectory()) {
				deleteDirectory(file);
			} else {
				file.delete();
			}
		}
		return path.delete();
	}
	
	public static void copyDirectory(String src, String dest) throws IOException {
		copyDirectory(Paths.get(src), Paths.get(dest));
	}

	
	public static void copyDirectory(Path src, Path dest) throws IOException {
	    Files.walk(src)
	        .forEach(source -> copyFile(source, dest.resolve(src.relativize(source))));
	}

	public static void copyFile(String src, String dest) {
		copyFile(Paths.get(src), Paths.get(dest));
	}
	
	public static void copyFile(Path source, Path dest) {
	    try {
	        Files.copy(source, dest, StandardCopyOption.REPLACE_EXISTING);
	    } catch (IOException e) {
	    	e.printStackTrace();
	    }
	}
	
	public static String checkPathValidation(String filePath) {
		if (filePath == null)
	        return null;

		String filePath1 = filePath.replaceAll("/","");
		String filePath2 = filePath1.replaceAll ("\\\\","");
		String filePath3 = filePath2.replaceAll ("\\.","");
		String filePath4 = filePath3.replaceAll ("&","");
		return filePath4;
	}
	
	public static String cleanString(String aString) {
		if (aString == null) {
			return null;
		}
		StringBuffer cleanString = new StringBuffer("");
		for (int i = 0; i < aString.length(); ++i) {
			cleanString.append(cleanChar(aString.charAt(i)));
		}
		return cleanString.toString();
	}

	private static char cleanChar(char aChar) { 
		// 0 - 9 
		for (int i = 48; i < 58; ++i) { if (aChar == i){ return (char) i; } } 
		
		// 'A' - 'Z' 
		for (int i = 65; i < 91; ++i) { if (aChar == i){ return (char) i; } } 
		
		// 'a' - 'z' 
		for (int i = 97; i < 123; ++i) { if (aChar == i){ return (char) i; } } 
		
		// other valid characters 
		return getSpecialLetter(aChar); 
	} 
	


	private static char getSpecialLetter(char aChar){
		
		switch (aChar) {
	
	        case '/':
	            return '/';
	        case '.':
	            return '.';
	        case '-':
	            return '-';
	        case '_':
	            return '_';
	        case ' ':
	            return ' ';
	        case ':':
	            return ':';
	        case '&':
	            return '&';
	        case '@':
	            return '@';
	        default:
	        	return '%';
	
		}
	
	}
}

