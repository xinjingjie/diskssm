package diskssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import diskssm.bean.Doc;
import diskssm.dao.DocDao;
@Service
public class DocService {
	@Autowired
	private DocDao docDao;
	
	public int addDoc(Doc doc){
		return docDao.addDoc(doc);
		
	};
	public Doc findById(int id) {
		return docDao.findById(id);
	}
	public int updateIsshare(String isshare,int id) {
		return docDao.updateIsshare(isshare, id);
	}
	public List<Doc> findAll() {
		return docDao.findAll();
	}
	public int deletebyID(int id){
		return docDao.deleteById(id);
	} 
	public List<Doc> fingByUsername(String username){
		return docDao.findByUsername(username);
	}
}
