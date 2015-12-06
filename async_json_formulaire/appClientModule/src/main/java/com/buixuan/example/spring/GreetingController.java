package com.buixuan.example.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GreetingController {

    @RequestMapping(value="/dummyForm", method=RequestMethod.GET)
    public String greetingForm(Model model) {
        return "formSubmission";
    }
    @RequestMapping(value="/dummyForm", method=RequestMethod.POST)
    public String greetingSubmit(@ModelAttribute("messageStuff") Greeting greeting, Model model) {
        model.addAttribute("greeting", greeting);
        return "formSubmissionResult";
    }

}