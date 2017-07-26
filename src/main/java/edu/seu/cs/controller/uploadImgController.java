package edu.seu.cs.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import edu.seu.cs.dto.GoodsInfoDto;
import edu.seu.cs.service.GoodsService;

@Controller
public class uploadImgController {
	@Resource(name="goodsServiceImpl")
	private GoodsService goodsService;
	
	@RequestMapping(value="getCodeAndImage")
	public @ResponseBody List<GoodsInfoDto> getCodeAndImage(){
		return goodsService.getAllCodeAndImg();
	}
	
	@RequestMapping(value="uploadImg")
	public @ResponseBody String uploadImg(@RequestParam(value="file", required=true)MultipartFile file,
			@RequestParam(value="code")String code, HttpServletRequest request)throws Exception{
		String contextRoot = request.getSession().getServletContext().getRealPath("/");
		contextRoot = contextRoot.substring(0, contextRoot.lastIndexOf("webapps"));
		contextRoot = contextRoot + "images" + File.separator;
		//String pic_path = contextRoot + "\\" + "images\\";
		String originName = file.getOriginalFilename();
		String suffix = originName.substring(originName.lastIndexOf("."), originName.length());
		UUID uuid = UUID.randomUUID();
		String fileName = uuid + suffix;
		File targetFile = new File(contextRoot, fileName);
		if(!targetFile.exists()){
			targetFile.mkdirs();
		}
		file.transferTo(targetFile);
		String tmp = targetFile.getPath();
		String databasePath = "/file/" + tmp.substring(tmp.lastIndexOf(uuid.toString()), tmp.length());
		goodsService.setCodeAndImg(code, databasePath);
		return databasePath;
	}
}
