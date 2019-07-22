package com.codering.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtils")
public class FileUtils
{
	// 파일이 저장될 위치 선언
	private static final String filePath = "C:\\dev\\file\\";

	public List<Map<String, Object>> parseInsertFileInfo(Map<String, Object> map, HttpServletRequest request)
			throws Exception
	{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;

		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();

		MultipartFile multipartFile = null;

		String originalFileName = null;

		String originalFileExtension = null;

		String storedFileName = null;

		// 반환해줄 list
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();

		Map<String, Object> listMap = null;

		String boardNum = (String) map.get("QT_ID");

		File file = new File(filePath);

		if (file.exists() == false)
		{
			file.mkdirs();
		}

		while (iterator.hasNext())
		{
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if (multipartFile.isEmpty() == false)
			{
				originalFileName = multipartFile.getOriginalFilename();

				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));

				storedFileName = CommonUtils.getRandomString() + originalFileExtension;

				file = new File(filePath + storedFileName);

				multipartFile.transferTo(file);

				listMap = new HashMap<String, Object>();

				listMap.put("QT_ID", boardNum);

				listMap.put("PATH_ORIGN", originalFileName);

				listMap.put("PATH_UPDATE", storedFileName);

				listMap.put("FILE_SIZE", multipartFile.getSize());

				list.add(listMap);

			}

		}

		return list;

	}
}
