package vo;

public class Menu {
	String registNum;
	String menuname ;
	int price;
	String description;
	public Menu() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Menu(String registNum, String menuname, int price, String description) {
		super();
		this.registNum = registNum;
		this.menuname = menuname;
		this.price = price;
		this.description = description;
	}
	public String getRegistNum() {
		return registNum;
	}
	public void setRegistNum(String registNum) {
		this.registNum = registNum;
	}
	public String getMenuname() {
		return menuname;
	}
	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
