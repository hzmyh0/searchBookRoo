// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package jp.co.hzmyh0.roo.searchbookroo.domain;

import java.lang.String;

privileged aspect Book_Roo_ToString {
    
    public String Book.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address: ").append(getAddress() == null ? "null" : getAddress().size()).append(", ");
        sb.append("Author: ").append(getAuthor()).append(", ");
        sb.append("GenreSet: ").append(getGenreSet() == null ? "null" : getGenreSet().size()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Name: ").append(getName()).append(", ");
        sb.append("Publisher: ").append(getPublisher()).append(", ");
        sb.append("Review: ").append(getReview() == null ? "null" : getReview().size()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
