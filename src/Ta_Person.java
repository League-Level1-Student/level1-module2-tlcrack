
public class Ta_Person {
private String name;
private String superpower;

public String getName() {
	return name;
}

public String getSuperpower() {
	return superpower;
}
public void setName(String name) {
	this.name = name;
}
public void setSuperpower(String superpower) {
	this.superpower = superpower;
}


public String toString() {
	return name + " has mad " + superpower + " skills";
}
}
