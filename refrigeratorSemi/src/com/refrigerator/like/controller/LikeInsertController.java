package com.refrigerator.like.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.refrigerator.like.model.service.LikeService;

/**
 * Servlet implementation class LikeInsertController
 */
@WebServlet("/insertLike.recipe")
public class LikeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikeInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int recipeNo = Integer.parseInt(request.getParameter("recipeNo"));
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		String likeType = request.getParameter("like-type");
		
		int result = new LikeService().insertLike(recipeNo, userNo, likeType);
		
		if(result>0) {
			
			
			request.getSession().setAttribute("alertMsg", " 이 레시피를 좋아합니다! ");
			response.sendRedirect(request.getContextPath() + "/detail.recipe?rno=" + recipeNo);
			
		}else {
			
			request.getRequestDispatcher("views/common/user/errerPage.jsp").forward(request, response);
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
