package viewStore01;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import dao.EventCouponDao;
import dao.MenuDao;
import dao.MyOrderDao;
import dao.ReviewDao;
import dao.StoreDao;
import sign01.CusLogin;
import vo.Coupon;
import vo.Menu;
import vo.Myorder;
import vo.Review;
import vo.Store;

public class MenuCart {
	Scanner sc = new Scanner(System.in);
	public static List<Menu> myCart = new ArrayList<Menu>();
	
	public void seeMenu() {	//식당 메뉴보기
		MenuDao md = new MenuDao();
		System.out.println("┌──메뉴");
		for (Menu mm : md.showMenu(Storelist.thisstore.getRegistNum())) {
			System.out.println("├"+mm.getMenuname()+"│\t"+mm.getDescription()+"\t"+mm.getPrice() + "원─┤");
		}
		System.out.println("└────");
	}

	public void seeReveiw() {	//식당 리뷰보기
		ReviewDao rd=new ReviewDao();
		for(Review re:rd.seeReview(Storelist.thisstore.getRegistNum())) {
			System.out.println("------------------------");
			System.out.println(re.getStar()+"점: "+re.getReview());
		if(re.getCmmnt()!=null) {
			System.out.println("사장님댓글: "+re.getCmmnt());
		}
		}
	}
	
	public void seeInfo() { 	//식당 정보 보기
		StoreDao sd=new StoreDao();
		Store thisstore=sd.selectAll(Storelist.thisstore.getRegistNum());
		System.out.println("주소:"+thisstore.getAddress());
		System.out.println("대표자명:"+thisstore.getRPname());
		System.out.println("연락처:"+thisstore.getContact());
		System.out.println("최소주문금액:"+thisstore.getMinOrder());
		System.out.println("영업시간:"+thisstore.getBusinesshours());
	}

	public void addtoCart() { // 주문표에 담기
		System.out.println("주문표에 담을 메뉴명을 입력하세요 :");
		String menuname = sc.nextLine();
		MenuDao md = new MenuDao();
		for (Menu mm : md.showMenu(Storelist.thisstore.getRegistNum())) {
			if (mm.getMenuname().equals(menuname)) {
				MenuCart.myCart.add(mm);
				System.out.println(mm.getMenuname() + "을 주문표에 담았습니다");
			}
		}
	}

	public void seeCart() {
		int totalprice=0;
		System.out.println("┌────주문표──");
		for(Menu mylist:myCart) {
			System.out.println("┝─"+mylist.getMenuname()+"── "+mylist.getPrice()+"원");
			totalprice+=mylist.getPrice();
		}
		System.out.println("└────합계: "+totalprice+"원──");
	}
	
	public void cartdel() {	//주문표에서 메뉴 삭제
		System.out.println("주문표에서 삭제할 메뉴명을 입력하세요 :");
		String menuname = sc.nextLine();
		int idx=0;
		for(Menu mm:myCart) {
			if(mm.getMenuname().equals(menuname)) {	//삭제 메뉴가 맞으면 
			myCart.remove(idx);
			}else {
				idx++;
			}
			
		}
	}
	
	public void cartdelAll() {	//주문표 모두 삭제
		myCart.removeAll(myCart);
	}
	
	public void cartToOrder() {	//주문하기
		Myorder ordering=new Myorder();
		EventCouponDao ecd=new EventCouponDao();
		String registnum=Storelist.thisstore.getRegistNum();
		ordering.setRegistnum(registnum);
		ordering.setUserid(CusLogin.logon.getUserID());
		System.out.println("결제하기");
		System.out.println("주소:"+CusLogin.logon.getAddress());
		System.out.println("휴대전화번호:"+CusLogin.logon.getMobile());
		ordering.setContect(CusLogin.logon.getMobile());
		System.out.println("주문시 요청사항을 입력할까요?(Y/N)");
		String request=sc.nextLine();
		if(request.equals("Y")) {
			System.out.println("주문시 요청사항을 입력하세요");
			ordering.setRequest(sc.nextLine());
		}else {
			ordering.setRequest("null");
		}
		System.out.println("결제수단 선택"
				+ "(신용카드 /휴대전화/네이버페이/스마일페이)");
		ordering.setPayment(sc.nextLine());
		
		//쿠폰적용하기
		System.out.println("쿠폰을 사용하려면 Y, 사용하지 않으면 N를 입력하세요");
		String couponnum=sc.nextLine();
		int coupdiscount=0;
		if(couponnum.equals("Y")) {
			System.out.println("쿠폰번호를 입력하세요");
			couponnum=sc.nextLine();
			Coupon mycoup=ecd.getCoupon(couponnum);
			if(mycoup!=null) {
			coupdiscount=mycoup.getDiscount();
			}else {
				System.out.println("입력하신 쿠폰번호는 사용할 수 없습니다.");
				}
		}else {
			couponnum=null;}
		ordering.setCouponnum(couponnum);
		
		//이벤트랑 쿠폰 넣어야함
		int totalprice=0;
		System.out.println("┌────주문내역");
		for(Menu mylist:myCart) {
			System.out.println("┝─"+mylist.getMenuname()+"── "+mylist.getPrice()+"원");
			totalprice+=mylist.getPrice();
		}
		//이벤트 금액 적용하기
		String eventname=null;
		int eventdiscount=0;
		if(ecd.getEvent(registnum, totalprice).getDiscount()!=0) {
		eventname=ecd.getEvent(registnum, totalprice).getEventname();
		eventdiscount=ecd.getEvent(registnum, totalprice).getDiscount();
		System.out.println("┝─"+eventname+" 적용 ──"+eventdiscount+"원");
		ordering.setEventname(eventname);
		}
		
		//쿠폰할인 적용하기
		if(couponnum!=null) {
			System.out.println("┝─"+couponnum+"쿠폰 적용 ──"+coupdiscount+"원");
		}
		System.out.println("└────총 결제 금액: "+(totalprice-eventdiscount-coupdiscount)+"원");
		ordering.setPrice(totalprice-eventdiscount-coupdiscount);
		//인스턴스에 메뉴 저장하기
		String allmenu="";
		for(Menu mylist:myCart) {
			allmenu+=", "+mylist.getMenuname();
		}
		ordering.setMenu(allmenu);
		ordering.setState("주문완료");
		MyOrderDao od=new MyOrderDao();
		System.out.println(od.insertorder(ordering)+"건 주문완료");
		
		cartdelAll();	//주문 끝났으니까 주문표 삭제
	}



}
