// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package jp.co.hzmyh0.roo.searchbookroo.domain;

import java.lang.String;

privileged aspect Review_Roo_ToString {
    
    public String Review.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Reviewer: ").append(getReviewer()).append(", ");
        sb.append("Score: ").append(getScore()).append(", ");
        sb.append("Text: ").append(getText()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
