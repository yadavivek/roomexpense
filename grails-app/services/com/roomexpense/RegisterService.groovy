package com.roomexpense

import grails.transaction.Transactional

@Transactional
class RegisterService {

    def save(User user, PersonalDetail personalDetail, Role role) {
        user.save(failOnError: true)
        UserRole.create(user, role, false)
        personalDetail.user = user
        personalDetail.save(failOnError: true)
        user.personalDetail = personalDetail
    }
}
