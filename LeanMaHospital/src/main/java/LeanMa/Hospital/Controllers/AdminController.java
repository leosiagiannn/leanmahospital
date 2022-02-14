package LeanMa.Hospital.Controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.query.Query;
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

@Controller
public class AdminController {
public static void pl(String Line) { System.out.println(Line); }
	
	private List<Patient> patients = new ArrayList<Patient>();
	private List<User> users = new ArrayList<User>();

	@RequestMapping("/homeAdmin")
	public String homePageAdmin(Model model) {
		this.patients = getAllPatient(Util.getSessionFactory().openSession());
		model.addAttribute("patients", patients);
		return "homeAdmin";
	}
	
	@GetMapping("/delete/{id}")	//Mapping URL
	public String deletePatient(@PathVariable("id") int id) {
		deletePatient(Util.getSessionFactory().openSession(),id);
		return "redirect:/homeAdmin";
	}
	
	@GetMapping("/update/{id}")	//Mapping URL
	public String updatePatient(Model model, @PathVariable("id") int id, Map<String, Object> modelInput) {
		this.patients = getAllPatient(Util.getSessionFactory().openSession());
		List<Patient> patient = new ArrayList<Patient>();
		for(Patient p : patients) {
			if(p.getId() == id) {
				patient.add(p);
			}
		}
		model.addAttribute("patient", patient);
		modelInput.put("p", new Patient());
		return "edit";
	}
	
	@RequestMapping(value = "update/ubahPatient", method = RequestMethod.POST)
	public String updateProcess(@ModelAttribute("p") Patient patient) {
		updatePatientData(Util.getSessionFactory().openSession(),patient);
		return "redirect:/homeAdmin";
	}
	
	@GetMapping("/detail/{id}")	//Mapping URL
	public String detailPatient(Model model, @PathVariable("id") int id) {
		this.patients = getAllPatient(Util.getSessionFactory().openSession());
		List<Patient> patient = new ArrayList<Patient>();
		for(Patient p : patients) {
			if(p.getId() == id) {
				patient.add(p);
			}
		}
		model.addAttribute("patient", patient);
		return "detail";
	}
	
	@GetMapping("/logout")
	public String logout(Model model) {
		return "redirect:/home";
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
	
	public static void updatePatientData (Session sess, Patient param) {
		Patient p = new Patient();
		p.setId(param.getId());
		p.setNama(param.getNama());
		p.setNik(param.getNik());
		p.setUmur(param.getUmur());
		p.setGender(param.getGender());
		p.setPenyakit(param.getPenyakit());
		
		sess.beginTransaction();
		sess.update(p);
		sess.getTransaction().commit();
		sess.disconnect();
	}
	
	public static void deletePatient (Session sess, int id) {
		Patient p = new Patient();
		p.setId(id);

		sess.beginTransaction();
		sess.delete(p);
		sess.getTransaction().commit();
		sess.disconnect();
	}
	
	public static List<Patient> getAllPatient(Session sess) {
		Query q = sess.createQuery("from Patient");
		List<Patient> p = (List<Patient>)q.list();
		sess.disconnect();
		return p;
	}
}
