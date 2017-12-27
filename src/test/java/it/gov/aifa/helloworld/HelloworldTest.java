package it.gov.aifa.helloworld;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;

public class HelloworldTest {
	
	@Test
	public void helloTest(){
		Helloworld helloworld = new Helloworld();
		String param = "Lello";
		StringBuilder expectedOutput = new StringBuilder("Hi ");
		expectedOutput.append(param);
		String output = helloworld.hello(param);
		assertThat(output).isNotEmpty();
		assertThat(output).isEqualTo(expectedOutput.toString());
	}
}
