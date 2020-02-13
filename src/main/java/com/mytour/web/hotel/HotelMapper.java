package com.mytour.web.hotel;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface HotelMapper {
	public void createHotel(HashMap<String,String> map);
	public void insertHotel(Hotel hotel);
	public List<Hotel> selectHotelList();
}
