package chap04.model_;

import java.util.ArrayList;
import java.util.List;

public class Member {

	private String name;
	private String id;
	private String password;
	private String birthday;
	private List<String> memos;
	
	
	public Member(String name, String id, String password, String birthday) {
		this.name = name;
		this.id = id;
		this.password = password;
		this.birthday = birthday;
		this.memos = new ArrayList<>();
	}
	
	public List<String> getMemos() {
		return memos;
	}
	
	public void putMemo (String memo) {
		memos.add(memo);
	}
	
	
	public boolean login (String id, String password) {
		System.out.println(id + " : " + this.id);
		System.out.println(password + " : " + this.password);
		return this.id.equals(id) && this.password.equals(password);
	}
	
	@Override
	public String toString() {
		return String.format("%s(%s)", name, id);
	}
	
	
	
	
}
