
public class Minion {
String name;
int numOfEyes;
String color;
String master;
	
	String getName(){
		return name;
	}
	int getEyes(){
		return numOfEyes;
	}
	String getColor(){
		return color;
	}
	String getMaster(){
		return master;
	}
	String setMaster(String masterName) {
		this.master = masterName;
		return master;
	}
	Minion(String name2, int eyeNum, String colored, String mastered){
		this.name = name2;
		this.numOfEyes = eyeNum;
		this.color = colored;
		this.master = mastered;
	}
}
