package com.codingdojo.web.models;

public class Count {
	private static int count = 0;

	public static int getCount() {
		return count;
	}

	public static void setCount(int count) {
		Count.count = count;
	}

	public int plus() {
		count++;
		return getCount();
	}

}
