package com.seiu.web.dao;

import java.util.List;
import java.util.Map;

import com.seiu.web.common.DBHelper;

public class AlbumDAO {	
	public static List<Map<String,String>> getList(String is_video){
		String sqlCommand = "SELECT * FROM album WHERE status = 0 AND is_show = 0 AND is_video= ? ORDER BY ord LIMIT 6";
		return DBHelper.executeQuery(sqlCommand,is_video);
	}	
	public static List<Map<String,String>> getFile(String is_video){
		String sqlCommand = "SELECT * FROM file WHERE status = 0 AND is_show = 0 AND is_video= ? ORDER BY updated_time DESC";
		return DBHelper.executeQuery(sqlCommand,is_video);
	}	
	
}
