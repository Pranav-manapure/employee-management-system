package com.employee.registration.employeeRegistrationApp.service;

import com.employee.registration.employeeRegistrationApp.entity.Employee;
import com.employee.registration.employeeRegistrationApp.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EmployeeService {

    private final EmployeeRepository employeeRepository;

    @Autowired
    public EmployeeService(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    public void save(Employee employee) {
        employeeRepository.save(employee);
    }

    public Optional<Employee> authenticate(String loginId, String password) {
        return employeeRepository.findByLoginIdAndPassword(loginId, password);
    }

}

