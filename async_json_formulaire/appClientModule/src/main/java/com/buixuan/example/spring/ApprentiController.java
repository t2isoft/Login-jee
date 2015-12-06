package com.buixuan.example.spring;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@Controller
@RequestMapping("/")
public class ApprentiController {

	@Autowired
	private ApprentiDAO apprentiDAO;

	//Dumb response to Homepage
	@RequestMapping(method = RequestMethod.GET)
	public String list(Model model) {
		List<Apprenti> apprentis = apprentiDAO.findAll();
		model.addAttribute("apprentis", apprentis);
		
		List<Apprenti> apprentisWithCompetences = apprentiDAO.findAllWithCompetences();
		model.addAttribute("apprentisWithCompetences", apprentisWithCompetences);
		
		return "index";
	}

	//Dumb response to a request with a simple argument
	@RequestMapping(value = "/listWithGivenCompetence/{competence}", method = RequestMethod.GET)
	public String listeApprentisAvecCompetenceFixee(@PathVariable String competence, ModelMap model) {
		List<Apprenti> apprentis = apprentiDAO.findAllWithCompetences();
		List<Apprenti> result = new ArrayList<Apprenti>();
		for (Apprenti a : apprentis) {
			for (Competence c : a.getCompetences()) {
				if (c.getName().equals(competence))
					result.add(a);
			}
		}
		model.addAttribute("apprentisToDisplay", result);
		return "displayListWithGivenCompetence";
	}

	
	//Dumb json response to async Requests
	@RequestMapping("/asynchronousCall")
	public String pitiAppelAsynchrone(Model model) {
		return "displayAsynchronousCall";
	}
	@RequestMapping(value = "/asynchronousMessage", method = RequestMethod.GET)
	public @ResponseBody Apprenti pitiMessageAsyncrhone() {
		Apprenti result = apprentiDAO.findAll().get((new Random()).nextInt(apprentiDAO.findAll().size()));
		result.setCompetences(new ArrayList<Competence>());
		return result;
	}
}
