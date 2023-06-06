package com.maneyshop.controller;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class SellerServlet
 */
@WebServlet("/seller-home")
public class SellerServlet extends HttpServlet {
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

    	HttpSession session = req.getSession();
    	Account a = (Account) session.getAttribute("account");
    	String id = Integer.toString(a.getId());
    	
		String indexPage = req.getParameter("index");
		if(indexPage == null) {
			indexPage = "1";
		}
		int index = Integer.parseInt(indexPage);
		List<Product> products = productDAO.pageProductbySellID(index, 4, id);
		
		//get the total account to pagging
		int totalPage = productDAO.getTotalProductbySellID(id);
		int endP = totalPage / 4;
		if(totalPage % 4 != 0) {
			endP++;
		}
		//List<Product> products = productDAO.getProductbySellID(id);
		session.setAttribute("endP", endP);
		session.setAttribute("tag", index);  
    	session.setAttribute("listP", products);
    	
    	resp.sendRedirect(req.getContextPath() +"/html/seller.jsp");
    }
}
