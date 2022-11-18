package vo;

public class Coupon {
String couponnum;
int discount;
public Coupon() {
	super();
	// TODO Auto-generated constructor stub
}
public Coupon(String couponnum, int discount) {
	super();
	this.couponnum = couponnum;
	this.discount = discount;
}
public String getCouponnum() {
	return couponnum;
}
public void setCouponnum(String couponnum) {
	this.couponnum = couponnum;
}
public int getDiscount() {
	return discount;
}
public void setDiscount(int discount) {
	this.discount = discount;
}

}
