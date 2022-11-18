package sign01;

import java.util.Scanner;

import dao.StoreDao;
import vo.Store;

public class StoreLogin {
	public static Store logon = new Store();
	//스태틱 StoreLogin.logon
	Scanner sc = new Scanner(System.in);
	StoreDao sd = new StoreDao();

	public void login() {
		System.out.println("사업자등록번호를 입력하세요");
		String registnum = sc.nextLine();
		System.out.println("비밀번호를 입력하세요");
		String pw = sc.nextLine();
		logon = sd.SelectLogin(registnum, pw);
		if (logon == null) {
			System.out.println("로그인에 실패했습니다. 사업자번호와 비밀번호를 확인하세요");
		}
		
	}
}
