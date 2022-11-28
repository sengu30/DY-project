package merch_fortxt;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Start {

	public static void main(String[] args) {
		Scanner scstr = new Scanner(System.in);
		while (true) {
			System.out.println("   ____                           ");
			System.out.println("  / ___|___  _   _ _ __   __ _ _ __   __ _      ");
			System.out.println(" | |   / _ \\| | | | '_ \\ / _` | '_ \\ / _` |            ");
			System.out.println(" | |__| (_) | |_| | |_) | (_| | | | | (_| |                 ");
			System.out.println("  \\____\\___/ \\__,_| .__/ \\__,_|_| |_|\\__, |           ");
			System.out.println("                  |_|                |___/                       ");
			System.out.println("판매자는 1번, 구매자는 2번을 타이핑 해주세요");
			String menu = scstr.nextLine();
				switch (menu) {

				case "1":
					CoupSeller cs = new CoupSeller();
					break;
				case "2":
					CoupUser cu = new CoupUser();
					break;
				}
			}
		}
	}
//‪C:\Users\HOME\Desktop\testitem.txt

