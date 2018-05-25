package ftims.security.secure.app.secureApp.service;

import ftims.security.secure.app.secureApp.model.Comment;

import java.util.List;

public interface CommentService {


    public void setNewComment(Comment comment);

    public List<Comment> findAllComments();
}
