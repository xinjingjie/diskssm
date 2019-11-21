package diskssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import diskssm.bean.User;
import diskssm.dao.UserDao;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	public int login(String username,String password){
		int i=0;
		User user = userDao.findByUsername(username);
		if(user != null)
		{
			if(password.equals(user.getPassword()))
				i=1;
		}
		return i;
	}
	
	public int regist(User user){
		return userDao.insert(user);
	}
	
	public void updatePassword(String username,String newpassword){
		User user=userDao.findByUsername(username);
		user.setUsername(username);
		user.setPassword(newpassword);
		userDao.updatePassword(user);
	}
	
	public int update(User user){
	   return userDao.update(user);
	}
	
	public User findByUsername(String username){
		return userDao.findByUsername(username);
	}
	
	public List<User> findAll(){
		return userDao.findAll();
	}
	public int deleteByName(String username){
		return userDao.deleteByName(username);
	}
}
