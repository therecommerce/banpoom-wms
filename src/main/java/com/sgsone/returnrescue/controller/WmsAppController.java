package com.sgsone.returnrescue.controller;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.service.CommonService;
import com.sgsone.returnrescue.service.DirectProductSaleManagementService;
import com.sgsone.returnrescue.service.UserManagementService;
import com.sgsone.returnrescue.service.WarehouseService;
import com.sgsone.returnrescue.util.QRCode;
import com.sgsone.returnrescue.vo.*;
import com.sgsone.returnrescue.vo.datatable.DataTablesInput;
import com.sgsone.returnrescue.vo.datatable.DataTablesOutput;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping(value = "/wmsappadmin")
public class WmsAppController {

    @Autowired
    private ExceptionFactory exceptionFactory;

    @Autowired
    UserManagementService userManagementService;

    @Autowired
    DirectProductSaleManagementService directProductSaleManagementService;

	@Autowired
	private WarehouseService warehouseService;


    @Autowired
    CommonService commonService;

    @RequestMapping(value = "/incomshoot.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String incomshoot(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/wmsappadmin/incomshoot";
    }

    @RequestMapping(value = "/inspectionState.json", method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView inspectionState(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, ModelMap modelVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();
        AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

		InspectionVO parameterVO = new InspectionVO();
		parameterVO.setAccount_id(sessionValue.getAccount_id());
		parameterVO.setCheck_yn("N");
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("recordCountPerPage", String.valueOf(1));
		searchMap.put("firstIndex", String.valueOf(0));
		searchMap.put("check_yn", "N");

        try {
			List<InspectionVO> resultList = warehouseService.selectProductInspection(searchMap);
			if(resultList != null && resultList.size() > 0) {
                modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("inspection", resultList.get(0));
			}
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/incomshootstatus.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<InspectionVO> incomshootstatus(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

			InspectionVO parameterVO = new InspectionVO();
			parameterVO.setAccount_id(sessionValue.getAccount_id());
			parameterVO.setCheck_yn("N");
			parameterVO.setDataTablesInput(input);
			parameterVO.getSearchMap().put("check_yn", "N");
			List<InspectionVO> resultList = warehouseService.selectProductInspection(parameterVO.getSearchMap());
			if(resultList != null) {
	            DataTablesOutput<InspectionVO> output = new DataTablesOutput<InspectionVO>();
	            output.setDraw(input.getDraw());
	            output.setRecordsTotal(resultList.size());
	            output.setRecordsFiltered(resultList.size());
	            output.setData(resultList);

	            return output;
			}


        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return null;
    }

    @RequestMapping(value = "/grading.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String grading(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {

        		String product_id = request.getParameter("product_id");
        		InspectionVO parameter = new InspectionVO();
        		parameter.setProduct_id(product_id);

            	InspectionVO result = warehouseService.selectProductInspectionInfo(parameter);
            	if(result != null) {

            		List<InspectionVO> fileList = warehouseService.selectInspectionFile(result);

            		for(InspectionVO inspection : fileList) {
            			if("영상".equals(inspection.getFile_state())) {
                    		modelVO.addAttribute("videoUrl", inspection.getFile_id());
                    		fileList.remove(inspection);
                    		break;
            			}
            		}

            		result.setAes_key(null);
            		modelVO.addAttribute("inspection", result);
            		modelVO.addAttribute("fileList", fileList);
            	}
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/wmsappadmin/grading";
    }

    @RequestMapping(value = "/shootdetail.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String shootdetail(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {

        		String product_id = request.getParameter("product_id");
        		InspectionVO parameter = new InspectionVO();
        		parameter.setProduct_id(product_id);

            	InspectionVO result = warehouseService.selectProductInspectionInfo(parameter);
            	if(result != null) {

            		List<InspectionVO> fileList = warehouseService.selectInspectionFile(result);

            		for(InspectionVO inspection : fileList) {
            			if("영상".equals(inspection.getFile_state())) {
                    		modelVO.addAttribute("videoUrl", inspection.getFile_id());
                    		fileList.remove(inspection);
                    		break;
            			}
            		}

            		result.setAes_key(null);
            		modelVO.addAttribute("inspection", result);
            		modelVO.addAttribute("fileList", fileList);
            	}
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/wmsappadmin/shootdetail";
    }


    //검수 완료
    @RequestMapping(value = "/updateInspection.json", method = { RequestMethod.POST })
    @ResponseBody
    public ModelAndView updateInspection(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") InspectionVO parameterVO) {
        ModelAndView modelAndView = new ModelAndView("jsonView");
        String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

        try {
			parameterVO.setCheck_yn("Y");

            int result = warehouseService.updateProductInspection(parameterVO);
            if (result >= 0) {
            	modelAndView.addObject("resultCode", "success");
                modelAndView.addObject("message", "수정성공");

                InventoryVO invenParam = new InventoryVO();
                invenParam.setProduct_id(parameterVO.getProduct_id());
                warehouseService.insertInventory(invenParam);

            } else {
                modelAndView.addObject("resultCode", "fail");
                modelAndView.addObject("message", "수정실패");
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            modelAndView.addObject("resultCode", "fail");
            modelAndView.addObject("message", "시스템 에러가 발생하였습니다.");
        }

        return modelAndView;
    }



    @RequestMapping(value = "/shootmanage.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String shootmanage(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/wmsappadmin/shootmanage";
    }

    @RequestMapping(value = "/shootmanageList.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<InspectionVO> shootmanageList(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

			InspectionVO parameterVO = new InspectionVO();
			parameterVO.setDataTablesInput(input);
			parameterVO.setAccount_id(sessionValue.getAccount_id());


//			parameterVO.setStart_dt((String)parameterVO.getSearchMap().get("start_dt"));
//			parameterVO.setEnd_dt((String)parameterVO.getSearchMap().get("end_dt"));
//			parameterVO.setCheck_yn("Y");

			List<InspectionVO> resultList = warehouseService.selectProductInspection(parameterVO.getSearchMap());
			int total = warehouseService.selectProductInspectionTotal(parameterVO.getSearchMap());
			if(resultList != null) {
	            DataTablesOutput<InspectionVO> output = new DataTablesOutput<InspectionVO>();
	            output.setDraw(input.getDraw());
	            output.setRecordsTotal(total);
	            output.setRecordsFiltered(total);
	            output.setData(resultList);

	            return output;
			}

        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return null;
    }


    @RequestMapping(value = "/rackproduct.do", method = {RequestMethod.POST, RequestMethod.GET})
    public String rackproduct(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @ModelAttribute("parameterVO") UserManagementVO parameterVO, ModelMap modelVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            if (session.getAttribute("sessionVO") == null) {
                return "redirect:/logout.do";
            } else {
            }
        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
        }

        return "/wmsappadmin/rackproduct";
    }

    @RequestMapping(value = "/rackproductList.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<RackVO> rackproduct(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            AdminVO sessionValue  = (AdminVO)session.getAttribute("sessionVO");

			RackVO parameterVO = new RackVO();
			parameterVO.setDataTablesInput(input);
			parameterVO.setAccount_id(sessionValue.getAccount_id());
			parameterVO.setStart_dt((String)parameterVO.getSearchMap().get("start_dt"));
			parameterVO.setEnd_dt((String)parameterVO.getSearchMap().get("end_dt"));

			List<RackVO> resultList = warehouseService.selectRackProduct(parameterVO.getSearchMap());
			int total = warehouseService.selectRackProductTotal(parameterVO.getSearchMap());
			if(resultList != null) {

				int rownum = resultList.size() - input.getStart();
				for(RackVO item : resultList) {
					item.setRack_product_no(String.valueOf(rownum));
					rownum = rownum - 1;
				}

	            DataTablesOutput<RackVO> output = new DataTablesOutput<RackVO>();
	            output.setDraw(input.getDraw());
	            output.setRecordsTotal(total);
	            output.setRecordsFiltered(total);
	            output.setData(resultList);

	            return output;
			}


        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return null;
    }

    @RequestMapping(value = "/rackproductDetail.json", method = { RequestMethod.POST, RequestMethod.GET })
    @ResponseBody
    public DataTablesOutput<RackVO> rackproductDetail(Locale locale, ModelMap model, HttpServletResponse response, HttpServletRequest request, HttpSession session, @RequestBody DataTablesInput input) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {

			RackVO parameterVO = new RackVO();
			parameterVO.setDataTablesInput(input);
			parameterVO.setRack_id((String)parameterVO.getSearchMap().get("rack_id"));

			if(parameterVO.getRack_id() == null) {
	            DataTablesOutput<RackVO> output = new DataTablesOutput<RackVO>();
	            output.setDraw(input.getDraw());
	            output.setRecordsTotal(0);
	            output.setRecordsFiltered(0);
	            output.setData(null);
	            return output;
			}
			List<RackVO> resultList = warehouseService.selectRackProductDetail(parameterVO.getSearchMap());
			int total = warehouseService.selectRackProductDetailTotal(parameterVO.getSearchMap());
			if(resultList != null) {
	            DataTablesOutput<RackVO> output = new DataTablesOutput<RackVO>();
	            output.setDraw(input.getDraw());
	            output.setRecordsTotal(total);
	            output.setRecordsFiltered(total);
	            output.setData(resultList);
	            return output;
			}


        } catch (Exception e) {
            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
        return null;
    }


	@RequestMapping(value = "/makeBarCode.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView makeBarCode(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") InspectionVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {
			long time = System.currentTimeMillis();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("ddmmssSSS");
			Date date = new Date();
			date.setTime(time);

			int result = 0;
			String barcode = "";

			if(parameterVO.getProduct_id() != null) {
				if(parameterVO.getProduct_id().length() < 13) {
	    			modelAndView.addObject("resultCode", "fail");
	    			modelAndView.addObject("message", "Invalid ProductId: " + parameterVO.getProduct_id());
	    			return modelAndView;
				}

				String strDate = parameterVO.getProduct_id().substring(1, 7);
				String strSerial = parameterVO.getProduct_id().substring(8, 13);
				String prefix = "0";

				if(parameterVO.getProduct_id().charAt(0) == 'M')
					prefix = "1";
				else if(parameterVO.getProduct_id().charAt(0) == 'S')
					prefix = "2";
				else if(parameterVO.getProduct_id().charAt(0) == 'R')
					prefix = "3";

				barcode = prefix + strDate + strSerial;
				barcode += QRCode.getBarcodeCheckSum(barcode);

				parameterVO.setProduct_barcode(barcode);
				result = warehouseService.updateProductBarcode(parameterVO);
			} else if(parameterVO.getRack_id() != null) {

				if(parameterVO.getRack_id().length() < 12) {
	    			modelAndView.addObject("resultCode", "fail");
	    			modelAndView.addObject("message", "Invalid RACK ID: " + parameterVO.getRack_id());
	    			return modelAndView;
				}

				barcode = parameterVO.getRack_id() + QRCode.getBarcodeCheckSum(parameterVO.getRack_id());

				RackVO rackParam = new RackVO();
				rackParam.setRack_id(parameterVO.getRack_id());
				rackParam.setBarcode(barcode);
				result = warehouseService.updateRackBarcode(rackParam);
				warehouseService.updateProductCommission(parameterVO);
			}
			else {
    			modelAndView.addObject("resultCode", "fail");
    			modelAndView.addObject("message", "Product or Rack Id not Found.");
    			return modelAndView;
			}

            if(result > 0) {
    			modelAndView.addObject("resultCode", "success");
    			modelAndView.addObject("barcode", barcode);
            } else {
    			modelAndView.addObject("resultCode", "fail");
    			modelAndView.addObject("message", "Barcode DB Insert Fail.");
            }
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "");
		}
		return modelAndView;
	}


	@RequestMapping(value = "/updateRackBarCode.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView updateRackBarCode(HttpSession session, HttpServletRequest request, @ModelAttribute("parameterVO") InspectionVO parameterVO) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {
			RackVO rackParam = new RackVO();
			List<RackVO> rackList = warehouseService.selectRackListAll(rackParam);

			for(RackVO rack : rackList) {
				if(rack.getRack_id().length() < 12) {
		    		modelAndView.addObject("resultCode", "fail");
		    		modelAndView.addObject("message", "Invalid RACK ID: " + rack.getRack_id());
		    		return modelAndView;
				}
				String barcode = rack.getRack_id() + QRCode.getBarcodeCheckSum(rack.getRack_id());
				rack.setRack_id(rack.getRack_id());
				rack.setBarcode(barcode);
				int result = warehouseService.updateRackBarcode(rack);
		        if(result <= 0) {
		        	modelAndView.addObject("resultCode", "fail");
		    		modelAndView.addObject("message", "Barcode DB Insert Fail. RACK_ID=" + rack.getRack_id());
		    		return modelAndView;
		        }
			}
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "");
		}

		modelAndView.addObject("resultCode", "success");

		return modelAndView;
	}



	@RequestMapping(value = "/makeBarCodeImage.json", method = { RequestMethod.POST })
	@ResponseBody
	public ModelAndView makeBarCodeImage(HttpSession session, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("jsonView");
		String whoAmi = Thread.currentThread().getStackTrace()[1].toString();

		try {

			QRCode qrcode = new QRCode();

				String qrimage = qrcode.createBarcodeImage("978020137962", 200, 200);

				modelAndView.addObject("resultCode", "success");
				modelAndView.addObject("barCodeImage", qrimage);

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			modelAndView.addObject("resultCode", "fail");
			modelAndView.addObject("message", "");
		}
		return modelAndView;
	}






}
