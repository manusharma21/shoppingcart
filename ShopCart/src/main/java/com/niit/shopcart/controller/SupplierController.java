package com.niit.shopcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shopcart.dao.SupplierImpl;
import com.niit.shopcart.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	private SupplierImpl supplierImpl;
	
	@RequestMapping(value="/supplier", method=RequestMethod.GET)
	public String listSuppliers(Model model){
		model.addAttribute("supplier",  new Supplier());
        model.addAttribute("supplierList", this.supplierImpl.list());
		return "supplier";
	}
	
	@RequestMapping(value="/supplier/add",method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier){
		System.out.println(supplier);
		supplierImpl.saveOrUpdate(supplier);
		return "redirect:/supplier";
	}
	
	@RequestMapping("supplier/remove/{id}")
	public String removeSupplier(@PathVariable("id") String id, ModelMap model) throws Exception{
		try{
			supplierImpl.delete(id);
			model.addAttribute("message", "Successfully Added");
		}
		catch(Exception e){
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		return "redirect:/supplier";
	}
	
	@RequestMapping("supplier/edit/{id}")
	public String editSupplier(@PathVariable("id") String id, ModelMap model){
		System.out.println("edit category");
		
		model.addAttribute("supplier", this.supplierImpl.get(id));
		model.addAttribute("listSupplier", this.supplierImpl.list());
		return "supplier";
	}
}