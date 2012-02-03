package jp.co.hzmyh0.roo.searchbookroo.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.Column;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class Genre {

    @NotNull
    @Column(unique = true)
    @Size(min = 1)
    private String name;
}
