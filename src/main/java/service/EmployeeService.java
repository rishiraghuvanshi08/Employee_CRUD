package service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import entity.Employee;

public class EmployeeService {
	List<Employee> list = new ArrayList<>();
	
	public EmployeeService() {
		Employee e1 = new Employee(1, "rishi08", "Rishi", "Raghuvanshi", true, 35000, "Rishi08");
		Employee e2 = new Employee(2, "chirag11", "Chirag", "Tongia", false, 41000, "Chirag11");
		Employee e3 = new Employee(3, "abhi001", "Abhishek", "Patidar", false, 45000, "abhi001");
		Employee e4 = new Employee(4, "rahul28", "Rahul", "Kumar", false, 40000, "rahul28");
		list.add(e1);
		list.add(e2);
		list.add(e3);
		list.add(e4);
	}
	public List<Employee> getList(){
		return list;
	}
	public Employee loginCheck(String username, String password) {
		Optional<Employee> optEmp = list.stream().filter(e -> e.getUsername().equals(username) && e.getPassword().equals(password)).findFirst();
		if(optEmp.isPresent()) {
			return optEmp.get();
		} else {
			return null;
		}
	}
}
