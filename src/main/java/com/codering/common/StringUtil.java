package com.codering.common;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Clob;
import java.sql.SQLException;

import org.springframework.stereotype.Service;

@Service("stringUtil")
public class StringUtil
{
	/*
	 * Clob 를 String 으로 변경
	 */
	public String clobToString(Clob clob) throws SQLException, IOException 
	{

	  if (clob == null) 
	  {
	   return "";
	  }

	  StringBuffer strOut = new StringBuffer();

	  String str = "";

	  BufferedReader br = new BufferedReader(clob.getCharacterStream());

	  while ((str = br.readLine()) != null) 
	  {
	   strOut.append(str);
	  }
	  
	  return strOut.toString();
	 }

	
}
