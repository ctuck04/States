package data;

public class State {
	private int id;
	private String Id;
	private String abbrev;
	private String name;
	private String capital;
	private String latitude;
	private String longitude;
	private String population;

	public State() {
	}
	
	public State(String ID, String abbreviation, String name, String capital, String latitude, String longitude, String population) {
		this.Id = ID;
		this.abbrev = abbreviation;
		this.name = name;
		this.capital = capital;
		this.latitude = latitude;
		this.longitude = longitude;
		this.population = population;
	}

	public int getId () {
		id = Integer.parseInt(Id);
		return id;
	}
	
	public String getAbbreviation() {
		return abbrev;
	}
	public String getName() {
		return name;
	}
	public String getCapital() {
		return capital;
	}
	public String getLatitude() {
		return latitude;
	}
	public String getLongitude() {
		return longitude;
	}

	public String getPopulation() {
		return population;
	}
	
	public void setId (String ID) {
		this.Id = ID;
	}
	
	public void setPopulation (String population) {
		this.population = population;
	}
	
	public void setAbbreviation(String abbreviation) {
		this.abbrev = abbreviation;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setCapital(String capital) {
		this.capital = capital;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	@Override
	public String toString() {
		return "State [abbreviation=" + abbrev + ", name=" + name + ", capital=" + capital + "]";
	}

}
