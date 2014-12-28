package com.roomexpense.co

import grails.validation.Validateable

/**
 * Created by vivek on 6/11/14.
 */

@Validateable
class RegisterCO {
    String firstName
    String lastName
    String email
    String username
    String password
    String confirmPassword

    static constraints = {
        firstName nullable: false
        lastName nullable: true
        email nullable: true, email: true
        password nullable: false
        confirmPassword nullable: false, validator: { val, obj->
            if(val && val != obj.password) {
                return "custom.password.mismatch"
            }
        }
        username nullable: false
    }
}
