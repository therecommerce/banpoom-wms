package com.sgsone.returnrescue.service;

import com.sgsone.returnrescue.vo.ConsignmentVO;
import com.sgsone.returnrescue.vo.FileVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import org.springframework.web.multipart.MultipartFile;


public interface FileService {
	FileVO save(MultipartFile file);
	FileVO save(MultipartFile file, String name);

	FileVO selectFileDetail(long fileId);

	FileVO save(String filePath, String contentType);
	int insertProductImage(FileVO parameterVO);
}
