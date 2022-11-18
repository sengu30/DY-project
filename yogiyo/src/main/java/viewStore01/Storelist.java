package viewStore01;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import dao.StoreDao;
import vo.Store;

public class Storelist {
	// 전체보기
	// 카테고리별 보기
	Scanner sc = new Scanner(System.in);
	StoreDao sd = new StoreDao();
	List<Store> slist =new ArrayList<Store>();
	public static Store thisstore=new Store();

	public Storelist() {	//클래스 인스턴스 만들면 바로 실행
		Scanner sc1 = new Scanner(System.in);
		System.out.println("1. 전체보기\t 2. 1인분 주문\t\t 3. 프랜차이즈");
		System.out.println("4. 치킨\t\t 5. 피자/양식\t\t 6. 중국집");
		System.out.println("7. 한식\t\t 8. 일식/돈까스\t\t 9. 족발/보쌈");
		System.out.println("10. 야식\t\t 11. 분식\t\t 12.카페/디저트");
		System.out.println("13. 편의점/마트");
		int ctgrnum = sc1.nextInt();
		if (ctgrnum == 1) {
			listAll();
		} else if(ctgrnum>13){
			System.out.println("카테고리 번호를 선택해주세요.");
		}else {
			listCata(ctgrnum);
		}
		sc1=null;
	}

	public void listAll() {
		slist = sd.selectonS("");	//카테고리 없어서 ""만 있는거
		for (Store ss : slist) {
			System.out.println("┏━━━━━━━" + ss.getStorename() + "━━━━━━━┓");
			System.out.print("평균별점: " + ss.getAvgstar());
			System.out.print("\t리뷰 " + ss.getCntreview());
			System.out.print("\t사장님댓글 " + ss.getCountcmmnt() + "\n");
			System.out.println(ss.getMinOrder() + "원 이상 배달");
			System.out.println("┗━━━━━━━━━━━━━━━━━━━━━━━━┛");
		}
		enterStore();
	}

	public void listCata(int ctgrnum) {
		String category="";
		switch(ctgrnum) {
		case 2: category="1인분 주문";break;
		case 3: category="프랜차이즈";break;
		case 4: category="치킨";break;
		case 5: category="피자/양식";break;
		case 6: category="중국집";break;
		case 7: category="한식";break;
		case 8: category="일식/돈까스";break;
		case 9: category="족발/보쌈";break;
		case 10: category="야식";break;
		case 11: category="분식";break;
		case 12: category="카페/디저트";break;
		case 13: category="편의점/마트";break;
		}
		System.out.println("카테고리 선택:"+category);
		slist = sd.selectonS(category);
		for (Store ss : slist) {
			System.out.println("┏━━━━━━━" + ss.getStorename() + "━━━━━━━┓");
			System.out.print("평균별점: " + ss.getAvgstar());
			System.out.print("\t리뷰 " + ss.getCntreview());
			System.out.print("\t사장님댓글 " + ss.getCountcmmnt() + "\n");
			System.out.println(ss.getMinOrder() + "원 이상 배달");
			System.out.println("┗━━━━━━━━━━━━━━━━━━━━━━━━┛");
		}
		enterStore();
	}

	public void enterStore() {	//가게 목록 출력 메소드에 포함
		System.out.println("확인할 가게명을 입력하세요");
		String storename=sc.nextLine();
		for (Store ss : slist) {
			if(ss.getStorename().equals(storename)) {
				Storelist.thisstore=ss;
			}
		}
	}
}
