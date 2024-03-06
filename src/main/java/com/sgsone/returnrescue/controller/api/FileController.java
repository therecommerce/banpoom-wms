package com.sgsone.returnrescue.controller.api;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.FileService;
import com.sgsone.returnrescue.util.FileUtil;
import com.sgsone.returnrescue.vo.FileVO;


@Controller
@RequestMapping("/file")
public class FileController {
	@Autowired private FileService fileService;


	protected Log logger = LogFactory.getLog(FileController.class);

	@Autowired
	private ExceptionFactory exceptionFactory;


	@RequestMapping("/down/{file_id}")
	@ResponseBody
	public ResponseEntity<FileSystemResource> down(HttpServletRequest request, @PathVariable("file_id") String fileId){

		FileVO fileVO = fileService.selectFileDetail(Integer.valueOf(fileId));

		File file = new File(FileUtil.cleanString(fileVO.getFile_path()));

		return downloadContent(fileVO, file, true);
	}


	@RequestMapping("/down/image/{file_id}")
	@ResponseBody
	public ResponseEntity<FileSystemResource> image(@PathVariable("file_id") String fileId){

		FileVO fileVO = fileService.selectFileDetail(Integer.valueOf(fileId));

		File file = new File(FileUtil.cleanString(fileVO.getFile_path()));
		return downloadContent(fileVO, file, false);
	}


	private ResponseEntity<FileSystemResource> downloadContent(FileVO fileVO, File file, boolean isDownload) {
		HttpHeaders header = new HttpHeaders();
		header.setContentLength(fileVO.getFile_size());

		String fileName = "";
		try {
			fileName = URLEncoder.encode(fileVO.getFile_real_name(), "UTF-8");
			fileName = URLDecoder.decode(fileName, "ISO8859_1");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		if(isDownload){
			header.set("Content-disposition", "attachment; filename="+ FileUtil.cleanString(fileName));
		}

		String ext = StringUtils.lowerCase(fileVO.getFile_ext());

		if("jpeg".equals(ext) || "jpg".equals(ext)){
			header.setContentType(MediaType.IMAGE_JPEG);
		}else if("png".equals(ext)){
			header.setContentType(MediaType.IMAGE_PNG);
		}else if("gif".equals(ext)){
			header.setContentType(MediaType.IMAGE_GIF);
		}else if("zip".equals(ext)){
			header.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		}
		else{
			header.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			//header.set("Content-Type", fileVO.getFile_content_type());
		}

		ResponseEntity<FileSystemResource> entity = null;

		if(file.exists()){

			FileSystemResource fSysResource = new FileSystemResource(file);

			if(fSysResource != null)
				entity = new ResponseEntity<FileSystemResource>(fSysResource, header, HttpStatus.OK);
		}
		return entity;
	}

	@RequestMapping(value = "/upload", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
    public String upload(MultipartHttpServletRequest mtfRequest) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try{

			String userName = mtfRequest.getParameter("UserName");
			String authId = mtfRequest.getParameter("AuthId");
			String authToken = mtfRequest.getParameter("AuthToken");
	        List<MultipartFile> checkFileList = mtfRequest.getFiles("files");
	        for (MultipartFile mf : checkFileList) {
	        	if(mf.getSize() > 0){
	        		FileVO addFileVO = new FileVO();
	        		addFileVO = fileService.save(mf, userName);

//	        		XBodyVO parameterVO = new XBodyVO();
//	        		parameterVO.setFile_id(String.valueOf(addFileVO.getFile_id()));
//	        		parameterVO.setXbody_id(authId);
//
//	        		if(!StringUtils.isEmpty(userName)) {
//	        			String nameArr[] = userName.split("_");
//	        			if(nameArr.length == 2) {
//	        				parameterVO.setXuser_id(nameArr[0]);
//	        			}
//	        		}
//
//	        		if(!StringUtils.isEmpty(addFileVO.getFile_real_name())) {
//	        			String nameArr[] = addFileVO.getFile_real_name().split("\\.");
//	        			if(nameArr.length == 2) {
//	        				String nameArr2[] = nameArr[0].split("_");
//
//	        				parameterVO.setReport_id(nameArr2[0]);
//	        				parameterVO.setReg_dt(nameArr2[1]);
//	        				parameterVO.setReport_type(nameArr2[2]);
//	        			}
//	        		}
//
//	        		xBodyService.insertCollectXbody(parameterVO);
	        	}
	        }



		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return "Failure";
		}

        return "Success";
    }
}
