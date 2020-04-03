package com.covid.rest.component;

import java.util.Random;

import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
public class State {
	
	private State state;
	
	private int number;

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}
	
	public State() {
		// create instance of Random class 
        Random rand = new Random(); 
  
        // Generate random integers in range 1000 to 9999 
        this.number = rand.nextInt(8999) + 1000; 
	}
	
	@Scope(value = ConfigurableBeanFactory.SCOPE_SINGLETON)
	public State getInstance() {
		
		if (this.state == null) {
			this.state = new State();
		}
		
		return this.state;
	}

}
