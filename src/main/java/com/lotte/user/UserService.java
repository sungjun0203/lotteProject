package com.lotte.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lotte.util.SecurityService;

@Service
public class UserService {
	
	@Autowired
	UserDao userDao;
	
	
	public Integer idCheck(String UserId) {
		return userDao.idCheck(UserId);
	}
	
	public void signUpSubmit(UserDto userDto) {
		
		// 비밀번호
		String enPw= SecurityService.SHA256(userDto.getUserPw());
		
		userDto.setUserPw(enPw);
		userDto.setUserPoint(0);
		
		userDao.singUpSubmit(userDto);
	}
	
	public Integer loginCheck(UserDto userDto) {
		
		
		String enPW = SecurityService.SHA256(userDto.getUserPw());
		
		userDto.setUserPw(enPW);
		
		
		return userDao.loginCheck(userDto);
		
	}
	
	

}
