package com.myresume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myresume.model.User;
import com.myresume.service.StorageService;

@Controller
public class HomeController {

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage(@ModelAttribute("user") User user) {

		return "home";
	}

	@RequestMapping(value = "/home", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") User user) {

		if (StorageService.canUserLogin(user)) {
			return "redirect:profile.html";
		}

		return "redirect:home.html";
	}
}
