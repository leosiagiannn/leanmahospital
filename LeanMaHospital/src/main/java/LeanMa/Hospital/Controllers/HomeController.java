package LeanMa.Hospital.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import LeanMa.Hospital.POJOS.Patient;
import LeanMa.Hospital.POJOS.User;
import LeanMa.Hospital.Utils.Util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.query.Query;

@Controller
public class HomeController {
	public static void pl(String Line) { System.out.println(Line); }
	
	private List<Patient> patients = new ArrayList<Patient>();
	private List<User> users = new ArrayList<User>();

	@GetMapping("/home")
	public String homePage(Model model) {
		this.patients = getAllPatient(Util.getSessionFactory().openSession());
		model.addAttribute("patients", patients);
		return "home";
	}
	
	@GetMapping("/register")
	public String registerPage(Map<String, Object> model) {
		model.put("patient", new Patient());
		return "register";
	}
	
	@RequestMapping(value = "/daftar", method = RequestMethod.POST)
	public String registrationProcess(@ModelAttribute("patient") Patient patient) {
		insertPatient(Util.getSessionFactory().openSession(),patient);
		return "redirect:/home";
	}
	
	@GetMapping("/login")
	public String loginPage(Map<String, Object> model) {
		model.put("user", new User());
		return "login";
	}
	
	@RequestMapping(value = "/masuk", method = RequestMethod.POST)
	public String loginProcess(@ModelAttribute("user") User user) {
		this.users = getAllUser(Util.getSessionFactory().openSession());
		for(User  u : users) {
			if(u.getUsername().equals(user.getUsername()) 
			   && u.getPassword().equals(user.getPassword())){
				   return "redirect:/homeAdmin";
			   }
		}
		return "redirect:/home";
	}
	
	public static List<Patient> getAllPatient(Session sess) {
		Query q = sess.createQuery("from Patient");
		List<Patient> p = (List<Patient>)q.list();
		sess.disconnect();
		return p;
	}
	
	public static List<User> getAllUser(Session sess) {
		Query q = sess.createQuery("from User");
		List<User> p = (List<User>)q.list();
		sess.disconnect();
		return p;
	}
	
	public static void insertPatient (Session sess, Patient param) {
		Patient p = new Patient();
		p.setNik(param.getNik());
		p.setNama(param.getNama());
		p.setUmur(param.getUmur());
		p.setGender(param.getGender());
		p.setPenyakit(param.getPenyakit());
		
		sess.beginTransaction();
		sess.save(p);
		sess.getTransaction().commit();
		sess.disconnect();
	}
}
