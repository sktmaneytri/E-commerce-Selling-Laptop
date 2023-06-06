package com.maneyshop.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maneyshop.dao.ProductDAO;
import com.maneyshop.model.Account;
import com.maneyshop.model.Product;

/**
 * Servlet implementation class InsertProductServlet
 */
@WebServlet("/addProduct")
public class InsertProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ProductDAO productDAO;

	public void init() throws ServletException {
		productDAO = new ProductDAO();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String pID = req.getParameter("pCode");
		long cost = Long.parseLong(req.getParameter("price"));
		String date = req.getParameter("pDate");
		String des = req.getParameter("pDes");
		String name = req.getParameter("pName");
		String brand = req.getParameter("pBrand");
		String img = req.getParameter("pImage");
		
		
		HttpSession session = req.getSession();
		Account a = (Account) session.getAttribute("account");
		int sID = a.getId();
		String sellID = Integer.toString(sID);
		
		
		Product newProduct = new Product(pID,date,cost,name,des,brand,img,sellID);
		productDAO.saveProduct(newProduct);
		resp.sendRedirect(req.getContextPath() + "/seller-home");
	}
}