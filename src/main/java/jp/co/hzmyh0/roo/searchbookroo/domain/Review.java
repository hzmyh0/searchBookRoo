package jp.co.hzmyh0.roo.searchbookroo.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooEntity
public class Review {

    @DecimalMin("0")
    @DecimalMax("5")
    private int score = 0;

    @Size(min = 1)
    private String text;

    @Size(min = 1)
    private String reviewer;
}
