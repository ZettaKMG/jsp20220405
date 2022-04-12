package chap08;

// java beans
// 클래스는 기본 생성자를 가지고 있어야 한다.
// 클래스의 속성(property)들은 get, set 혹은 표준 명명법을 따르는 메서드들을 사용해 접근할 수 있어야 한다.

public class MyBean1 {
	private String name;
	private int age;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
}
