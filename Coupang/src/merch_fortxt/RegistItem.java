package merch_fortxt;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class RegistItem {		//레지스트 클래스를 사용하는 이유 : 아이템을 리스트로 만들기 위해서
	ArrayList<Item> items ;
	Scanner scstr;
	public RegistItem() {
		this.items = new ArrayList<Item>();
		this.scstr = new Scanner(System.in);
	}

	public void RegistItemLine() {
		while (true) {
			Item rm2 = new Item();
			items.add(rm2);
			System.out.println("등록 내용");
			System.out.println("카테고리\t상품명\t가격\t브랜드\t상세정보\t재고");
			System.out.println(rm2.category + "\t" + rm2.item + "\t" + rm2.price + "\t" + rm2.brand + "\t" + rm2.detail
					+ "\t" + rm2.stock);
			System.out.println("종료하려면 N, 계속하려면 아무키나 입력하세요");
			String keepRegist = scstr.nextLine();
			if (keepRegist.equals("N")) {
				break;
			}break;
		}
	}

	public void RegistItemlist() {
		String bulkitem="";
		System.out.println("업로드할 파일 위치를 입력하세요(드라이브://위치~파일명.txt)");
		String rout=scstr.nextLine();
		File f1=new File(rout);
		try {
			BufferedReader r1=new BufferedReader(new FileReader(f1));
			while(r1.read()!=-1) {
			bulkitem=r1.readLine();
			String ss[] = bulkitem.split("--");
			items.add(new Item(ss[0],ss[1],ss[2],ss[3],ss[4],ss[5]));
			}
			r1.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void showAllname() {
		for(Item i:items) {
			System.out.println(i.item);
		}
	}
}
