package sample03javabean;

public class Bean06 {
	private String title;
	private String write;
	private int price;
	private String publisher;
	private int stock;
	
	public Bean06(String title, String write, int price) {
		super();
		this.title = title;
		this.write = write;
		this.price = price;
	}

	public Bean06(String title, String write, int price, String publisher, int stock) {
		super();
		this.title = title;
		this.write = write;
		this.price = price;
		this.publisher = publisher;
		this.stock = stock;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWrite() {
		return write;
	}
	public void setWrite(String write) {
		this.write = write;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
}
