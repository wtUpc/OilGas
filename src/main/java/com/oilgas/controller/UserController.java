/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014-2016 abel533@gmail.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package com.oilgas.controller;

import com.oilgas.dto.Admin;
import com.oilgas.model.User;
import com.oilgas.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author liuzh
 * @since 2015-12-19 11:10
 */
@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping(value = "/{name}")
    public User getByName(@RequestBody User user) {

        return userService.selectByName(user.getUsername());
    }


    @GetMapping("/login")
    public ModelAndView login() {
        ModelAndView result = new ModelAndView("user/login");
        return result;
    }

    @PostMapping("/adminLogin")
    public ModelAndView adminLogin(Admin admin) {
//        ModelAndView result = null;
//        User user = new User();
//        user.setUsername(admin.getUserName());
//        user.setPassword(admin.getPassWord());
//        User newUser = userService.selectByName(admin.getUserName());
//        System.out.println(newUser);
//        System.out.println(admin);
//        String a = newUser.getPassword();
//        String b = admin.getPassWord();
//        if (a.equals(b)) {
//            System.out.println("密码正确");
//
//            return new ModelAndView("redirect:/index");
//        } else {
//            System.out.println("密码错误");
//            result = new ModelAndView("Login");
//            return result;
//        }
        return new ModelAndView("redirect:/index");
    }

    @GetMapping("/registration")
    public ModelAndView registration() {
        ModelAndView result = new ModelAndView("user/registration");
        return result;

    }
}
