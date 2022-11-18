package vo;

public class Customer {
	private String userID;
	private String pw;
	private String name;
	private String address;
	private String mobile;

	public Customer(String userID, String pw) {
		this.userID = userID;
		this.pw = pw;
	}
	
	public Customer(String userID, String pw, String name, String address, String mobile) {
		this.userID = userID;
		this.pw = pw;
		this.name = name;
		this.address = address;
		this.mobile = mobile;
	}
	

	public Customer() {
		super();
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

}
