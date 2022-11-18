package vo;

public class Admin {
String adminID;
String pw;
public Admin() {
	super();
	// TODO Auto-generated constructor stub
}
public Admin(String adminID, String pw) {
	super();
	this.adminID = adminID;
	this.pw = pw;
}
public String getAdminID() {
	return adminID;
}
public void setAdminID(String adminID) {
	this.adminID = adminID;
}
public String getPw() {
	return pw;
}
public void setPw(String pw) {
	this.pw = pw;
}

}
