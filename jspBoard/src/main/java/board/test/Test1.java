package board.test;

public class Test1 {

	public static class Apple {
		String grade;
		int price;
		
		public Apple(String grade, int price) {
			this.grade = grade;
			this.price = price;
		}
	}
	
	public static void main(String[] args) {
		Apple a1 = new Apple("A+", 1000);
		Apple a2 = new Apple("A+", 1000);
		
	}
	
}
