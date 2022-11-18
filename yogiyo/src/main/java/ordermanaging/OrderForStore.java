package ordermanaging;

import java.util.Scanner;

import dao.CustomerDao;
import dao.MyOrderDao;
import sign01.StoreLogin;
import vo.Myorder;

public class OrderForStore {
	Scanner sc = new Scanner(System.in);

	public OrderForStore() {
		while(true){
			System.out.println("┏━━━━━━━━━━━━━━━━━━┓");
			System.out.println("┣━━━━━━주문조회━━━━━━┫");
			System.out.println("┗━━━━━━━━━━━━━━━━━━┛");
			System.out.println("1.주문완료 2.조리중 3.배달중 4.배달완료 5.상태변경 6.메인으로");
			String selector=sc.nextLine();
			switch(selector) {
			case "1":orderStep1();break;
			case "2":orderStep2();break;
			case "3":orderStep3();break;
			case "4":orderStep4();break;
			case "5":changeStep();break;
				}
			if(selector.equals("6"))break;
			}
	}
//우리가게로 들어온 주문 - 주문완료인거
	// 조리중, 배달중, 배달완료로 바꾸기
	// 주문 취소로 바꾸기
	public void orderStep1() { // 주문완료
		System.out.println("━━━━━━━주문완료━━━━━━━");
		MyOrderDao mord = new MyOrderDao();
		CustomerDao cd = new CustomerDao();
		for (Myorder mo : mord.selectO(StoreLogin.logon.getRegistNum(), "주문완료")) {
			System.out.println("주문번호: " + mo.getOrdernum());
			String[] menus = mo.getMenu().split(",");
			for (int i = 1; i < menus.length; i++) {
				System.out.println("메뉴 " + i + " : " + menus[i]);
			}
			System.out.println("금액: " + mo.getPrice());
			System.out.println("연락처: 0" + mo.getContect());
			if (mo.getRequest()!=null) {
				if(!mo.getRequest().equals("null")) {
					System.out.println("요구사항: " + mo.getRequest());
					}
				}
			System.out.println("--------------------------");
		}
	}

	public void orderStep2() { // 조리중
		System.out.println("━━━━━━━조리중━━━━━━━");
		MyOrderDao mord = new MyOrderDao();
		for (Myorder mo : mord.selectO(StoreLogin.logon.getRegistNum(), "조리중")) {
			System.out.println("주문번호: " + mo.getOrdernum());
			String[] menus = mo.getMenu().split(",");
			for (int i = 1; i < menus.length; i++) {
				System.out.println("메뉴 " + i + " : " + menus[i]);
			}
			System.out.println("금액: " + mo.getPrice());
			System.out.println("연락처: " + mo.getContect());
			if (mo.getRequest()!=null) {
				if(!mo.getRequest().equals("null")) {
					System.out.println("요구사항: " + mo.getRequest());
					}
				}
			System.out.println("--------------------------");
		}
	}

	public void orderStep3() { // 배달중
		System.out.println("━━━━━━━배달중━━━━━━━");
		MyOrderDao mord = new MyOrderDao();
		for (Myorder mo : mord.selectO(StoreLogin.logon.getRegistNum(), "배달중")) {
			System.out.println("주문번호: " + mo.getOrdernum());
			String[] menus = mo.getMenu().split(",");
			for (int i = 1; i < menus.length; i++) {
				System.out.println("메뉴 " + i + " : " + menus[i]);
			}
			System.out.println("금액: " + mo.getPrice());
			System.out.println("연락처: " + mo.getContect());
			if (mo.getRequest()!=null) {
				if(!mo.getRequest().equals("null")) {
					System.out.println("요구사항: " + mo.getRequest());
					}
				}
			System.out.println("--------------------------");
		}
	}

	public void orderStep4() { // 배달완료
		System.out.println("━━━━━━━배달완료━━━━━━━");
		MyOrderDao mord = new MyOrderDao();
		for (Myorder mo : mord.selectO(StoreLogin.logon.getRegistNum(), "배달완료")) {
			System.out.println("주문번호: " + mo.getOrdernum());
			String[] menus = mo.getMenu().split(",");
			for (int i = 1; i < menus.length; i++) {
				System.out.println("메뉴 " + i + " : " + menus[i]);
			}
			System.out.println("금액: " + mo.getPrice());
			System.out.println("연락처: " + mo.getContect());
			if (mo.getRequest()!=null) {
				if(!mo.getRequest().equals("null")) {
					System.out.println("요구사항: " + mo.getRequest());
					}
				}
			System.out.println("--------------------------");
		}
	}

	public void changeStep() {
		MyOrderDao mord = new MyOrderDao();
		System.out.println("상태를 변경할 주문번호를 입력하세요");
		String ordernum = sc.nextLine();
		System.out.println("1. 주문완료 2.조리중 3.배달중 4.배달완료 5.주문취소");
		String state = sc.nextLine();
		switch (state) {
		case "1":state = "주문완료";break;
		case "2":state = "조리중";break;
		case "3":state = "배달중";break;
		case "4":state = "배달완료";break;
		case "5":state = "주문취소";break;
		}
		if (mord.updateOstate(state,ordernum)) {
			System.out.println("변경이 완료되었습니다.");
		}
		
	}
}
