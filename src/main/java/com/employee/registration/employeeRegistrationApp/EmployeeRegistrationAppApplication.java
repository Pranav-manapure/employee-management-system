package com.employee.registration.employeeRegistrationApp;

import com.employee.registration.employeeRegistrationApp.entity.Employee;
import com.employee.registration.employeeRegistrationApp.repository.EmployeeRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.time.LocalDate;

@SpringBootApplication
public class EmployeeRegistrationAppApplication {

	public static void main(String[] args) {

		SpringApplication.run(EmployeeRegistrationAppApplication.class, args);
	}

//	@Bean
//	CommandLineRunner initData(EmployeeRepository employeeRepository) {
//		return args -> {
//			Employee employee1 = new Employee();
//			employee1.setName("Rohit");
//			employee1.setDob(LocalDate.of(2005, 2, 22));
//			employee1.setGender("Male");
//			employee1.setAddress("123 Main Ring Road");
//			employee1.setCity("Nagpur");
//			employee1.setState("Maharashtra");
//			employee1.setLoginId("Rohit123");
//			employee1.setPassword("pass@123");
//			employeeRepository.save(employee1);
//
//			Employee employee2 = new Employee();
//			employee2.setName("Sanjay");
//			employee2.setDob(LocalDate.of(1985, 11, 20));
//			employee2.setGender("Male");
//			employee2.setAddress("456 East Pune");
//			employee2.setCity("Pune");
//			employee2.setState("Maharashtra");
//			employee2.setLoginId("Sanjay123");
//			employee2.setPassword("pass@123");
//			employeeRepository.save(employee2);
//		};
//	}

}
