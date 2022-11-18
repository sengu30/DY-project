package vo;

public class Store {
	String RegistNum;
	String Storename;
	String RPname;
	String contact;
	String pw;
	String address;
	String category;
	String minOrder;
	String brand;
	String origin;
	String state;
	String businesshours;
	String avgstar;
	int cntreview;
	int countcmmnt;

	public Store() {	}
	
	//카테고리별 보기에서 보여지는 정보만
	public Store(String registNum, String storename,String category, String minOrder, String brand) {
		RegistNum = registNum;
		Storename = storename;
		this.category = category;
		this.minOrder = minOrder;
		this.brand = brand;
	}
	
	public Store(String registNum, String storename, String address,
			String category, String minOrder, String brand, String origin, String state, String businesshours) {
		super();
		RegistNum = registNum;
		Storename = storename;
		this.address = address;
		this.category = category;
		this.minOrder = minOrder;
		this.brand = brand;
		this.businesshours=businesshours;
		this.state = state;
	}

	public Store(String registNum, String storename, String rPname, String contact, String pw, String address,
			String category, String minOrder, String brand, String origin,
			String state, String businesshours) {
		super();
		RegistNum = registNum;
		Storename = storename;
		RPname = rPname;
		this.contact = contact;
		this.pw = pw;
		this.address = address;
		this.category = category;
		this.minOrder = minOrder;
		this.brand = brand;
		this.businesshours = businesshours;
		this.origin = origin;
		this.state = state;
	}
	

	public String getRegistNum() {
		return RegistNum;
	}

	public void setRegistNum(String registNum) {
		RegistNum = registNum;
	}

	public String getStorename() {
		return Storename;
	}

	public void setStorename(String storename) {
		Storename = storename;
	}

	public String getRPname() {
		return RPname;
	}

	public void setRPname(String rPname) {
		RPname = rPname;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getMinOrder() {
		return minOrder;
	}

	public void setMinOrder(String minOrder) {
		this.minOrder = minOrder;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getBusinesshours() {
		return businesshours;
	}

	public void setBusinesshours(String businesshours) {
		this.businesshours = businesshours;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getAvgstar() {
		return avgstar;
	}

	public void setAvgstar(String avgstar) {
		this.avgstar = avgstar;
	}

	public int getCntreview() {
		return cntreview;
	}

	public void setCntreview(int cntreview) {
		this.cntreview = cntreview;
	}

	public int getCountcmmnt() {
		return countcmmnt;
	}

	public void setCountcmmnt(int countcmmnt) {
		this.countcmmnt = countcmmnt;
	}

	
}
