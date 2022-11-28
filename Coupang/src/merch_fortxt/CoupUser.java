package merch_fortxt;

import java.util.Scanner;

public class CoupUser {
	RecentView rcv = new RecentView();
	int searchResult = 0;

	public CoupUser() {
		Scanner scstr = new Scanner(System.in);

		while (true) {
			System.out.println("실행할 번호를 입력해주세요 \n1. 상품 모두 보기\n2. 최근 조회 상품 확인 \n3. 상품 후기 등록 \n0. 초기화면으로 돌아갑니다");
			String chooseAction = scstr.nextLine();
			switch (chooseAction) {
			case "1":
				searchResult = 0;
				System.out.println("~~~등록된 상품 목록~~~");
				for (Item i : CoupSeller.ri.items) {
					System.out.println(i.item);
				}
				System.out.println("상세 정보를 조회하고 싶은 상품의 키워드를 입력하세요.");
				String search = scstr.nextLine();
				for (Item i : CoupSeller.ri.items) {
					if (search.equals(i.item)) {
						i.getInfo();  // 아이템 개별 정보 출력
						i.getReview();
						rcv.setRecentView(i); // 최근 조회목록에 추가
						searchResult++; // 검색결과가 나오면 1이상
					}
					}
				if (searchResult == 0) {
						System.out.println(search + "는 잘못된 상품명입니다");
				}
				break;
			case "2": // 최근상품 조회
				rcv.getRecentView();
				break;
			// 조회하려는 상품의 번호를 입력해주세요. 이전메뉴로 돌아가려면 0

			case "3":
				searchResult = 0;
				System.out.println("리뷰를 작성할 상품명을 입력해주세요");
				search = scstr.nextLine();
				for (Item i : CoupSeller.ri.items) { // 상품명과 정확히 일치하는 상품만 검색해서 후기 쓸 수 있게
					if (search.equals(i.item)) {
						searchResult++;
						System.out.println(i.item + "의 별점과 후기를 알려주세요");
						i.setReview();
					}
				}
				if (searchResult == 0) {
					System.out.println("➡➡➡➡ 상품의 구매내역이 없습니다.");
				}
				break;
			case "0" : break;
			default:
				System.out.println("➡➡➡➡ 존재하지 않는 메뉴입니다");
				break;
			}
			if (chooseAction.equals("0")) {
				break;
			}
		}
	}

}
