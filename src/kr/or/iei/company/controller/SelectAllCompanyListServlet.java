package kr.or.iei.company.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.iei.company.model.service.CompanyService;
import kr.or.iei.company.model.service.CompanyServiceImpl;
import kr.or.iei.company.model.vo.Company;

/**
 * Servlet implementation class SelectAllCompanyListServlet
 */
@WebServlet("/company/selectAllCompanyList.do")
public class SelectAllCompanyListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectAllCompanyListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CompanyService comService = new CompanyServiceImpl();
		
		ArrayList<Company> list= comService.selectAllCompany();
		
		RequestDispatcher view = request.getRequestDispatcher("/views/company/selectAllCompany.jsp");
		
		request.setAttribute("list", list);
		
		view.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
