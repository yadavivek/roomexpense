package com.roomexpense

class PersonalDetail {

    String firstName
    String lastName
    String email

    static constraints = {
        firstName nullable: false
        lastName nullable: true
        email nullable: true, email: true
    }

    static belongsTo = [user: User]
    static hasMany = [expenses:Expense]
}
