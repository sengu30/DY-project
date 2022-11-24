import java.util.Scanner;

import dao.CustomerDao;

public class homeForStore {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
	/*	StoreLogin sl= new StoreLogin();
		
		sl.login();		//로그인
		
		while(true) {
		System.out.println("1.주문조회 2.메뉴관리 3.정보수정");
		int gear=sc.nextInt();
		switch(gear) {
		case 1:OrderForStore ofs=new OrderForStore();break;
		case 2:MenuManaging mnm=new MenuManaging();break;
			}
		}*/
		
		CustomerDao cd=new CustomerDao();
		String id="jeju";
		String pw="1234";
		if(id!=null){
			if(id.trim()!=""){
				cd.selectlogin(id, pw);
			}
		}
		System.out.println(CustomerDao.Logon2.getUserID());
	}

}


//사업자 1018126409
//비밀번호 12341234