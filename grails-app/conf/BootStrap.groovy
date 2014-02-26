import com.pilotapp.polling.security.Role
import com.pilotapp.polling.security.User
import com.pilotapp.polling.security.UserRole

class BootStrap {

    def init = { servletContext ->
        createUserWithRole()
    }
    void createUserWithRole(){
        Role admin = Role.findByAuthority("ROLE_ADMIN")
        if(!admin){
            admin = new Role(authority: 'ROLE_ADMIN').save()
//            superAdmin.id = 100; superAdmin.save(flush: true)
        }
        User mifosUser = User.findByUsername('admin')
        if(!mifosUser){
            mifosUser = new User(username: 'admin@gmail.com', password: 'password', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false)
            mifosUser.save(flush: true)

            new UserRole(user: mifosUser, role: admin).save(flush: true)
        }

        Role userRole = Role.findByAuthority("ROLE_USER")
        if(!userRole){
            userRole = new Role(authority: 'ROLE_USER').save()
        }
        User poleUser = User.findByUsername('User')
        if(!poleUser){
            poleUser = new User(username: 'user@gmail.com', password: 'password', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false)
            poleUser.save(flush: true)

            new UserRole(user: poleUser, role: userRole).save(flush: true)
        }
    }
    def destroy = {
    }
}
