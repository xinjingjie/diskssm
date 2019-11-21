package diskssm.dao;

import java.util.List;

import diskssm.bean.User;

public interface UserDao {
	 
	   public int insert(User user);

	   public int update(User user);
	   
	   public int updatePassword(User user);
	    
	   public User findByUsername(String username);
	
	   public List<User> findAll();
	   
	   public int deleteByName(String username);
}
