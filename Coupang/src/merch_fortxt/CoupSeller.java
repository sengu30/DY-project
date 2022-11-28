package merch_fortxt;

import java.util.Scanner;

public class CoupSeller {
	Scanner scstr = new Scanner(System.in);

	static RegistItem ri = new RegistItem();
	public CoupSeller() {
		while (true) {
			System.out.println("실행할 번호를 입력해주세요 \n1. 상품 대량 등록\n2. 상품 개별 등록 \n3. 상품 수정 및 삭제 \n0. 초기화면으로 돌아갑니다");
			String chooseAction = scstr.nextLine();
			switch (chooseAction) {
			case "1":
				ri.RegistItemlist();
				ri.showAllname();
				break;
			case "2":
				ri.RegistItemLine();
				break;
			// 리뷰작성
			case "3": // 상품 수정 , 삭제
				System.out.println("수정할 상품명을 입력해주세요");
				String search = scstr.nextLine();
				for (Item i : ri.items) {
					if (i.item.equals(search)) {
						System.out.println("수정하고 싶은 항목을 입력해주세요\n카테고리 \t상품명 \t가격 \t브랜드 \t상세정보 \t재고량\t상품삭제");
						chooseAction = scstr.nextLine();
						if (chooseAction.equals("상품삭제")) {
							System.out.println("정말 삭제하시겠습니까?(Y/N)");
							chooseAction = scstr.nextLine();
							if (chooseAction.equals("Y")) {
								ri.items.remove(i);
							}
						} else {
							System.out.println("바꿀 값을 입력해주세요.");
							String modification = scstr.nextLine();
							switch (chooseAction) {
							case "카테고리":
								i.setCategory(modification);
							case "상품명":
								i.setItem(modification);
							case "가격":
								i.setPrice(modification);
							case "브랜드":
								i.setBrand(modification);
							case "상세정보":
								i.setDetail(modification);
							case "재고량":
								i.setStock(modification);
							}
						}
					}
				}

			case "0":
				break;
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
