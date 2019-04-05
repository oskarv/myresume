package com.myresume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myresume.model.Resume;
import com.myresume.service.StorageService;

@Controller
public class ProfileController {

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String myProfile(@ModelAttribute("resume") Resume resume, Model model) {
		fillModelWithUserInfo(model);
		fillModelWithResumesInfo(model);

		return "myProfile";
	};

	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public String createResume(@ModelAttribute("resume") Resume resume) {
		int newResumeIndex;
		StorageService.createResume(resume);

		newResumeIndex = StorageService.getResumesForLoggedInUser().size() - 1;
		return "redirect:resume.html?id=" + newResumeIndex;
	}

	@RequestMapping(value = "/myProfilePage", method = RequestMethod.GET)
	public String myProfilePage(Model model) {
		fillModelWithUserInfo(model);

		return "myProfile";
	}

	private void fillModelWithUserInfo(Model model) {
		model.addAttribute("name", StorageService.getLoggedInUser().getName());
	}

	private void fillModelWithResumesInfo(Model model) {
		model.addAttribute("resumes", StorageService.getResumesForLoggedInUser());
	}
}
