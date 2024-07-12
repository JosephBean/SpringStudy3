package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.java.dto.FileDTO;

@Mapper
public interface JsonMapper {

	@Select("select #{no} as no")
	public int test(int no);
	
	@Select("SELECT * FROM files WHERE type = ${type}")
	public List<FileDTO> findByType(int type);
	
}
