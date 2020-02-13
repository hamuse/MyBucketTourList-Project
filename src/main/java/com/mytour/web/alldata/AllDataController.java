package com.mytour.web.alldata;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mytour.web.map.Maps;
import com.mytour.web.util.Printer;


@RestController
@RequestMapping("/alldatas")
public class AllDataController {
	@Autowired
	AllDataMapper alldataMapper;
	@Autowired
	AllDataProxy alldataProxy;
	@Autowired
    Printer printer;
	@Autowired AllDatasProxy  alldatasProxy;

	@GetMapping("/alldata/create")
	public Map<?, ?> createHotel() {
		HashMap<String, String> map = new HashMap<>();
		map.put("CREATE_ALLDATA", SQL.CREATE_ALLDATA.toString());
		Consumer<HashMap<String, String>> p = r -> alldataMapper.createAlldata(map);
		p.accept(map);
		map.clear();
		map.put("msg", "SUCCESS");
		return map;
	}

	@GetMapping("/alldata/insert")
	public Map<?,?> insertHotelDB() {
		HashMap<String, String> param = new HashMap<>();
		alldataProxy.insetAlldataDb();
		param.clear();
		param.put("msg", "SUCCESS");
		return param;
	}
	 @PostMapping("/mapd/alldatasTour") 
	 public Map<?,?> alldatasTour(@RequestBody  AllData alldata){
		 List<AllData> l = alldata.getAlldataList();
		 ArrayList<AllData> mytourlist = new ArrayList<>();
		 HashMap<String, Object> mytourData = new HashMap<>();
		 for(AllData s : l) {
			 mytourData.put(s.getPlace(), s.getLatitude());
		 }
		 HashMap<String, Object> param = new HashMap<>();
		 param.put("msg","SUCCESE");
		 param.put("distance", alldatasProxy.destination(mytourData));
		 return param;
	 }

}
