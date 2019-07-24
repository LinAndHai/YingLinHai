package com.linhai.controller.warehouseWanagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/WarehouseManagement")
@Controller
public class WarehouseManagement {

	@RequestMapping("/mainMenu")
	public String getmainMenu() {
		return "WarehouseManagement/mainMenu";
	}
	
}
