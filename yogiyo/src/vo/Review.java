package vo;

public class Review {
	String ordernum;
	int star;
	String review;
	String cmmnt;
	
	public String getOrdernum() {
		return ordernum;
	}
	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getCmmnt() {
		return cmmnt;
	}
	public void setCmmnt(String cmmnt) {
		this.cmmnt = cmmnt;
	}
	public Review(String ordernum, int star, String review, String cmmnt) {
		super();
		this.ordernum = ordernum;
		this.star = star;
		this.review = review;
		this.cmmnt = cmmnt;
	}
	public Review(int star, String review, String cmmnt) {
		this.star = star;
		this.review = review;
		this.cmmnt = cmmnt;
	}
	
	public Review() {
		super();
	}
}
