package ftims.security.secure.app.secureApp.config.security;

/**
 * Created by bryka on 24.05.18.
 */
import org.springframework.security.core.Authentication;

public interface IAuthenticationFacade {
    Authentication getAuthentication();
}
