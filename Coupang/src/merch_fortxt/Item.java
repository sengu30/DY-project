package merch_fortxt;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;
import java.util.StringTokenizer;

public class Item {
	public String category;
	public String item;
	public String price;
	public String brand;
	public String detail;
	public String stock;
	public static String dir = null;
	File newitem;
	int reviewcount=0;
	int starSum=0;
	double avgStar;
	Scanner scstr = new Scanner(System.in);
	Scanner scint = new Scanner(System.in);

	public Item() {
		System.out.println("카테고리를 입력하세요");
		this.category = scstr.nextLine();
		System.out.println("상품명을 입력하세요");
		this.item = scstr.nextLine();
		System.out.println("가격을 입력하세요");
		this.price = scint.nextLine();
		System.out.println("브랜드를 입력하세요");
		this.brand = scstr.nextLine();
		System.out.println("상세정보를 입력하세요");
		this.detail = scstr.nextLine();
		System.out.println("재고수량을 입력하세요");
		this.stock = scint.nextLine();
		toFile();
	}

	public Item(String category, String item, String price, String brand, String detail, String stock) {
		this.category = category;
		this.item = item;
		this.price = price;
		this.brand = brand;
		this.detail = detail;
		this.stock = stock;
		toFile();
	}
	public void getInfo() {
		System.out.println("┏━━━━━━━━━━━━━━━━━━━━━━━━┓");
		System.out.println("카테고리: "+this.category);
		System.out.println("상품명: "+this.item);
		System.out.println("가격: "+this.price+"원");
		System.out.println("제조/유통 :"+this.brand);
		System.out.println("필수표기정보: "+this.detail);
		if(starSum!=0)System.out.println("평균별점: "+this.avgStar);
		System.out.println("┗━━━━━━━━━━━━━━━━━━━━━━━━┛");
	}
	
	
	///////////////
	public void toFile() {
		if(dir==null){
			System.out.println("아이템 파일을 저장할 경로를 입력하세요.");
			dir=scstr.nextLine();
			}
		File directory= new File(dir);
		if(!directory.exists()) {directory.mkdirs();}
		Path p1=Paths.get(dir+"\\"+ item +".txt");
		newitem = p1.toFile();
	try {
			if (!newitem.exists()) {
				newitem.createNewFile();
			FileWriter newWrt = new FileWriter(newitem);
			newWrt.write(this.category);
			newWrt.write("--");
			newWrt.write(this.item);
			newWrt.write("--");
			newWrt.write(this.price);
			newWrt.write("--");
			newWrt.write(brand);
			newWrt.write("--");
			newWrt.write(detail);
			newWrt.write("--");
			newWrt.write(stock);
			newWrt.flush();
			newWrt.close();
			}else {
				System.out.println("이미 존재하는 상품입니다. 수정 또는 삭제 후 재등록 해주세요.");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	////////////////////////////////
	public void setReview() {
		int star=0;
		System.out.println("별점을 입력해주세요(1~5)");
		while (true) {
			star=scint.nextInt();
			if (star >=1 && star<=5) {
				this.starSum+=star;
				reviewcount++;
				break;
			}
			else{
				System.out.println("별점을 1~5사이로 입력해주세요");
			}
		}
		System.out.println("후기를 작성해주세요");
		String writereview = scstr.nextLine();
		try {
			FileWriter newWrt = new FileWriter(newitem, true);
			newWrt.write("\n" + LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy년MM월dd일 HH시mm분")));
			newWrt.write("\n" + (int)star + "점");
			newWrt.write("\t:" + writereview);
			newWrt.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		avgStar=(starSum/reviewcount);
	}
	
	
	public void getReview() {
		try {
			FileReader fr1=new FileReader(newitem);
			BufferedReader bfr=new BufferedReader(fr1); 
			String rv1="";
			int rv0=0; 		//맨첫줄 정보 빼고
			while((rv1=bfr.readLine())!=null){
				if(rv0!=0) {
				System.out.println(rv1);
				System.out.println("┗━━━━━━━━━━━━━━━━━━━━━━━━┛");
				}
				rv0++;
			}
			bfr.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	}
	
}
