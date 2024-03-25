package model;

public class Balo implements java.io.Serializable {
	private String id,name,image,describe;
	private double price;
	
	public Balo() {
		super();
		id="";
		image="";
		name="";
		price=0.0;
		describe="";
	}

	public Balo(String id, String image, String name, double price, String describe) {
		super();
		this.id = id;
		this.image = image;
		this.name = name;
		this.price = price;
		this.describe = describe;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}
}
