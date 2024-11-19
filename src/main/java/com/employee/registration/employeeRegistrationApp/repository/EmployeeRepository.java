package com.employee.registration.employeeRegistrationApp.repository;



import com.employee.registration.employeeRegistrationApp.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    Optional<Employee> findByLoginIdAndPassword(String loginId, String password);
}


