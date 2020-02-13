package com.mytour.web.alldata;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

@Repository
public interface AllDataMapper {
	
	public void createAlldata(HashMap<String,String> map);
	public void insertAlldata(AllData alldata);
}
