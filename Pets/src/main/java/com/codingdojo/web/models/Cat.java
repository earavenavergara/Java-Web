package com.codingdojo.web.models;

public class Cat extends Animal implements Pet {

	public Cat() {
		super();
	}

	public Cat(String name, String breed, int weight) {
		super(name, breed, weight);
	}

	@Override
	public String showAffection() {
		return "te miraba con algo de cariño. Crees";
	}

}
