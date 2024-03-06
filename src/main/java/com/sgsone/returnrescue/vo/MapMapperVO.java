package com.sgsone.returnrescue.vo;
import java.util.HashMap;

/**
 * <PRE>
 * Box
 * </PRE>
 */
public class MapMapperVO extends HashMap<String, Object>{
	/** SerialVersionUID */
	private static final long serialVersionUID = -7707799999911000011L;
	
	//public Object put(String key,Object value){
	//	return super.put(key.toLowerCase(),value);
	//}

	public Object put(String key,Object value){
		return super.put(key,value);
	}
	
	/**
	 * get String Value
	 * @param obj
	 * @return String
	 */
	private String getStringValue(Object obj){
		String reval = null;
		if(obj != null)
		{
			// String으로 형변환이 가능하다면
			if(obj instanceof String){
				reval = (String)obj;
			// String [] 로 형변환이 가능하다면
			}else if(obj instanceof String[]){
				String[] valarr =  (String[])obj;
				if(valarr != null && valarr.length > 0 ) reval = valarr[0]; 
			}else {
				reval = obj.toString();
			}
		}else{
			reval = "";
		}
		return reval;
	}
	
	/**
	 * get Object 오브젝트 아이디와 오브젝트 디폴트 값
	 * @param id
	 * @param defaultObject
	 * @return Object
	 */
	public Object get(Object id,Object defaultObject){
	    Object obj = super.get(id);
	    if(obj == null) return defaultObject;
	    return obj;
	}
	
	/**
	 * get String
	 * @param columnName
	 * @return String
	 */
	public String getString(String id){
		Object obj = super.get(id);
		return getStringValue(obj);
	}
	
	/**
	 * get String 
	 * @param id
	 * @param defaultStr
	 * @return String
	 */
	public String getString(String id,String defaultStr){
	    Object obj = super.get(id);
	    if(obj == null){
	        return defaultStr;
	    }
	    return getStringValue(obj);
	}
	
	/**
	 * get Int
	 * @param id
	 * @return int
	 */
	public int getInt(String id){
	    return getInt(id,0);
	}
	
	/**
	 * get Int
	 * @param id
	 * @param defaultValue
	 * @return int
	 */
	public int getInt(String id,int defaultValue){
		int re = defaultValue;
		
		Object obj = super.get(id);
		if(obj == null) return re;
		if( obj instanceof Number ){
		    return ((Number)obj).intValue();
		}
		try{
			re = Integer.parseInt(getStringValue(obj));
		}catch(Exception ex){
		}
		return re;
	}
	
	/**
	 * get long
	 * @param id
	 * @return long
	 */
	public long getLong(String id){
	    return getLong(id,0);
	}
	
	/**
	 * get long
	 * @param id
	 * @param defaultValue
	 * @return long
	 */
	public long getLong(String id,long defaultValue){
		long re = defaultValue;
		
		Object obj = super.get(id);
		if(obj == null) return re;
		if( obj instanceof Number ){
		    return ((Number)obj).longValue();
		}
		try{
			re = Long.parseLong(getStringValue(obj));
		}catch(Exception ex){
		}
		return re;
	}
	
	/**
	 * get Double
	 * @param id
	 * @return double
	 */
	public double getDouble(String id){
	    double re = 0.0;
	    
		Object obj = super.get(id);
		if(obj == null) return re;
		if( obj instanceof Number ){
		    return ((Number)obj).doubleValue();
		}
		
		try{
			re = Double.parseDouble(getStringValue(obj));
		}catch(Exception ex){
		}
		return re;
	}
	
	/**
	 * get String Array
	 * @param id
	 * @return String []
	 */
	public String [] getStringArray(String id){
		Object obj = super.get(id);
		String [] reval = null;
		if(obj != null){
			if( obj instanceof String[]){
				reval = (String[])obj;
			} else {
				reval = new String[1];
				reval[0] = obj.toString();
			}
		}
		return reval;
	}	
}