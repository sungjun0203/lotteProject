package com.lotte.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDao {
	
	 Integer idCheck(String id);
	 void singUpSubmit(UserDto userDto);
	 Integer loginCheck(UserDto userDto);
}
