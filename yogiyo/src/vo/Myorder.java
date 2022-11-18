package vo;

public class Myorder {
	String ordernum;
	String registnum;
	String userid;
	String contect;
	String request;
	String menu;
	int price;
	String payment;
	String state;
	String couponnum;
	String eventname;
	String address;
	
	
	public Myorder() {	}


	public Myorder(String ordernum, String registnum, String userid, String contect, String request, String menu,
			int price, String payment, String state, String couponnum, String eventname, String address) {
		super();
		this.ordernum = ordernum;
		this.registnum = registnum;
		this.userid = userid;
		this.contect = contect;
		this.request = request;
		this.menu = menu;
		this.price = price;
		this.payment = payment;
		this.state = state;
		this.couponnum = couponnum;
		this.eventname = eventname;
		this.address = address;
	}


	public Myorder(String ordernum, String registnum, String userid, String contect, String request, String menu,
			int price, String payment, String state, String couponnum, String eventname) {
		super();
		this.ordernum = ordernum;
		this.registnum = registnum;
		this.userid = userid;
		this.contect = contect;
		this.request = request;
		this.menu = menu;
		this.price = price;
		this.payment = payment;
		this.state = state;
		this.couponnum = couponnum;
		this.eventname = eventname;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getOrdernum() {
		return ordernum;
	}


	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}


	public String getRegistnum() {
		return registnum;
	}


	public void setRegistnum(String registnum) {
		this.registnum = registnum;
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getContect() {
		return contect;
	}


	public void setContect(String contect) {
		this.contect = contect;
	}


	public String getRequest() {
		return request;
	}


	public void setRequest(String request) {
		this.request = request;
	}


	public String getMenu() {
		return menu;
	}


	public void setMenu(String menu) {
		this.menu = menu;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getPayment() {
		return payment;
	}


	public void setPayment(String payment) {
		this.payment = payment;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getCouponnum() {
		return couponnum;
	}


	public void setCouponnum(String couponnum) {
		this.couponnum = couponnum;
	}


	public String getEventname() {
		return eventname;
	}


	public void setEventname(String eventname) {
		this.eventname = eventname;
	}
	
	
}
