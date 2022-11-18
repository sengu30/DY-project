package sign01;

import java.util.Scanner;
import dao.CustomerDao;
import vo.Customer;

public class CusSignup {
Scanner sc = new Scanner(System.in);
Customer nu = new Customer();
CustomerDao cd = new CustomerDao();

	public CusSignup() {	//인스턴스 만들면 생성자에서 모두 실행
		enterID();
		enterPW();
		enterMobile();
		enterInfo();
		signup();
	}

	public void enterID() {
		while (true) {
			System.out.println("사용할 아이디를 입력하세요: ");
			String userID = sc.nextLine().toLowerCase();
			int dupcheck = 0; // 아이디 중복일때 1이 되도록
			for (Customer cc : cd.selectC()) {
				if (cc.getUserID().equals(userID)) {
					dupcheck++;
				}
			}
			if (dupcheck == 1) {
				System.out.println("중복된 아이디입니다. 다른 아이디를 입력해주세요."); //while문 처음으로 돌아가기
			} else {
				System.out.println("사용가능한 아이디입니다");
				nu.setUserID(userID);
				break;	//while탈출
			}
		}
	}

	public void enterPW() {
		while (true) {
			System.out.println("비밀번호를 입력하세요(8~20자): ");
			String pw = sc.nextLine();
			if (pw.length() >= 8 && pw.length() <= 20) {
				nu.setPw(pw);
				break;	//while 탈출
			} else {
				System.out.println("8~20자 이내로 입력해주세요");
			}
		}
	}

	public void enterMobile() {
		while (true) {
			System.out.println("휴대전화 번호를 입력하세요(숫자만): ");
			String mobile = sc.nextLine();
			int dupcheck = 0;
			if (mobile.length() == 11) {
				for (Customer cc : cd.selectC()) {
					if (cc.getMobile().equals(mobile)) {
						dupcheck++;
					}
				}
				if (dupcheck == 1) {
					System.out.println("중복된 전화번호입니다."); //while문 처음으로 돌아가기
				} else {
					nu.setMobile(mobile);
					break;
				}
			} else {
				System.out.println("11자리 숫자만 입력해주세요."); //while문 처음으로 돌아가기
			}
		}
	}
	public void enterInfo() {
		while (true) {
			System.out.println("이름을 입력하세요: ");
			String name = sc.nextLine();
			if (name.length() < 1 || name.length() > 20) {
				System.out.println("이름은 필수입력항목입니다.");
			}else {
				nu.setName(name);
				break;
			}
		}
		while (true) {
			System.out.println("주소를 입력하세요: ");
			String address = sc.nextLine();
			if (address.length() < 1 || address.length() > 100) {
				System.out.println("주소는 필수입력항목입니다.");
			}else {
				nu.setAddress(address);
				break;
			}
		}
	}
	
	public void signup() {
	System.out.println("입력한 정보로 가입을 완료할까요?(Y/N)");
	String check=sc.nextLine();
	if(check.equals("Y")) {
		cd.insertC(nu);
		}else {
			System.out.println("회원가입이 취소되었습니다.");
			nu=null;
		}
	}

}
