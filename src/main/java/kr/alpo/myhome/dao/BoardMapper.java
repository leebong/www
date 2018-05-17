package kr.alpo.myhome.dao;

import org.apache.ibatis.annotations.Param;

public interface BoardMapper {
	public void setBoard(@Param("title") String title, 
			@Param("contents") String contents, 
			@Param("author") String author);

}
