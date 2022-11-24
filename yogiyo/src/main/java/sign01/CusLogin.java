package sign01;

import java.util.Scanner;

import dao.CustomerDao;
import vo.Customer;

public class CusLogin {
	Scanner sc = new Scanner(System.in);
	public static Customer logon=new Customer();
	CustomerDao cd=new CustomerDao();
	boolean ison=false;
	
	public CusLogin() {
	/*	while(true) {
		System.out.println("1.로그인 2. 비회원 3.회원가입");
		String switching=sc.nextLine();
		switch(switching) {
		case "1":login();break;
		case "2":getAddress();break;
		case "3":CusSignup su=new CusSignup();break;
		}
		if(ison) {break;}
		}*/
	}
	
	public void login() {
	System.out.println("로그인");
	System.out.println("ID 입력(필수):");
	String userID=sc.nextLine();
	System.out.println("비밀번호 입력(필수):");
	String pw=sc.nextLine();
	logon=cd.login(new Customer(userID,pw));
	ison=true;
	if(logon==null) {
		System.out.println("로그인에 실패했습니다. "
				+ "아이디, 비밀번호를 확인하세요");
		ison=false;
	}
	}
	
	public void getAddress() {
		System.out.println("어디로 배달해 드릴까요?");
		String address=sc.nextLine();
		logon.setAddress(address);
		ison=true;
	}
	
}
