import java.util.Scanner;

import ordermanaging.MenuManaging;
import ordermanaging.OrderForStore;
import sign01.StoreLogin;

public class homeForStore {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		StoreLogin sl= new StoreLogin();
		
		sl.login();		//로그인
		
		while(true) {
		System.out.println("1.주문조회 2.메뉴관리 3.정보수정");
		int gear=sc.nextInt();
		switch(gear) {
		case 1:OrderForStore ofs=new OrderForStore();break;
		case 2:MenuManaging mnm=new MenuManaging();break;
			}
		}
	}

}


//사업자 1018126409
//비밀번호 12341234