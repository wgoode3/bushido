package com.hygogg.bushido.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@PostMapping("/process")
	public String process(@RequestParam(value="code") String code, RedirectAttributes flash, HttpSession session) {
		// System.out.println(code.toLowerCase().equals("bushido"));
		if(code.toLowerCase().equals("bushido")) {
			session.setAttribute("lastGuess", code.toLowerCase());
			return "redirect:/success";
		}
		flash.addFlashAttribute("message", "You must train harder!");
		return "redirect:/";
	}
	
	@GetMapping("/success")
	public String success(HttpSession session, RedirectAttributes flash) {
		String lastGuess = (String) session.getAttribute("lastGuess");
		if(lastGuess == null) {
			flash.addFlashAttribute("message", "No cheating!");
			return "redirect:/";
		}
		if(lastGuess.equals("bushido")) {
			return "success";			
		} else {
			flash.addFlashAttribute("message", "No cheating!");
			return "redirect:/";
		}
	}

}
