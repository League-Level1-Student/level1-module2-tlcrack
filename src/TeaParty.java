
public class TeaParty {
String name;
boolean isWoman;
boolean isKnighted;



	


    public String welcome(String name, boolean isWoman, boolean isKnighted) {
    String welcomer =  "";
    if(isWoman==true&&isKnighted==true) {
    	welcomer = "Hello Lady " + name;
    }
    if(isWoman==true&&isKnighted==false) {
    	welcomer = "Hello Ms. " + name;
    }
    if(isWoman==false&&isKnighted==true) {
    	welcomer = "Hello Sir " + name;
    }
    if(isWoman==false&&isKnighted==false) {
    	welcomer = "Hello Mr. " + name;
    }
    	return welcomer;
    }
}
