package com.java.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface JsonMapper {

	@Select("select #{no} as no")
	public int test(int no);
	
}
