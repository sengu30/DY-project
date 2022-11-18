package ordermanaging;

import java.util.Scanner;

import dao.MenuDao;
import sign01.StoreLogin;
import vo.Menu;

public class MenuManaging {
	Scanner sc = new Scanner(System.in);
	

	public MenuManaging() {
		while(true){
			System.out.println("┏━━━━━━━━━━━━━━━━━━┓");
			System.out.println("┣━━━━━━메뉴관리━━━━━━┫");
			System.out.println("┗━━━━━━━━━━━━━━━━━━┛");
			System.out.println("1.메뉴 조회 2.메뉴 등록 3.수정/삭제 4.메인으로");
			String selector=sc.nextLine();
			switch(selector) {
			case "1":seeMenu();break;
			case "2":addMenu();break;
				}
			if(selector.equals("4"))break;
			}
	}

	public void seeMenu() {	//등록된 메뉴 보기
		MenuDao md = new MenuDao();
		System.out.println("┌──메뉴");
		for (Menu mm : md.showMenu(StoreLogin.logon.getRegistNum())) {
			System.out.println("┌─────────────"+mm.getMenuname());
			System.out.println("└─────"+mm.getDescription()+"\t─────\t"+mm.getPrice() + "원─┘");
		}
	}

	public void addMenu() {
		System.out.println("─────────새로운 메뉴를 등록합니다─────────");
		System.out.println("메뉴이름: ");
		String menuname=sc.nextLine();
		System.out.println("금액");
		int price=Integer.parseInt(sc.nextLine());
		System.out.println("설명");
		String description=sc.nextLine();
		MenuDao md = new MenuDao();
	md.insertMenu(new Menu(StoreLogin.logon.getRegistNum(),menuname,price,description));
	System.out.println("등록완료");
	
	}

}
