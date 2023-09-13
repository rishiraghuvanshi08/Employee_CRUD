package entity;

public class Employee {
	private int id;
	private String username;
	private String firstName;
	private String lastName;
	private boolean isAdmin;
	private float salary;
	private String password;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public boolean isAdmin() {
		return isAdmin;
	}
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	public float getSalary() {
		return salary;
	}
	public void setSalary(float salary) {
		this.salary = salary;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Employee(int id, String username, String firstName, String lastName, boolean isAdmin,
			float salary, String password) {
		super();
		this.id = id;
		this.username = username;
		this.firstName = firstName;
		this.lastName = lastName;
		this.isAdmin = isAdmin;
		this.salary = salary;
		this.password = password;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", username=" + username + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", isAdmin=" + isAdmin + ", salary=" + salary + ", password=" + password + "]";
	}	
	
}
