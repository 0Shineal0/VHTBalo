package model;

public class Balo implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private String id, image, name, mota;
	private double price;

	public Balo() {
		super();
		id = "";
		image = "";
		name = "";
		price = 0.0;
		mota = "";
	}

	public Balo(String id, String image, String name, double price, String mota) {
		super();
		this.id = id;
		this.image = image;
		this.name = name;
		this.price = price;
		this.mota = mota;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
}
