package com.session;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {

	//DB가정
	private static List<User> userList = new ArrayList<>();  
	
	//User를 받아서 저장하는 메서드
	public static void setUser(User user) {
		userList.add(user);
	}
	
	//매개값으로 id를 받아서 userList에 있는지 확인하는 메서드
	public static User getUser(String id) {
		for(User user : userList ) {
			if(user.getId().equals(id)  ) {
				return user; 
			}
		}
		return null;
	}
	
	//회원 탈퇴
	public static void delUser(String id) {
		
		userList.remove(  getUser(id)  ); //메서드 재활용
	}
	
	
	
	
	
	
}
