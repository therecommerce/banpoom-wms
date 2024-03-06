package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.vo.ConsignmentVO;
import com.sgsone.returnrescue.vo.ProductListVO;
import org.apache.commons.math3.stat.descriptive.summary.Product;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sgsone.returnrescue.vo.FileVO;


@Repository
public class FileDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public long insert(FileVO fileVO){
		long fileId;

		sqlSessionTemplate.insert("file.insertFile", fileVO);
		fileId = fileVO.getFile_id();

		return fileId;
	}

	public void update(FileVO fileVO){
		sqlSessionTemplate.update("file.updateFile", fileVO);
	}

	public FileVO selectFile(long fileId) {
		return sqlSessionTemplate.selectOne("file.selectFile", fileId);
	}

	public int insertProductImage(FileVO parameterVO) {
		return sqlSessionTemplate.insert("file.insertProductImage", parameterVO);
	}
}
