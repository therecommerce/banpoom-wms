package com.sgsone.returnrescue.util;

public class PagingHelper {
	public static String paging(int totalRowSize, int rowSize, int targetPage, int menuId) {
		if(totalRowSize==0)
			return "";
		 
        StringBuffer returnValue = new StringBuffer();

        int lastIndex = 0;
		if(totalRowSize%rowSize == 0){
			lastIndex = totalRowSize/rowSize;
		}else{
			lastIndex = totalRowSize/rowSize + 1;
		}
		if(lastIndex == 0){
			lastIndex = 1;
		}
		
        int totalPageSize = (totalRowSize / rowSize);
        if ((totalRowSize % rowSize) > 0) {
        	totalPageSize++;
        }

        int startPage = ((targetPage - 1) / 10) * 10 + 1;
        int endPage = startPage + 10 - 1;
        if (endPage > totalPageSize) {
        	endPage = totalPageSize;
        }
        
        int trueTargetPage = targetPage;
        if (totalPageSize == 0) {
        	trueTargetPage = 0;
        }

        if (trueTargetPage > 10) {
           int prePage = ((trueTargetPage / 10) - 1) * 10 + 1;
           
           returnValue.append("<a class=\"PrevPage\" href=\"#\" onclick=\"javascript:fn_searchList('1');return false;\"><span class=\"arrowLE\"></span></a><a href=\"#\" class=\"PrevPage\" onclick=\"javascript:fn_searchList('");
           returnValue.append(String.valueOf(prePage));
           returnValue.append("');return false;\"><span class=\"arrowL\"></span></a><ul>");
        } else {
           returnValue.append("<a class=\"PrevPage\" href=\"#\" onclick=\"javascript:fn_searchList('1');return false;\"><span class=\"arrowLE\"></span></a><a href=\"#\" class=\"PrevPage\"><span class=\"arrowL\"></span></a><ul>");
        }

        for (int i = startPage; i <= endPage; i++) {
               if (i == trueTargetPage) {
            	   returnValue.append("<li class=\"on\">");
            	   returnValue.append(String.valueOf(i));
            	   returnValue.append("</li>");
               } else {
            	   returnValue.append("<li><a href=\"#\" onclick=\"javascript:fn_searchList('");
            	   returnValue.append(String.valueOf(i));
            	   returnValue.append("');return false;\"><span>");
            	   returnValue.append(String.valueOf(i));
            	   returnValue.append("</a></li>");
               }
        }

        if (endPage < totalPageSize) {
        	int nextPage = endPage + 1;
        	returnValue.append("</ul><a href=\"#\" class=\"NextPage\" onclick=\"javascript:fn_searchList('");
        	returnValue.append(String.valueOf(nextPage));
        	returnValue.append("');return false;\"><span class=\"arrowR\"></span></a><a class=\"NextPage\" href=\"#\" onclick=\"javascript:fn_searchList('");
        	returnValue.append(String.valueOf(lastIndex));
        	returnValue.append("');return false;\"><span class=\"arrowRE\"></span></a>");
        } else {
        	returnValue.append("</ul><a href=\"#\" class=\"NextPage\"><span class=\"arrowR\"></span></a><a class=\"NextPage\" href=\"#\" onclick=\"javascript:fn_searchList('");
        	returnValue.append(String.valueOf(lastIndex));
        	returnValue.append("');return false;\"><span class=\"arrowRE\"></span></a>");
        }

        return returnValue.toString();
	}
	
	public static String paging2(int totalRowSize, int rowSize, int targetPage, String functionName) {
		if(totalRowSize==0)
			return "";
		 
        StringBuffer returnValue = new StringBuffer();

        int lastIndex = 0;
		if(totalRowSize%rowSize == 0){
			lastIndex = totalRowSize/rowSize;
		}else{
			lastIndex = totalRowSize/rowSize + 1;
		}
		if(lastIndex == 0){
			lastIndex = 1;
		}
		
        int totalPageSize = (totalRowSize / rowSize);
        if ((totalRowSize % rowSize) > 0) {
        	totalPageSize++;
        }

        int startPage = ((targetPage - 1) / 10) * 10 + 1;
        int endPage = startPage + 10 - 1;
        if (endPage > totalPageSize) {
        	endPage = totalPageSize;
        }
        
        int trueTargetPage = targetPage;
        if (totalPageSize == 0) {
        	trueTargetPage = 0;
        }

        if (trueTargetPage > 10) {
           int prePage = ((trueTargetPage / 10) - 1) * 10 + 1;
           
           returnValue.append("<a class=\"PrevPage\" href=\"#\" onclick=\"javascript:"+functionName+"('1');return false;\"><span class=\"arrowLE\"></span></a><a href=\"#\" class=\"PrevPage\" onclick=\"javascript:"+functionName+"('");
           returnValue.append(String.valueOf(prePage));
           returnValue.append("');return false;\"><span class=\"arrowL\"></span></a><ul>");
        } else {
           returnValue.append("<a class=\"PrevPage\" href=\"#\" onclick=\"javascript:"+functionName+"('1');return false;\"><span class=\"arrowLE\"></span></a><a href=\"#\" class=\"PrevPage\"><span class=\"arrowL\"></span></a><ul>");
        }

        for (int i = startPage; i <= endPage; i++) {
               if (i == trueTargetPage) {
            	   returnValue.append("<li class=\"on\">");
            	   returnValue.append(String.valueOf(i));
            	   returnValue.append("</li>");
               } else {
            	   returnValue.append("<li><a href=\"#\" onclick=\"javascript:"+functionName+"('");
            	   returnValue.append(String.valueOf(i));
            	   returnValue.append("');return false;\"><span>");
            	   returnValue.append(String.valueOf(i));
            	   returnValue.append("</a></li>");
               }
        }

        if (endPage < totalPageSize) {
        	int nextPage = endPage + 1;
        	returnValue.append("</ul><a href=\"#\" class=\"NextPage\" onclick=\"javascript:"+functionName+"('");
        	returnValue.append(String.valueOf(nextPage));
        	returnValue.append("');return false;\"><span class=\"arrowR\"></span></a><a class=\"NextPage\" href=\"#\" onclick=\"javascript:"+functionName+"('");
        	returnValue.append(String.valueOf(lastIndex));
        	returnValue.append("');return false;\"><span class=\"arrowRE\"></span></a>");
        } else {
        	returnValue.append("</ul><a href=\"#\" class=\"NextPage\"><span class=\"arrowR\"></span></a><a class=\"NextPage\" href=\"#\" onclick=\"javascript:"+functionName+"('");
        	returnValue.append(String.valueOf(lastIndex));
        	returnValue.append("');return false;\"><span class=\"arrowRE\"></span></a>");
        }

        return returnValue.toString();
	}
}
