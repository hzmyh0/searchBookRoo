package jp.co.hzmyh0.roo.searchbookroo.web;

import jp.co.hzmyh0.roo.searchbookroo.domain.Genre;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "genres", formBackingObject = Genre.class)
@RequestMapping("/genres")
@Controller
public class GenreController {
}
