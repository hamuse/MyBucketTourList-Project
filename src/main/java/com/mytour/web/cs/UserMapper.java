package com.mytour.web.cs;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mytour.web.review.Review;

@Repository
public interface UserMapper {
	public void insertUser(User user);
	public User selectByIdPw(User user);
	public int existId(String uid);
	public void createUser(HashMap<String, String>paramMap);
	public void dropUser(HashMap<String, String>paramMap);
	public void removeUser(User user);
	public void truncateUser(HashMap<String,String> paramMap);
	public User findid(User user);
	public User findpw(User user);
	public void update(User user);
	public List<Review> mylist(User user);
}
