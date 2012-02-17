package jp.co.hzmyh0.roo.searchbookroo.web;

import java.io.IOException;
import java.io.Writer;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.hzmyh0.roo.searchbookroo.domain.Book;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "books", formBackingObject = Book.class)
@RequestMapping("/books")
@Controller
public class BookController {
	
	
	@RequestMapping(value="/test")
	public void searchBook(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setContentType("text/html;charset=UTF-8");
		String bookname = request.getParameter("bookname");
		Book book = new Book();
		List<Book> booklist = null;
		
		booklist = book.findBookByName(bookname);
		
		Writer out = response.getWriter();
		out.append(bookname);
		
		for (Book b:booklist) {
			out.append(b.getName()+"<br>");
		}
		
		out.close();
		return;
	}
}
