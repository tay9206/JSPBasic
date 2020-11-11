package com.session;

import java.util.ArrayList;
import java.util.List;

public class UserRepository_1 {
	
	//DB가정
	private static List<User_1> userList=new ArrayList();
	
	public void method01(User_1 a) {
		userList.add(a);
	}
	
	public static User_1 getUser(String id) {
		
		for(int i=0;i<userList.size();i++) {
			if(userList.get(i).getId().equals(id)){
				return userList.get(i);
			}
		}return null;
	}
	
	//회원 탈퇴
	public static void DelUser(String id) {
		
		userList.remove(getUser(id));//메서드 재활용 
		
	}
	
	
	
}
