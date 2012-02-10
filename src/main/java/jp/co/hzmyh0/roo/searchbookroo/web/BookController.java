package jp.co.hzmyh0.roo.searchbookroo.web;

import java.io.IOException;
import java.io.Writer;

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
	public void serachBook(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		Writer out = response.getWriter();
		out.append("content-type:text/html;charset=UTF-8");
		out.append("aaaaaa");	
		out.close();
		return;
	}
}
