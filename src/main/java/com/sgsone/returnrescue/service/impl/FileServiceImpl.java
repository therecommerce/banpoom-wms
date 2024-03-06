package com.sgsone.returnrescue.service.impl;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.imageio.ImageIO;

import com.sgsone.returnrescue.vo.ConsignmentVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.sgsone.returnrescue.dao.FileDao;
import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.FileService;
import com.sgsone.returnrescue.util.Properties;
import com.sgsone.returnrescue.vo.FileVO;


@Service
public class FileServiceImpl implements FileService {
	private static Logger log = LoggerFactory.getLogger(FileServiceImpl.class);

	protected Log logger = LogFactory.getLog(FileServiceImpl.class);

	@Autowired FileDao fileDao;

	@Autowired
	private ExceptionFactory exceptionFactory;

	@Override
	public FileVO save(MultipartFile file) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		FileVO fileVO = new FileVO();
		String originalFileName = file.getOriginalFilename();
		fileVO.setFile_real_name(originalFileName);
		fileVO.setFile_content_type(file.getContentType());
		fileVO.setFile_size(file.getSize());
		String[] fileNameSplit = StringUtils.split(originalFileName, ".");
		if(fileNameSplit != null){
			fileVO.setFile_ext(fileNameSplit[fileNameSplit.length - 1]);
		}
		//For not null
		fileVO.setFile_name("");
		fileVO.setFile_path("");


		Calendar cal = Calendar.getInstance();

		File dir = new File(Properties.getFile_save_root() +
				"/" +
				new SimpleDateFormat("yyyyMMdd").format(cal.getTime()));
		dir.mkdirs();

		long fileId = fileDao.insert(fileVO);

		String fileName = new SimpleDateFormat("yyyyMMddHHmm").format(cal.getTime()) + StringUtils.leftPad(String.valueOf(fileId), 10, '0') + "." + fileVO.getFile_ext();
		String fileNameWithPath = dir.getAbsolutePath() + "/" + fileName;
		File f = new File(fileNameWithPath);
		FileOutputStream fos = null;
		try {
			byte[] fileBytes = file.getBytes();
			fos = new FileOutputStream(f);
			fos.write(fileBytes);

			if(-1 != fileVO.getFile_content_type().indexOf("image")) {
				BufferedImage bi = ImageIO.read(f);
				fileVO.setFile_width(String.valueOf(bi.getWidth()));
				fileVO.setFile_height(String.valueOf(bi.getHeight()));
			}
		} catch (FileNotFoundException e) {
			exceptionFactory.commonException(e, whoAmi);
			log.error("error", e);
		} catch (IOException e) {
			exceptionFactory.commonException(e, whoAmi);
			log.error("error", e);
		} finally {
			if(fos != null) {
				try {
					fos.close();
				} catch (IOException e) {
					log.error("error", e);
				}
			}
		}


		fileVO.setFile_name(fileName);
		fileVO.setFile_path(fileNameWithPath);

		fileDao.update(fileVO);


		return fileVO;
	}


	@Override
	public FileVO save(MultipartFile file, String name) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		FileVO fileVO = new FileVO();
		String originalFileName = file.getOriginalFilename();
		fileVO.setFile_real_name(originalFileName);
		fileVO.setFile_content_type(file.getContentType());
		fileVO.setFile_size(file.getSize());
		String[] fileNameSplit = StringUtils.split(originalFileName, ".");
		if(fileNameSplit != null){
			fileVO.setFile_ext(fileNameSplit[fileNameSplit.length - 1]);
		}
		//For not null
		fileVO.setFile_name("");
		fileVO.setFile_path("");


		Calendar cal = Calendar.getInstance();

		File dir = new File(Properties.getFile_save_root() +
							"/" +
							new SimpleDateFormat("yyyyMMdd").format(cal.getTime()));
		dir.mkdirs();

		long fileId = fileDao.insert(fileVO);

		String fileName = new SimpleDateFormat("yyyyMMddHHmm").format(cal.getTime()) + StringUtils.leftPad(String.valueOf(fileId), 10, '0') + "." + fileVO.getFile_ext();
		String fileNameWithPath = dir.getAbsolutePath() + "/" + fileName;
		File f = new File(fileNameWithPath);
		FileOutputStream fos = null;
		try {
			byte[] fileBytes = file.getBytes();
			fos = new FileOutputStream(f);
			fos.write(fileBytes);

			if(-1 != fileVO.getFile_content_type().indexOf("image")) {
				BufferedImage bi = ImageIO.read(f);
				fileVO.setFile_width(String.valueOf(bi.getWidth()));
				fileVO.setFile_height(String.valueOf(bi.getHeight()));
			}
		} catch (FileNotFoundException e) {
			exceptionFactory.commonException(e, whoAmi);
			log.error("error", e);
		} catch (IOException e) {
			exceptionFactory.commonException(e, whoAmi);
			log.error("error", e);
		} finally {
			if(fos != null) {
				try {
					fos.close();
				} catch (IOException e) {
					log.error("error", e);
				}
			}
		}


		fileVO.setFile_name(fileName);
		fileVO.setFile_path(fileNameWithPath);

		fileDao.update(fileVO);


		return fileVO;
	}

	@Override
	public FileVO save(String filePath, String contentType) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
	    File file = new File(filePath);
		DiskFileItem fileItem = new DiskFileItem("file", contentType, false, file.getName(), (int) file.length() , file.getParentFile());
		InputStream input = null;
		try {
		    input = new FileInputStream(file);
		    OutputStream os = fileItem.getOutputStream();
		    IOUtils.copy(input, os);
		    // Or faster..
		    // IOUtils.copy(new FileInputStream(file), fileItem.getOutputStream());
		} catch (IOException ex) {
		    // do something.
			exceptionFactory.commonException(ex, whoAmi);
			ex.printStackTrace();
			log.error("error", ex);
		} finally {
			try {
				input.close();
			} catch(IOException io) {
				exceptionFactory.commonException(io, whoAmi);
				io.printStackTrace();
				log.error("error", io);
			}
		}

		MultipartFile multipartFile = new CommonsMultipartFile(fileItem);

		return save(multipartFile, null);
	}


	@Override
	public FileVO selectFileDetail(long fileId) {
		return fileDao.selectFile(fileId);
	}

	@Override
	public  int insertProductImage(FileVO parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			return fileDao.insertProductImage(parameterVO);
		} catch(Exception e) {
			exceptionFactory.commonException(e, whoAmi);
		}
		return -1;
	}
}
