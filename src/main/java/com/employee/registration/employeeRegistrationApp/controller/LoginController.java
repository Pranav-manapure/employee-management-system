package com.employee.registration.employeeRegistrationApp.controller;

import com.employee.registration.employeeRegistrationApp.entity.Employee;
import com.employee.registration.employeeRegistrationApp.service.EmployeeService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Optional;

@Controller
public class LoginController {


    private final EmployeeService employeeService;

    @Autowired
    public LoginController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }


    @PostMapping("/login")
    public String login(@RequestParam String loginId, @RequestParam String password, RedirectAttributes redirectAttributes) {
        System.out.println("Attempting login with loginId: " + loginId + " and password: " + password);

        Optional<Employee> employee = employeeService.authenticate(loginId, password);

        System.out.println("Authentication result: " + employee);

        if (employee.isPresent()) {
            // Add the employee name to the redirect attributes
            redirectAttributes.addAttribute("employeeName", employee.get().getName());

            System.out.println("Employee name passed to redirect: " + employee.get().getName());
            System.out.println("Redirecting to welcome page.");
            return "redirect:/welcome";    // Redirect to welcome page if login is successful
        } else {
            System.out.println("Login failed. Returning to login page.");
            return "login";  // Return to login page if credentials are incorrect
        }
    }


    @GetMapping("/welcome")
    public String showWellcomePage(@RequestParam String employeeName, Model model) {
        System.out.println("Welcome Page Rendering...");

        // Add the employeeName to the model so it can be accessed in the JSP
        model.addAttribute("employeeName", employeeName);

        return "welcome";  // Render the welcome page
    }


    @PostMapping("/logout")
    public String logout(HttpSession session) {
        // Invalidate the session to log the user out
        session.invalidate();
        System.out.println("Logout Completed- redirecting to login Page");
        return "redirect:/login";  // Redirect to the login page
    }




}

