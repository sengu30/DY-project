package vo;

public class Events {
String eventname;
int discount;
String condi;
String registnum;
public Events(String eventname, int discount, String condi, String registnum) {
	this.eventname = eventname;
	this.discount = discount;
	this.condi = condi;
	this.registnum = registnum;
}

	public Events() {
		super();
	}
public String getEventname() {
	return eventname;
}
public void setEventname(String eventname) {
	this.eventname = eventname;
}
public int getDiscount() {
	return discount;
}
public void setDiscount(int discount) {
	this.discount = discount;
}
public String getCondi() {
	return condi;
}
public void setCondi(String condi) {
	this.condi = condi;
}
public String getRegistnum() {
	return registnum;
}
public void setRegistnum(String registnum) {
	this.registnum = registnum;
}

}
