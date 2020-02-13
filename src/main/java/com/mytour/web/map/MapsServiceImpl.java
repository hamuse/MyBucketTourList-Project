package com.mytour.web.map;

import java.util.List;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mytour.web.util.Printer;

@Service
public class MapsServiceImpl implements MapsService{
	@Autowired MapMapper mapMapper;
	@Autowired Printer printer;

	@Override
	public Maps findMapsByPlace(String place) {
		Maps t = mapMapper.selectMapsByPlace(place);
		return t;
	}

}
