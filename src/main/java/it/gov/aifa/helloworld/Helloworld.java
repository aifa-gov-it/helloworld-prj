package it.gov.aifa.helloworld;

public class Helloworld {

	public static void main(String[] args) {
		System.out.println(new Helloworld().hello("Lello"));
	}

	public String hello(String name){
		// we are lazy so we don't use a StringBuilder
		return "Hi " + name;
	}
}
