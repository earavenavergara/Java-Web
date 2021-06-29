package com.codingdojo.web.models;

public class Dog extends Animal implements Pet {

	public Dog() {
		super();
	}

	public Dog(String name, String breed, int weight) {
		super(name, breed, weight);
	}

	@Override
	public String showAffection() {
		if (getWeight() >= 30)
			return "¡" + getName() + " se acurruco a tu lado!";
		return "¡" + getName() + " se subió a tu regazo y te abrazó!";
	}

}
