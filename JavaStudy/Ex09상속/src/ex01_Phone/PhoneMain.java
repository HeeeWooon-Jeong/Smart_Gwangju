package ex01_Phone;

import java.util.Scanner;

public class PhoneMain {

	public static void main(String[] args) {
		
		// 객체를 생성하기 위하여 필요한 것 두가지
		// 1. 객체를 생성하기 위한 실행 명령!  ->  main()
		// 2. 객체 생성을 위한 new 키워드 필수!!
		
		// Phone 이라는 설계도(=클래스) 통하여
		// call(),  message() 호출 !
		
		
		
		Phone phone = new Phone();
		
		phone.call();
		phone.message();
		
		
		System.out.println();
		
		SmartPhone smart = new SmartPhone();
		
		smart.call();
		smart.message();
		smart.wifi();
		
		System.out.println();
		
		// Upcasting : 하위 클래스가 상위 클래스로 변하는 것
		
		Phone phone2 = new SmartPhone();
		
		phone2.message();
		phone2.call();
		
		System.out.println();
		
		// Downcasting : 업캐스팅된 객체를 원래로 되돌리는 기법
		
		SmartPhone phone3 = (SmartPhone)phone2;
		

		
		
		
		
		
	}
}
