package jp.co.hzmyh0.roo.searchbookroo.web;

import jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "bookshelves", formBackingObject = Bookshelf.class)
@RequestMapping("/bookshelves")
@Controller
public class BookshelfController {
}
