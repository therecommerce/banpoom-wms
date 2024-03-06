package com.sgsone.returnrescue.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.BaseVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class ZipUtil {
	@Autowired
	private ExceptionFactory exceptionFactory;
	
	private static Logger log = LoggerFactory.getLogger(ZipUtil.class);
	public static void unzip(String zipFileName, String directory) throws Throwable {
		File zipFile = new File(FileUtil.cleanString(zipFileName));
		FileInputStream fis = null;
		ZipInputStream zis = null;
		ZipEntry zipentry = null;
		
		try {
			fis = new FileInputStream(zipFile);
			zis = new ZipInputStream(fis);
			while ((zipentry = zis.getNextEntry()) != null) {
				String filename = FileUtil.cleanString(zipentry.getName());
				File file = new File(FileUtil.cleanString(directory), filename);
				if (zipentry.isDirectory()) {
					file.mkdirs();
				} else {
					createFile(file, zis);
				}
			}
		} catch (IOException e) {
			Map<String, String> errorMap = new HashMap<String, String>();
	    	errorMap.put("message", "Y");
	        BaseVO.setErrorMap(errorMap);
			e.printStackTrace();
		} finally {
			try {
				if (zis != null) {
					zis.close();
				}
				if (fis != null) {
					fis.close();
				}
			}catch (IOException e) {
				Map<String, String> errorMap = new HashMap<String, String>();
		    	errorMap.put("message", "Y");
		        BaseVO.setErrorMap(errorMap);
				log.error("error", e);
			}
			
		}
	}

	private static void createFile(File file, ZipInputStream zis) throws Throwable {
		
		if(file == null)
			return ;

		
		File parentDir = new File(FileUtil.cleanString(file.getParent()));
		if (!parentDir.exists()) {
			parentDir.mkdirs();
		}
				
		try (FileOutputStream fos = new FileOutputStream(file)) {
			byte[] buffer = new byte[256];
			int size = 0;
			while ((size = zis.read(buffer)) > 0) {
				fos.write(buffer, 0, size);
			}
		} catch (IOException e) {
			Map<String, String> errorMap = new HashMap<String, String>();
	    	errorMap.put("message", "Y");
	        BaseVO.setErrorMap(errorMap);
			e.printStackTrace();
		}
	}

	/**
     * 디렉토리 및 파일을 압축한다.
     * @param path 압축할 디렉토리 및 파일
     * @param toPath 압축파일을 생성할 경로
     * @param fileName 압축파일의 이름
     */
    public static boolean zip(String fromPath, String toPath, String fileName) {
 
        File dir = new File(fromPath);
        String[] list = dir.list();
        String _path;
        ZipOutputStream zip_out = null;
 
        if (!dir.canRead() || !dir.canWrite())
            return false;
 
        int len = list.length;
 
        if (fromPath.charAt(fromPath.length() - 1) != '/')
            _path = fromPath + "/";
        else
            _path = fromPath;
 
        try {
            zip_out = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(toPath+"/"+fileName), 2048));
 
            for (int i = 0; i < len; i++) {
            	zip_folder(fromPath, "",new File(_path + list[i]), zip_out);
            }
            zip_out.close();
 
        } catch (FileNotFoundException e) {
        	Map<String, String> errorMap = new HashMap<String, String>();
        	errorMap.put("message", "Y");
            BaseVO.setErrorMap(errorMap);
        	e.printStackTrace();
            return false;

 
        } catch (IOException e) {
        	Map<String, String> errorMap = new HashMap<String, String>();
        	errorMap.put("message", "Y");
            BaseVO.setErrorMap(errorMap);
        	e.printStackTrace();
            return false;

        } finally {
        	try {
        		zip_out.close();
        	}catch(IOException e) {
        		Map<String, String> errorMap = new HashMap<String, String>();
            	errorMap.put("message", "Y");
                BaseVO.setErrorMap(errorMap);
        		e.printStackTrace();
        		log.error("error", e);
        	}
        }
        return true;
    }

    /**
     * ZipOutputStream를 넘겨 받아서 하나의 압축파일로 만든다.
     * @param parent 상위폴더명
     * @param file 압축할 파일
     * @param zout 압축전체스트림
     * @throws IOException
     */
    private static void zip_folder(String fromPath, String parent, File file, ZipOutputStream zout) throws IOException {
        byte[] data = new byte[2048];
        int read;
        BufferedInputStream instream = null;
        if (file.isFile()) {
        	try {
        		ZipEntry entry = new ZipEntry(parent + file.getName());
                zout.putNextEntry(entry);
                instream = new BufferedInputStream(new FileInputStream(file));
     
                while ((read = instream.read(data, 0, 2048)) != -1)
                    zout.write(data, 0, read);
     
                zout.flush();
                zout.closeEntry();
                instream.close();
        	} catch (IOException e) {
        		Map<String, String> errorMap = new HashMap<String, String>();
            	errorMap.put("message", "Y");
                BaseVO.setErrorMap(errorMap);
        		e.printStackTrace();
        		log.error("error", e);
        	} finally {
        		try {
        			instream.close();
        		}catch (IOException io) {
        			Map<String, String> errorMap = new HashMap<String, String>();
        	    	errorMap.put("message", "Y");
        	        BaseVO.setErrorMap(errorMap);
        			io.printStackTrace();
        			log.error("error", io);
        		}
        		
        	}
        } else if (file.isDirectory()) {
            String parentString = file.getPath().replace(fromPath,"");
            parentString = parentString.substring(0,parentString.length() - file.getName().length());
            ZipEntry entry = new ZipEntry(parentString+file.getName()+"/");
            zout.putNextEntry(entry);
 
            String[] list = file.list();
            if (list != null) {
                int len = list.length;
                for (int i = 0; i < len; i++) {
                    zip_folder(fromPath, entry.getName(),new File(file.getPath() + "/" + list[i]), zout);
                }
            }
        }
    }
}
