package com.buixuan.example.spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class ApprentiController {
	
	@Autowired private ApprentiDAO apprentiDAO;
	
	@RequestMapping(method = RequestMethod.GET)
	public String list(Model model) {
		List<Apprenti> apprentis = apprentiDAO.findAll();
		model.addAttribute("apprentis", apprentis);
		
		List<Apprenti> apprentisWithCompetences = apprentiDAO.findAllWithCompetences();
		model.addAttribute("apprentisWithCompetences", apprentisWithCompetences);
		return "index";
	}
}
