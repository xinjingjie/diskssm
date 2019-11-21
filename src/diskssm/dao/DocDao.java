package diskssm.dao;

import java.util.List;

import diskssm.bean.Doc;

public interface DocDao {
	public int addDoc(Doc doc);
	public Doc findById(int id);
	public int updateIsshare(String isshare,int id);
	public List<Doc> findAll();
	public int deleteById(int id);
	public List<Doc> findByUsername(String username);
}
