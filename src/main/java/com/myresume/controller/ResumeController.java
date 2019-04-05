package com.myresume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myresume.model.Resume;
import com.myresume.service.StorageService;

@Controller
public class ResumeController {

	@RequestMapping(value = "/resume")
	public String resumePage(@RequestParam String id, Model model) {
		int resumeId = Integer.parseInt(id);

		fillModelWithResumeInfo(model, resumeId);

		return "resume";
	}

	private void fillModelWithResumeInfo(Model model, int resumeId) {
		Resume resume = StorageService.getResumesForLoggedInUser().get(resumeId);

		model.addAttribute("resume", resume);
	}
}
