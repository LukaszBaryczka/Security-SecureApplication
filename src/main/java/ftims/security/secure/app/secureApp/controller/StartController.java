package ftims.security.secure.app.secureApp.controller;

import ftims.security.secure.app.secureApp.config.security.IAuthenticationFacade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import ftims.security.secure.app.secureApp.model.Comment;
import ftims.security.secure.app.secureApp.model.CommentForm;
import ftims.security.secure.app.secureApp.service.CommentService;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;


/**
 * Created by bryka on 24.05.18.
 */
@Controller
public class StartController {

    @Autowired
    private IAuthenticationFacade authenticationFacade;

    @Autowired
    CommentService commentService;

    @GetMapping("/start")
    public String hello(Model model) {
        String currentPrincipalName = authenticationFacade.getAuthentication().getName();

        model.addAttribute("name", currentPrincipalName);
        model.addAttribute("commentForm", new CommentForm());
        model.addAttribute("comments", commentService.findAllComments());


        return "start";
    }

    @RequestMapping(value = "/comment", method = RequestMethod.POST)
    public String setNewComment(@Valid @ModelAttribute(name = "commentForm") CommentForm commentForm, BindingResult bindingResult, Model model){

        Comment comment = new Comment();
        comment.setContent(commentForm.getContent());
        comment.setUsername(authenticationFacade.getAuthentication().getName());
        commentService.setNewComment(comment);
        return "redirect:/start";
    }
}
