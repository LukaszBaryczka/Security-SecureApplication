package ftims.security.secure.app.secureApp.repository;

import ftims.security.secure.app.secureApp.model.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Integer>{
    List<Comment> findAll();

    @Modifying
    @Transactional
    @Query(value = "INSERT INTO comments(username, content) values(?1, ?2)", nativeQuery = true)
    void saveNewComment(String username, String content);
}
