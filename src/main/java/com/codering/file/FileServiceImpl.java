package com.codering.file;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;


@Service("fileService")
public class FileServiceImpl implements FileService
{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="fileDAO")
	private FileDAO fileDAO;

	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception
	{
		return fileDAO.selectFileInfo(map);
	}

}
