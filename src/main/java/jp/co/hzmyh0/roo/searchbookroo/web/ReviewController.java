package jp.co.hzmyh0.roo.searchbookroo.web;

import jp.co.hzmyh0.roo.searchbookroo.domain.Review;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "reviews", formBackingObject = Review.class)
@RequestMapping("/reviews")
@Controller
public class ReviewController {
}
