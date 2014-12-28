package com.roomexpense

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

@Secured("IS_AUTHENTICATED_ANONYMOUSLY")
class HomeController {

    def springSecurityService

    def index() {
        if(springSecurityService.isLoggedIn()) {
            redirect(action: 'candidate')
        }
    }

    @Secured("IS_AUTHENTICATED_FULLY")
    def candidate() {
        User user = springSecurityService.currentUser as User
        List<PersonalDetail> partners = user.partners as List
        [user:user, partners:partners]
    }
}
