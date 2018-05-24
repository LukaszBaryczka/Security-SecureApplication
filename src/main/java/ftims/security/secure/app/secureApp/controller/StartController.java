package ftims.security.secure.app.secureApp.controller;

import ftims.security.secure.app.secureApp.config.security.IAuthenticationFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by bryka on 24.05.18.
 */
@Controller
public class StartController {

    @Autowired
    private IAuthenticationFacade authenticationFacade;

    @GetMapping("/start")
    public String hello(Model model) {
        String currentPrincipalName = authenticationFacade.getAuthentication().getName();

        model.addAttribute("name", currentPrincipalName);

        return "start";
    }
}
