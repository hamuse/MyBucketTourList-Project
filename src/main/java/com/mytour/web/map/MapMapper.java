package com.mytour.web.map;


import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;


@Repository
public interface MapMapper {
		
	public void createMap(HashMap<String,String> paramMap);
	public Maps selectMapsByPlace(String place);
	public void insertMap(Maps param);
	public void createCorona(HashMap<String,String> paramMap);
	public void insertCorona(Corona param);
	public List<Corona> selectCoronaList();
	
}
