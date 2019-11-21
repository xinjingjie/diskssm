package diskssm.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import diskssm.bean.Doc;
import diskssm.service.DocService;

@Controller
@RequestMapping("doc")
public class DocController {
	@Autowired
	private DocService dse;
	@RequestMapping("/findall")
	public String findAll(Model model){
		List<Doc> list= dse.findAll();
		model.addAttribute("docList", list);
		return "AllDoc";
	}
	
	@RequestMapping("delete/{id}")
	private String delete(@PathVariable("id") int id){
		dse.deletebyID(id);
		return "redirect:/doc/findAllMine";
	}
	
	@RequestMapping("/upload")
	public String springUpload(@RequestParam("file") CommonsMultipartFile file,HttpServletRequest request){
		
		//获取图片源名称
       String name = file.getOriginalFilename();
        //获取图片后缀
        String type = name.substring(name.lastIndexOf(".") + 1);
        //获取项目运行时跟路径
        String realPath = "D:/upload";   
        //设置文件名
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");//设置日期格式
		String currttime=df.format(new Date());
        //设置文件夹和文件名
       String fileName = currttime + "." + type;
        //查看文件夹是否存在，不存在创建
        File dest = new File(realPath);
        if(!dest.exists()){
            //创建文件夹
            dest.mkdirs();
        }
		//System.out.println("realPath="+realPath);
		
		//目标存储位置
		File myfile = new File(realPath + "/" + fileName);
		System.out.println(myfile);
		Doc doc=new Doc();
		doc.setFilename(fileName);
		doc.setSavepath(realPath + "/" + fileName);
		doc.setFilesize(file.getSize()/8);
		doc.setFiletype(type);
		doc.setIsshare("1");
		doc.setUploaddate(currttime);
		doc.setCount(0);
		HttpSession session=request.getSession();
		doc.setUsername((String)session.getAttribute("username"));
		
		dse.addDoc(doc);
		
		long startTime = System.currentTimeMillis();
		try {
			file.transferTo(myfile);
		} catch (/*IllegalStateException |*/ IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		long endTime = System.currentTimeMillis();
		System.out.println("upload2上传花费了"  + (endTime-startTime) + "ms");
		return "redirect:/doc/findAllMine";
	}
	
	@RequestMapping("/findByUsername")
	public String findaByUsername(HttpServletRequest request,Model model){
		String username=request.getParameter("findusername");
		System.out.println("username="+username);
		List<Doc> list= dse.fingByUsername(username);
		model.addAttribute("docList", list);
		return "File";
	}
	@RequestMapping("/findAllMine")
	public String findAllMine(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("username");
		System.out.println("username="+username);
		List<Doc> list= dse.fingByUsername(username);
		model.addAttribute("docList", list);
		return "File";
	}
	@RequestMapping("/findById")
	public String findaById(HttpServletRequest request,Model model){
		int id=Integer.parseInt(request.getParameter("findid"));
		System.out.println("id="+id);
		Doc doc= dse.findById(id);
		model.addAttribute("doc", doc);
		System.out.println(doc);
		return "File";
	}
	@RequestMapping("updateIsshare/{id}/{way}")
	public String updateIsshare(@PathVariable("id") int id,@PathVariable("way") String way){
		dse.updateIsshare(way, id);
		return "redirect:/doc/findAllMine";
	}
	@RequestMapping("download/{fileName}/")
	public ResponseEntity<byte[]> download(@PathVariable("fileName") String fileName) throws IOException{
		HttpHeaders headers = new HttpHeaders(); 
		System.out.println(fileName);
		String filePath="D:/upload"+"/"+fileName;
        File file = new File(filePath);
        
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);    
        headers.setContentDispositionFormData("attachment", fileName);    
       
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
                                              headers, HttpStatus.CREATED);  
	}
}
