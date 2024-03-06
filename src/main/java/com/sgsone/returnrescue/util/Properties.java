package com.sgsone.returnrescue.util;

import org.apache.commons.configuration.Configuration;
import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


public class Properties {
	
	protected static Log logger = LogFactory.getLog(Properties.class);
	
	private static Configuration config = null;
		
	
	
	private static String file_save_root = "";
	
	
	public static void init() {
		
		try {
			
			String configPath = System.getenv("SMR_WAS_HOME");
			if(configPath != null) {
				config = new PropertiesConfiguration(configPath + "/properties/config.properties"); 
			}else {
				config = new PropertiesConfiguration("properties/config.properties");
			}
			
		} catch (ConfigurationException e) {
			e.printStackTrace();
		}
		
		file_save_root = config.getString("file.save.root");

	}
	
	public static String getFile_save_root() {
		if(config == null)
			init();

		return file_save_root;
	}

}
