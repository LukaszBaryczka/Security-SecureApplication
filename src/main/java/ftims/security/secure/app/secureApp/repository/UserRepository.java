package ftims.security.secure.app.secureApp.repository;

/**
 * Created by bryka on 24.05.18.
 */
import ftims.security.secure.app.secureApp.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findUserByUsername(String username);
}