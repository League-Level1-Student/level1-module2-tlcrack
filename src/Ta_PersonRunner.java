
public class Ta_PersonRunner {
public static void main(String[] args) {
	String name = "Steven Strange";
	String superpower = "Sorcery";
	Ta_Person hero = new Ta_Person();
	hero.setName(name);
	hero.setSuperpower(superpower);
	System.out.println(hero);
	
	String name2 = "Scott Lang";
	String power = "Shrink n' grow";
	hero.setName(name2);
	hero.setSuperpower(power);
	System.out.println(hero);
	
	String name3 = "Peter Parker";
	String Superpower3 = "Standing the Wrong Way";
	hero.setName(name3);
	hero.setSuperpower(Superpower3);
	System.out.println(hero);
}
	

}
