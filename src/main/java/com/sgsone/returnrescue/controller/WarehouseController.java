package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.FileService;
import com.sgsone.returnrescue.service.HistoryService;
import com.sgsone.returnrescue.service.WarehouseService;
import com.sgsone.returnrescue.util.Utils;
import com.sgsone.returnrescue.vo.*;
import com.sgsone.returnrescue.vo.rest.RestHeader;
import com.sgsone.returnrescue.vo.rest.RestResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Locale;

@Controller
public class WarehouseController {

	protected Log logger = LogFactory.getLog(WarehouseController.class);

	@Autowired
	private ExceptionFactory exceptionFactory;
	
	@Autowired
	private WarehouseService warehouseService;

	@Autowired
	private HistoryService historyService;

	@Autowired
	private FileService fileService;

	//입고상품조회
	@RequestMapping(value = "/product-info/stock", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse selectProductInfo(@RequestBody WarehouseVO parameterVO, HttpSession session, HttpServletRequest request) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}
		if(parameterVO.getProduct_id() == null && parameterVO.getTracking_no() == null) {
			header.setResult_code("Fail");
			header.setResult_msg("검색 조건이 없습니다.");
			restResp.setHeader(header);
			return restResp;
		}

		try {
			WarehouseVO resultVO = warehouseService.selectStockProductInfo(parameterVO);
			if (resultVO == null) {
				if(parameterVO.getTracking_no() != null) {
					header.setResult_msg("해당 운송장 번호로 조회된 상품이 없습니다.");
					header.setResult_code("fail");
					restResp.setHeader(header);
				} else {
					header.setResult_msg("해당 상품 번호로 조회된 상품이 없습니다.");
					header.setResult_code("fail");
					restResp.setHeader(header);
				}
				return restResp;
			}
			
			InspectionVO inspParam = new InspectionVO();
			inspParam.setAccount_id(loginVO.getAccount_id());
			inspParam.setProduct_id(resultVO.getProduct_id());		
			warehouseService.insertProductInspection(inspParam);
						
			header.setResult_code("Success");
			restResp.setHeader(header);
			restResp.setBody(resultVO);
			return restResp;
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
	}
	
	//출고상품 조회 
	@RequestMapping(value = "/product-info/release", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse productInfoRelease(@RequestBody WarehouseVO parameterVO, HttpSession session, HttpServletRequest request) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}
		if(parameterVO.getProduct_id() == null && parameterVO.getTracking_no() == null) {
			header.setResult_code("Fail");
			header.setResult_msg("검색 조건이 없습니다.");
			restResp.setHeader(header);
			return restResp;
		}

		try {
			WarehouseVO resultVO = warehouseService.selectReleaseProductInfo(parameterVO);
			if (resultVO == null) {
				if(parameterVO.getTracking_no() != null) {
					header.setResult_msg("해당 운송장 번호로 조회된 상품이 없습니다.");
					header.setResult_code("fail");
					restResp.setHeader(header);
				} else {
					header.setResult_msg("해당 상품 번호로 조회된 상품이 없습니다.");
					header.setResult_code("fail");
					restResp.setHeader(header);
				}
				return restResp;
			}
									
			header.setResult_code("Success");
			restResp.setHeader(header);
			restResp.setBody(resultVO);
			return restResp;
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
	}

	
	@RequestMapping(value = "/product-inspection", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse productInspection(@RequestBody InspectionVO parameterVO,HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}

		parameterVO.setAccount_id(loginVO.getAccount_id());

		try {
			
			parameterVO.setAccount_id(loginVO.getAccount_id());

			if("A".equals(parameterVO.getProduct_grade()) || "B".equals(parameterVO.getProduct_grade()) ||
			   "C".equals(parameterVO.getProduct_grade())) {
				warehouseService.updateProductPriceByGrade(parameterVO);
			}
			
			if (parameterVO.getProduct_id() != null) {
				HistoryVO historyVO = new HistoryVO();
				historyVO.setProduct_id(parameterVO.getProduct_id());
				historyVO.setState("최종 검수 대기");
				historyService.insertProductHistory(historyVO);
				
				parameterVO.setCheck_yn("Y");
				warehouseService.updateProductInspection(parameterVO);
				header.setResult_code("Success");
				
				if(parameterVO.getProduct_id() != null) {
					
					//Barcode업데이트
					if(parameterVO.getProduct_id().length() == 13) {
						warehouseService.updateProductBarcode(parameterVO);
					}
				}

			} else {
				header.setResult_code("Fail");
				header.setResult_msg("검수 정보 입력 실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
		
		restResp.setHeader(header);
		return restResp;

	}
	
	@RequestMapping(value = "/product-inspection/picture", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse uploadPicture(@RequestParam(value="files") List<MultipartFile> files,
							   @RequestParam(value="product_id") String product_id,
							   @RequestParam(value="file_types", required = false) List<String> file_state,
							   HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}

		try{

			InspectionVO parameterVO = new InspectionVO();
			parameterVO.setAccount_id(loginVO.getAccount_id());
			parameterVO.setProduct_id(product_id);

			if (parameterVO.getProduct_id() != null) {
				// HistoryVO historyVO = new HistoryVO();
				// historyVO.setProduct_id(parameterVO.getProduct_id());
				// historyVO.setState("최종 검수 대기");
				// historyService.insertProductHistory(historyVO);
				int resultCnt = 0;
				for (int i = 0; i < files.size(); i++) {
					if (files.get(i).getSize() > 0) {
						FileVO addFileVO = new FileVO();
						addFileVO = fileService.save(files.get(i));

						parameterVO.setFile_id(addFileVO.getFile_id());
						parameterVO.setFile_state(file_state.get(i));
						warehouseService.insertInspectionFile(parameterVO);
						resultCnt++;
					}
				}
				if (resultCnt != 0) {
					header.setResult_code("Success");
					header.setResult_msg(resultCnt + "개의 파일 업로드 완료");
				} else {
					header.setResult_code("Fail");
					header.setResult_msg("파일 업로드 실패");
				}
								
			} else {
				header.setResult_code("Fail");
				header.setResult_msg("검수 정보 입력 실패");
			}

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
		restResp.setBody(new InspectionVO());
		restResp.setHeader(header);
		return restResp;
	}


	@RequestMapping(value = "/product-inspection/video", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse uploadVideo(@RequestParam(value="files") List<MultipartFile> files,
							   @RequestParam(value="product_id") String product_id,
							   HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}

		try{
			InspectionVO parameterVO = new InspectionVO();
			InspectionVO resultVO= null;
			parameterVO.setProduct_id(product_id);
			parameterVO.setAccount_id(loginVO.getAccount_id());
					
			int resultCnt = 0;
			for (int i = 0; i < files.size(); i++) {
				if (files.get(i).getSize() > 0) {
					FileVO addFileVO = new FileVO();
					addFileVO = fileService.save(files.get(i));

					parameterVO.setFile_id(addFileVO.getFile_id());
					parameterVO.setFile_state("영상");
					warehouseService.insertInspectionFile(parameterVO);
					resultCnt++;
				}
			}
			if (resultCnt != 0) {
				header.setResult_code("Success");
				header.setResult_msg(resultCnt + "개의 파일 업로드 완료");
			} else {
				header.setResult_code("Fail");
				header.setResult_msg("파일 업로드 실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
		restResp.setHeader(header);
		return restResp;
	}

	@RequestMapping(value = "/product-inspection/tempDelete", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse upload(@RequestBody InspectionVO inspectionVO,HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}

		try{
			warehouseService.deleteInspection(inspectionVO);
			header.setResult_code("Success");
			header.setResult_msg("삭제 성공");
			restResp.setHeader(header);
			return restResp;
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
	}


	@RequestMapping(value = "/product-inspection/state", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse selectProductInspectionState(@RequestBody InspectionVO parameterVO, HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}
		try {
			
			if(StringUtils.isEmpty(parameterVO.getProduct_id())) {
				parameterVO.setVideo_state("S"); //Product_id가 없는 경우는 아직 영상촬영이 시작되지 않은 경우임. 
			}
			parameterVO.setAccount_id(loginVO.getAccount_id());
						
			InspectionVO resultVO = warehouseService.selectProductInspectionState(parameterVO);
			if (resultVO == null) {
				header.setResult_msg("해당 아이디로 조회된 데이터가 없습니다.");
				header.setResult_code("fail");
				restResp.setHeader(header);
				return restResp;
			}
			resultVO.setAccount_id(null);
			resultVO.setAes_key(null);
			header.setResult_code("Success");
			restResp.setHeader(header);
			restResp.setBody(resultVO);
			return restResp;
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
	}

	@RequestMapping(value = "/product-inspection/state-change", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse updateProductInspectionState(@RequestBody InspectionVO parameterVO,HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}

		parameterVO.setAccount_id(loginVO.getAccount_id());

		try {
			
			if("영상촬영시작".equals(parameterVO.getState())) {
				parameterVO.setVideo_state("S");
				
				HistoryVO historyVO = new HistoryVO();
				historyVO.setProduct_id(parameterVO.getProduct_id());
				historyVO.setState("도착/입고");
				historyService.insertProductHistory(historyVO);			

			} else if("영상촬영종료".equals(parameterVO.getState())) {
				parameterVO.setVideo_state("F");
			} else if("제품촬영시작".equals(parameterVO.getState())) {
				parameterVO.setPicture_state("S");
			} else if("제품촬영종료".equals(parameterVO.getState())) {
				parameterVO.setPicture_state("F");
			}
			
				
			warehouseService.updateProductInspection(parameterVO);
			header.setResult_code("Success");
			header.setResult_msg("상태 변경 성공");
			restResp.setHeader(header);
			return restResp;
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
	}


	@RequestMapping(value = "/product-release/state", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse selectProductReleaseState(@RequestBody InventoryVO parameterVO, HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}
		try {
			InventoryVO resultVO = null;
			parameterVO.setAccount_id(loginVO.getAccount_id());
			
			if(StringUtils.isEmpty(parameterVO.getTracking_no())) {
				parameterVO.setState("S"); //Product_id가 없는 경우는 아직 영상촬영이 시작되지 않은 경우임. 
			}

			
			resultVO = warehouseService.selectProductReleaseState(parameterVO);
			if (resultVO == null) {
				header.setResult_msg("해당 아이디로 조회된 데이터가 없습니다.");
				header.setResult_code("fail");
				restResp.setHeader(header);
				return restResp;
			}
			resultVO.setAccount_id(null);
			resultVO.setAes_key(null);
			header.setResult_code("Success");
			restResp.setHeader(header);
			restResp.setBody(resultVO);
			return restResp;
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
	}

	@RequestMapping(value = "/product-release/insert", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse insertProductRelease(@RequestBody InventoryVO parameterVO,HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}

		parameterVO.setAccount_id(loginVO.getAccount_id());

		try{
			warehouseService.insertProductRelease(parameterVO);
			header.setResult_code("Success");
			header.setResult_msg("상태 변경 성공");
			restResp.setHeader(header);
			return restResp;
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
	}
	
	@RequestMapping(value = "/product-release-state/insert", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse insertProductReleaseState(@RequestBody InventoryVO parameterVO,HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}

		parameterVO.setAccount_id(loginVO.getAccount_id());

		try{
			warehouseService.insertProductReleaseState(parameterVO);
			header.setResult_code("Success");
			header.setResult_msg("상태 변경 성공");
			restResp.setHeader(header);
			return restResp;
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
	}



	@RequestMapping(value = "/product-release/state-change", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse productReleaseStateChange(@RequestBody InventoryVO parameterVO,HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}
		
		if(parameterVO.getProduct_id() == null && parameterVO.getTracking_no() == null) {
			header.setResult_code("Fail");
			header.setResult_msg("업데이트 조건이 없습니다.");
			restResp.setHeader(header);
			return restResp;
		}


		parameterVO.setAccount_id(loginVO.getAccount_id());

		try{
			
			if("F".equals(parameterVO.getState())) {
				
				HistoryVO historyVO = new HistoryVO();
				historyVO.setProduct_id(parameterVO.getProduct_id());
				historyVO.setState("배송중");
				historyService.insertProductHistory(historyVO);
				
				parameterVO.setCheck_yn("Y");
			} 
			
			warehouseService.updateProductRelease(parameterVO);
			warehouseService.updateProductReleaseState(parameterVO);			
			
			header.setResult_code("Success");
			header.setResult_msg("상태 변경 성공");
			restResp.setHeader(header);
			return restResp;
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
	}

	@RequestMapping(value = "/product-release/video", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse uploadReleaseVideo(@RequestParam(value="files") List<MultipartFile> files,
									@RequestParam(value="tracking_no") String tracking_no,
									HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}

		try{
			ReleaseVO parameterVO = new ReleaseVO();
			ReleaseVO resultVO= null;
			parameterVO.setTracking_no(tracking_no);
			parameterVO.setAccount_id(loginVO.getAccount_id());
			int resultCnt = 0;
			for (int i = 0; i < files.size(); i++) {
				if (files.get(i).getSize() > 0) {
					FileVO addFileVO = new FileVO();
					addFileVO = fileService.save(files.get(i));

					parameterVO.setFile_id(addFileVO.getFile_id());
					parameterVO.setFile_state("영상");
					warehouseService.insertProductReleaseFile(parameterVO);
					resultCnt++;
				}
			}
			if (resultCnt != 0) {
				header.setResult_code("Success");
				header.setResult_msg(resultCnt + "개의 파일 업로드 완료");
			} else {
				header.setResult_code("Fail");
				header.setResult_msg("파일 업로드 실패");
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
			return restResp;
		}
		restResp.setHeader(header);
		return restResp;
	}

	@RequestMapping(value = "/product-rack/store", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse productRackStroe(@RequestBody RackVO parameterVO, HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}
		try{
			
			if(parameterVO.getProduct_list() == null) {
				header.setResult_code("Fail");
				header.setResult_msg("0000");
				restResp.setHeader(header);
				return restResp;
			}
			
			for( String key : parameterVO.getProduct_list().keySet() ){
				parameterVO.setProduct_barcode(key);
				String amount = parameterVO.getProduct_list().get(key);
				parameterVO.setAmount(amount);
				warehouseService.insertRackProduct(parameterVO);
			}
			
			
			header.setResult_code("Success");
			header.setResult_msg("0000");
			restResp.setHeader(header);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
		}
		return restResp;
	}
	
	@RequestMapping(value = "/product-rack/check", method={RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public RestResponse productRackCheck(@RequestBody RackVO parameterVO, HttpSession session) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
		RestResponse restResp = new RestResponse();
		RestHeader header = new RestHeader();
		AdminVO loginVO = (AdminVO) session.getAttribute("sessionVO");
		if(loginVO == null) {
			header.setResult_code("Fail");
			header.setResult_msg("로그인 되어 있지 않은 상태입니다.");
			restResp.setHeader(header);
			return restResp;
		}
		try{
			
			if(parameterVO.getBarcode() == null) {
				header.setResult_code("Fail");
				header.setResult_msg("Barcode 정보가 입력되지 않았습니다.");
				restResp.setHeader(header);
				return restResp;
			}
			
			List<RackVO> rackList = warehouseService.selectRackListAll(parameterVO);
			if(rackList != null && rackList.size() > 0) {
				header.setResult_code("Success");
				header.setResult_msg("0000");
				restResp.setBody(rackList.get(0));

			} else {
				header.setResult_code("Fail");
				header.setResult_msg("RACK 정보를 찾을수 없습니다. Barcode=" + parameterVO.getBarcode());
			}			
			restResp.setHeader(header);
		}catch (Exception e){
			exceptionFactory.commonException(e, whoAmi);
			header.setResult_msg("시스템 에러가 발생하였습니다.");
			header.setResult_code("Fail");
			restResp.setHeader(header);
		}
		return restResp;
	}


    


}

