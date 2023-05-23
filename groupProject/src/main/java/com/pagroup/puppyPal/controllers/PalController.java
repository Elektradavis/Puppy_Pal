package com.pagroup.puppyPal.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.pagroup.puppyPal.models.Dog;
import com.pagroup.puppyPal.models.Tracking;
import com.pagroup.puppyPal.models.User;
import com.pagroup.puppyPal.services.DogService;
import com.pagroup.puppyPal.services.TrackingService;
import com.pagroup.puppyPal.services.UserService;

@Controller
public class PalController {
	@Autowired
	private UserService users;
	@Autowired
	private DogService dogs;
	@Autowired
	private TrackingService trackings;
	
	@GetMapping("/dashboard")
	public String dasboard(Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		}
		model.addAttribute("user", users.findById((Long) session.getAttribute("userId")));
		model.addAttribute("dog", dogs.allDogs());
		return "dashboard.jsp";
	}
	
	@GetMapping("/newDog")
	public String newDog(@ModelAttribute("dog") Dog dog, Model model, HttpSession session) {
		User user = users.findById((Long) session.getAttribute("userId"));
		model.addAttribute("user", user);
		return "create.jsp";
	}
	
	@PostMapping("/newDog")
	public String createDog(@Valid @ModelAttribute("dog") Dog dog, BindingResult result) {
		if(result.hasErrors()) {
			return "create.jsp";
		}
		dogs.createOrUpdate(dog);
		return "redirect:/dashboard";
	}
	
	@GetMapping("/trackings/{dogId}")
	public String trackings(@PathVariable("dogId") Long id, Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		}
		model.addAttribute("dog", dogs.findById((id)));
		model.addAttribute("tracking", trackings.allTrackings());
		return "trackings.jsp";
	}
	
	@GetMapping("/trackings/{dogId}/newTracking")
	public String newTracking(@PathVariable("dogId") Long id, @ModelAttribute("tracking") Tracking tracking, Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		}
		User user = users.findById((Long) session.getAttribute("userId"));
		model.addAttribute("user", user);
		model.addAttribute("dog", dogs.findById(id));
		return "createTracking.jsp";
	}
	
	@PostMapping("/trackings/{dogId}/newTracking")
	public String createTracking(@PathVariable("dogId") Long id, @Valid @ModelAttribute("tracking") Tracking tracking, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "createTracking.jsp";
		}
		model.addAttribute("dog", dogs.findById((id)));
		trackings.createOrUpdate(tracking);
		return "redirect:/dashboard";
	}
	
	
}