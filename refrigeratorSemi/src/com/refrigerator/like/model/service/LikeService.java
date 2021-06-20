package com.refrigerator.like.model.service;

import static com.refrigerator.common.JDBCTemplate.close;
import static com.refrigerator.common.JDBCTemplate.commit;
import static com.refrigerator.common.JDBCTemplate.getConnection;
import static com.refrigerator.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.refrigerator.like.model.dao.LikeDao;

public class LikeService {
	
	public int insertLike(int recipeNo, int userNo, String likeType) {
		Connection conn = getConnection();
		int result = new LikeDao().insertLike(conn, recipeNo, userNo, likeType);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

}
