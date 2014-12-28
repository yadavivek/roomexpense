package com.roomexpense

import com.roomexpense.co.RegisterCO

class RegisterController {
    def registerService

    def index() {

    }


    def save = { RegisterCO registerCO ->
        if (registerCO.hasErrors()) {
            render view: 'index', model: [registerCO: registerCO]
            return
        }
        User user = new User();
        PersonalDetail personalDetail = new PersonalDetail()
        bindData(user, registerCO)
        bindData(personalDetail, registerCO)
        if (!user.validate()) {
            render view: 'index', model: [user: user]
            return
        }
        user.enabled = true
        user.accountExpired = false
        Role roleUser = Role.findByAuthority(RoomExpenseUtils.ROLE_USER)
        registerService.save(user, personalDetail, roleUser)

        redirect(controller: 'home')
    }
}
