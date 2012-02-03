package jp.co.hzmyh0.roo.searchbookroo.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Set;
import jp.co.hzmyh0.roo.searchbookroo.domain.Genre;
import java.util.HashSet;
import javax.persistence.ManyToMany;
import javax.persistence.CascadeType;
import jp.co.hzmyh0.roo.searchbookroo.domain.Bookshelf;
import jp.co.hzmyh0.roo.searchbookroo.domain.Review;

@RooJavaBean
@RooToString
@RooEntity
public class Book {

    @NotNull
    @Size(min = 1)
    private String name;

    @NotNull
    @Size(min = 1)
    private String author;

    @NotNull
    @Size(min = 1)
    private String publisher;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Genre> genreSet = new HashSet<Genre>();

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Bookshelf> address = new HashSet<Bookshelf>();

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Review> review = new HashSet<Review>();
}
