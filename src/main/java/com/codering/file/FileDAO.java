package com.codering.file;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.codering.common.AbstractDAO;

@Repository("fileDAO")
public class FileDAO extends AbstractDAO
{
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception
	{
		return (Map<String, Object>) selectOne("file.selectFileInfo", map);
	}

}
