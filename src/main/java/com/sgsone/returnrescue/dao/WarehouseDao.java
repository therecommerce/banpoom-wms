package com.sgsone.returnrescue.dao;

import com.sgsone.returnrescue.exception.ExceptionFactory;
import com.sgsone.returnrescue.vo.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


@Repository
public class WarehouseDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Autowired
	private ExceptionFactory exceptionFactory;

	public WarehouseVO selectStockProductInfo(WarehouseVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		WarehouseVO result = new WarehouseVO();

		try {
			result = sqlSessionTemplate.selectOne("warehouse.selectStockProductInfo", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}
	
	public WarehouseVO selectReleaseProductInfo(WarehouseVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		WarehouseVO result = new WarehouseVO();

		try {
			result = sqlSessionTemplate.selectOne("warehouse.selectReleaseProductInfo", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}




	public int insertProductInspection(InspectionVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.insert("warehouse.insertProductInspection", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}

	public int updateProductInspection(InspectionVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.update("warehouse.updateProductInspection", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}


	public int insertInspectionFile(InspectionVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.insert("warehouse.insertInspectionFile", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}

	public List<InspectionVO> selectProductInspection(Map<String, Object> parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<InspectionVO> result = null;

		try {
			result = sqlSessionTemplate.selectList("warehouse.selectProductInspection", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}

	public int selectProductInspectionTotal(Map<String, Object> parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			return  sqlSessionTemplate.selectOne("warehouse.selectProductInspectionTotal", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
	}
	
    public Integer selectProductInspectionCount(InspectionVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("warehouse.selectProductInspectionCount", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

	
	public InspectionVO selectProductInspectionInfo(InspectionVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		InspectionVO result = null;

		try {
			result = sqlSessionTemplate.selectOne("warehouse.selectProductInspectionInfo", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}


	public InspectionVO selectProductInspectionId(InspectionVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		InspectionVO result = null;

		try {
			result = sqlSessionTemplate.selectOne("warehouse.selectProductInspectionId", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}
	
	public List<InspectionVO> selectInspectionFile(InspectionVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<InspectionVO> result = null;

		try {
			result = sqlSessionTemplate.selectList("warehouse.selectInspectionFile", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}



	public int deleteInspection(InspectionVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {

			List<FileVO> fileVOList = sqlSessionTemplate.selectList("warehouse.selectFileList", parameterVO);
			sqlSessionTemplate.delete("warehouse.deleteInspectionFile", parameterVO);
			sqlSessionTemplate.delete("warehouse.deleteInspection", parameterVO);
			sqlSessionTemplate.delete("warehouse.deleteHistory", parameterVO);
			sqlSessionTemplate.delete("warehouse.deleteFile", fileVOList);

		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}

	public int updateProductPriceByGrade(InspectionVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.insert("warehouse.updateProductPriceByGrade", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}
	
	public int updateProductBarcode(InspectionVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.insert("warehouse.updateProductBarcode", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}
	
	public int updateRackBarcode(RackVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.insert("warehouse.updateRackBarcode", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}



	public InspectionVO selectProductInspectionState(InspectionVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		InspectionVO result = null;

		try {
			result = sqlSessionTemplate.selectOne("warehouse.selectProductInspectionState", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}

	public InventoryVO selectProductReleaseState(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		InventoryVO result = null;

		try {
			result = sqlSessionTemplate.selectOne("warehouse.selectProductReleaseState", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}

	public int insertProductReleaseState(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.insert("warehouse.insertProductReleaseState", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}
	
	public int updateProductReleaseState(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.update("warehouse.updateProductReleaseState", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}


	public int insertProductReleaseFile(ReleaseVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.insert("warehouse.insertProductReleaseFile", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}
	
	public int insertRackProduct(RackVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.insert("warehouse.insertRackProduct", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}

	public List<RackVO> selectRackProduct(Map<String, Object> parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<RackVO> result = null;

		try {
			result = sqlSessionTemplate.selectList("warehouse.selectRackProduct", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}

	public int selectRackProductTotal(Map<String, Object> parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			return sqlSessionTemplate.selectOne("warehouse.selectRackProductTotal", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
	}

	public List<RackVO> selectRackProductDetail(Map<String, Object> parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<RackVO> result = null;

		try {
			result = sqlSessionTemplate.selectList("warehouse.selectRackProductDetail", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}

	public int selectRackProductDetailTotal(Map<String, Object> parameterVO){
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			return sqlSessionTemplate.selectOne("warehouse.selectRackProductDetailTotal", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
	}

	public List<RackVO> selectRackListAll(RackVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<RackVO> result = null;

		try {
			result = sqlSessionTemplate.selectList("warehouse.selectRackListAll", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}

	public List<RackVO> selectRackList(Map<String, Object> parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<RackVO> result = null;

		try {
			result = sqlSessionTemplate.selectList("warehouse.selectRackList", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}

	public int selectRackListTotal(Map<String, Object> parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		try {
			return sqlSessionTemplate.selectOne("warehouse.selectRackListTotal", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
	}
	
	public List<InventoryVO> selectInventoryList(Map<String, Object> parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<InventoryVO> result = null;

		try {
			result = sqlSessionTemplate.selectList("warehouse.selectInventoryList", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}
	
    public Integer selectInventoryListCount(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("warehouse.selectInventoryListCount", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }


	
	public int insertInventory(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.insert("warehouse.insertInventory", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}

	public int updateInventory(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.update("warehouse.updateInventory", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}

	public List<InventoryVO> selectProductReleaseList(Map<String, Object> parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<InventoryVO> result = null;

		try {
			result = sqlSessionTemplate.selectList("warehouse.selectProductReleaseList", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}
	
    public Integer selectProductReleaseListCount(Map<String, Object> parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("warehouse.selectProductReleaseListCount", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }
	
	public int insertProductRelease(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.insert("warehouse.insertProductRelease", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}

	public int updateProductRelease(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.update("warehouse.updateProductRelease", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}
	
	public List<InventoryVO> selectProductReleaseInspection(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<InventoryVO> result = null;

		try {
			result = sqlSessionTemplate.selectList("warehouse.selectProductReleaseInspection", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}
	
    public Integer selectProductReleaseInspectionCount(InventoryVO parameterVO) {
        String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

        try {
            return sqlSessionTemplate.selectOne("warehouse.selectProductReleaseInspectionCount", parameterVO);

        } catch (Exception e) {

            exceptionFactory.commonException(e, whoAmi);
            return null;
        }
    }

	public int updateProductCount(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		int result = 0;

		try {
			result = sqlSessionTemplate.update("warehouse.updateProductCount", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}

	public int updateProductCommission(InspectionVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;

		try {
			result = sqlSessionTemplate.update("warehouse.updateProductCommission", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}

	public int updateProductCommissionRelease(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;

		try {
			result = sqlSessionTemplate.update("warehouse.updateProductCommissionRelease", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}

	public int updateOrderRequestStateProgress(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();
		int result = 0;

		try {
			result = sqlSessionTemplate.update("warehouse.updateOrderRequestStateProgress", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return 0;
		}
		return result;
	}

	public List<InventoryVO> selectProductReleaseListNoLimit(InventoryVO parameterVO) {
		String whoAmi = Thread.currentThread().getStackTrace()[1].getMethodName();

		List<InventoryVO> result = null;

		try {
			result = sqlSessionTemplate.selectList("warehouse.selectProductReleaseListNoLimit", parameterVO);
		} catch (Exception e) {
			exceptionFactory.commonException(e, whoAmi);
			return null;
		}
		return result;
	}
}
