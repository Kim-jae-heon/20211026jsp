package sample03javabean;

public class Bean01 {
	private String value1;
	private int value2;
	private int value3; //필드에value3이 있더라도 value3이라는 property는 없는 것으로 친다.
	private int value4;

	//기본 생성자가 있는 상태.
	
	public int getVal() {
		return value4; //이 경우에는 value4가 property가 아닌 val임. 메소드에 의해 결정이 된다는 점에 유의.
	}
	
	public String getValue1() {
		return value1; //read용
	}
	public void setValue1(String value1) {
		this.value1 = value1; //write용
	}
	public int getValue2() {
		return value2;
	}
	public void setValue2(int value2) {
		this.value2 = value2;
	}
	
	public int getValue3() {
		return value3; //이렇게 getter setter중 하나를 완성시켜야 property가 존재하게 됨.
	}
}
