package com.ongraph.Controllers;

import com.ongraph.dto.UsersDTO;
import com.ongraph.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

/**
 * Created by agarw on 02-06-2017.
 */
@Controller
@RequestMapping(value = "/")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "users", method = RequestMethod.GET)
    public String userInfo(Model model, Principal principal) {

        model.addAttribute("heading", "Users");
        return "user";
    }


    @RequestMapping(value = "/users/getUserDetailList", method = RequestMethod.GET)
    public ResponseEntity<UsersDTO> getUserList(){
        try{
            //HashMap<String , List<MoeUser>> userList = new HashMap();
            /*userList.put("ActiveUsers", userService.getAllActiveUsers() );
            userList.put("InActiveUsers", userService.getAllInactiveUsers());
            */
            UsersDTO details = userService.getUserDetailList();
            return new ResponseEntity<UsersDTO>(details, HttpStatus.OK);
        }
        catch (Exception e){
            e.printStackTrace();
            return new ResponseEntity<UsersDTO>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
