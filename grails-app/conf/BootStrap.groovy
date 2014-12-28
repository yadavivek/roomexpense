import com.roomexpense.PersonalDetail
import com.roomexpense.Role
import com.roomexpense.User
import com.roomexpense.UserRole

class BootStrap {

    def init = { servletContext ->
        User user = new User(username: "user",password: "p").save(flush: true,failOnError: true)
        Role roleUser = new Role(authority: "ROLE_USER").save(flush: true)
        PersonalDetail personalDetail = new PersonalDetail(firstName: "Vivek", lastName: "Yadav", email: "yadav@mail.com",user: user).save(failOnError: true, flush: true)
        user.personalDetail = personalDetail
        UserRole.create(user,roleUser,true)

        User admin = new User(username: "admin",password: "p").save(flush: true)
        Role roleAdmin = new Role(authority: "ROLE_ADMIN").save(flush: true)
        personalDetail = new PersonalDetail(firstName: "Vivek", lastName: "Yadav", email: "yadav@mail.com", user: admin).save(failOnError: true,flush: true)
        user.personalDetail = personalDetail
        UserRole.create(admin,roleAdmin,true)
    }
    def destroy = {
    }
}
