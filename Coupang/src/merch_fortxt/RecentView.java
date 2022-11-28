package merch_fortxt;

import java.util.ArrayList;

public class RecentView {
	ArrayList<Item> history = new ArrayList<Item>();

	public void getRecentView() {
		System.out.println("~~최근 조회한 상품 내역입니다~~");
		if (history.size() == 0) {
			System.out.println("➡➡➡➡조회기록이 없습니다.");
		} else {
			int no = 0;
			for (Item i : history) {
				System.out.println("➡➡➡➡"+(++no) + "번: " + i.item);
			}
			//상품을 보려면 번호 나가려면 0번
			
		}
	}

	public void setRecentView(Item it) {
		if (history.size() == 3) {
			history.remove(0);
			history.add(it);
		}
		if (history.size() < 3) {
			history.add(it);
		}
	}

}
