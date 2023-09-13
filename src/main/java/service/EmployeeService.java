package service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import entity.Employee;

public class EmployeeService {
	public static List<Employee> list = new ArrayList<>();
	static int id;
	
	public void loadData(){
		Employee e1 = new Employee(1, "rishi08", "Rishi", "Raghuvanshi", true, 35000, "123");
		Employee e2 = new Employee(2, "chirag11", "Chirag", "Tongia", false, 41000, "123");
		Employee e3 = new Employee(3, "abhi001", "Abhishek", "Patidar", false, 45000, "123");
		Employee e4 = new Employee(4, "rahul28", "Rahul", "Kumar", false, 40000, "123");
		list.add(e1);
		list.add(e2);
		list.add(e3);
		list.add(e4);
	}
	public static List<Employee> getList(){
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
	public boolean addEmployee(String username, String firstName, String lastName, boolean idAdmin, float salary, String password) {
		id = list.get(list.size()-1).getId() + 1;
		Employee newEmp = new Employee(id, username, firstName, lastName, idAdmin, salary, password);
		
		if(newEmp != null) {
			list.add(newEmp);
			return true;
		}
		return false;
	}
	public boolean deleteEmployee(int id) {
		Optional<Employee> empToDelete = list.stream().filter(emp -> emp.getId() == id).findFirst();
		
		if(empToDelete.isPresent()) {
			Employee toDelete = empToDelete.get();
			list.remove(toDelete);
			return true;
		}
		else {
			return false;
		}
	}
	public boolean updateEmployeeDetails(int id,String username, String firstName, String lastName, boolean isAdmin, float salary) {
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).getId() == id) {
				list.get(i).setUsername(username);
				list.get(i).setFirstName(firstName);
				list.get(i).setLastName(lastName);
				list.get(i).setAdmin(isAdmin);
				list.get(i).setSalary(salary);
				return true;
			}
		}
		return false;
	}
	public boolean updateMyDetails(int id, String username, String firstName, String lastName, float salary, String password) {
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).getId() == id) {
				list.get(i).setUsername(username);
				list.get(i).setFirstName(firstName);
				list.get(i).setLastName(lastName);
				list.get(i).setSalary(salary);
				list.get(i).setPassword(password);
				return true;
			}
		}
		return false;
	}
}
