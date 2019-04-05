package com.myresume.service;

import java.util.ArrayList;
import java.util.List;

import com.myresume.model.Resume;
import com.myresume.model.User;

public class StorageService {

	private static User loggedInUser;
	private static List<Resume> resumes;
	
	public static void createResume(Resume resume) {
		if (resume == null)
			return;
		
		resumes.add(resume);
	}

	public static List<Resume> getResumesForLoggedInUser() {
		if (resumes == null || resumes.isEmpty()) {
			initResumes();
		}

		return resumes;
	}

	private static void initResumes() {
		resumes = new ArrayList<Resume>();

		Resume resumeOne = new Resume();
		resumeOne.setName("Resume for Google");
		resumeOne.setAboutme("Software Engineering student");

		Resume resumeTwo = new Resume();
		resumeTwo.setName("Resume for Microsoft");
		resumeTwo.setAboutme("Dot Net Software Engineer");

		Resume resumeThree = new Resume();
		resumeThree.setName("Resume for Amazon");
		resumeThree.setAboutme("Serverless, AWS Lambda Engineering");

		Resume resumeFour = new Resume();
		resumeFour.setName("Resume for Apple");
		resumeFour.setAboutme("iOS Developer");

		Resume resumeFive = new Resume();
		resumeFive.setName("Resume for Nordeus");
		resumeFive.setAboutme("Game Designer");

		Resume resumeSix = new Resume();
		resumeSix.setName("Hobby resume");
		resumeSix.setAboutme("Guitar player");

		resumes.add(resumeOne);
		resumes.add(resumeTwo);
		resumes.add(resumeThree);
		resumes.add(resumeFour);
		resumes.add(resumeFive);
		resumes.add(resumeSix);
	}

	public static User getLoggedInUser() {
		if (loggedInUser == null) {
			initUser();
		}

		return loggedInUser;
	}

	private static void initUser() {
		loggedInUser = new User();

		loggedInUser.setUsername("oskar");
		loggedInUser.setPassword("oskar");
		loggedInUser.setName("Oskar");
	}

	public static boolean canUserLogin(User user) {
		if (user == null)
			return false;

		if (user.getUsername().equals(getLoggedInUser().getUsername())
				&& user.getPassword().equals(getLoggedInUser().getPassword())) {
			return true;
		}

		return false;
	}
}
