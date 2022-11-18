package sign01;

import java.util.Scanner;

import dao.AdminDao;
import vo.Admin;

public class AdmLogin {
	public static Admin logon = new Admin();
	Scanner sc = new Scanner(System.in);
	AdminDao ad=new AdminDao();

	public AdmLogin() {}

	public void login() {
		System.out.println("관리자 아이디를 입력하세요");
		String adminID=sc.nextLine();
		System.out.println("비밀번호를 입력하세요");
		String pw =sc.nextLine();
		logon = ad.select(adminID, pw);
		if (logon == null) {
			System.out.println("로그인에 실패했습니다. 아이디와 비밀번호를 확인하세요");
		}
	}
	
}
