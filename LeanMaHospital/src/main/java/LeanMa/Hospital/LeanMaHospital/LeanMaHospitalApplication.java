package LeanMa.Hospital.LeanMaHospital;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("LeanMa.*")
public class LeanMaHospitalApplication {

	public static void main(String[] args) {
		SpringApplication.run(LeanMaHospitalApplication.class, args);
	}

}