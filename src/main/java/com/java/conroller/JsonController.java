package com.java.conroller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.java.dto.JsonDTO;
import com.java.mapper.JsonMapper;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/json")
public class JsonController {

	private final JsonMapper jsonMapper;
	private int KEY = 5;
	
	@GetMapping("/test")
	public JsonDTO test() {
		JsonDTO jsonDto = JsonDTO.builder().build();
		int no = jsonMapper.test(KEY);
		if(KEY == no) {
			jsonDto.setResult(no);
			jsonDto.setMessage("데이터베이스 접속 성공");
			jsonDto.setStatus(true);
		} else {
			jsonDto.setMessage("데이터베이스 접속 실패");
			jsonDto.setStatus(false);
		}
		return jsonDto;
	}
	
}
