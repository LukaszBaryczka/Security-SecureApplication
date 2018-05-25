package ftims.security.secure.app.secureApp.service.impl;

import ftims.security.secure.app.secureApp.model.Comment;
import ftims.security.secure.app.secureApp.repository.CommentRepository;
import ftims.security.secure.app.secureApp.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DefaultCommentService implements CommentService{


    @Autowired
    CommentRepository commentRepository;


    @Override
    public void setNewComment(Comment comment) {
        commentRepository.saveNewComment(comment.getUsername(), comment.getContent());
    }

    @Override
    public List<Comment> findAllComments() {
        return commentRepository.findAll();
    }
}
