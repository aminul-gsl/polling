import com.pilotapp.polling.Option
import com.pilotapp.polling.Poll
import com.pilotapp.polling.Question
import com.pilotapp.polling.security.Role
import com.pilotapp.polling.security.User
import com.pilotapp.polling.security.UserRole

class BootStrap {

    def init = { servletContext ->
        createUserWithRole()
        createPole()
    }
    void createUserWithRole(){
        Role admin = Role.findByAuthority("ROLE_ADMIN")
        if(!admin){
            admin = new Role(authority: 'ROLE_ADMIN').save()
//            superAdmin.id = 100; superAdmin.save(flush: true)
        }
        User mifosUser = User.findByUsername('admin@gmail.com')
        if(!mifosUser){
            mifosUser = new User(username: 'admin@gmail.com', password: 'password', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false)
            mifosUser.save(flush: true)

            new UserRole(user: mifosUser, role: admin).save(flush: true)
        }

        Role userRole = Role.findByAuthority("ROLE_USER")
        if(!userRole){
            userRole = new Role(authority: 'ROLE_USER').save()
        }
        User poleUser = User.findByUsername('user@gmail.com')
        if(!poleUser){
            poleUser = new User(username: 'user@gmail.com', password: 'password', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false)
            poleUser.save(flush: true)

            new UserRole(user: poleUser, role: userRole).save(flush: true)
        }
    }
    def createPole(){
        User adminUser = User.findByUsername('admin@gmail.com')
        Poll poll1 = new Poll(description: "Poll 1.  Here is a long description of the poll that describe about the poll.",status: true,pollCount: 5,createDate: new Date(), user: adminUser)
        poll1.save()
        Poll poll2 =new Poll(description: "Poll 2.  Description of the 2.",status: true,pollCount: 54,createDate: new Date(), user: adminUser)
        poll2.save()
        Poll poll3 =new Poll(description: "This is system created description.",status: true,pollCount: 35,createDate: new Date(), user: adminUser)
        poll3.save()
        Poll poll4 =new Poll(description: "Another system created description",status: true,pollCount: 67,createDate: new Date(), user: adminUser)
        poll4.save()
        Poll poll5 =new Poll(description: "The purpose of the poll to know people choice about daily food",status: true,pollCount: 2,createDate: new Date(), user: adminUser)
        poll5.save()

        Question question1 = new Question(description: "Your favorite Food?",allowMultiple: true)
                .addToOption(new Option(description:'Rice'))
                .addToOption(new Option(description:'Meat'))
                .addToOption(new Option(description:'Fish'))
                .addToOption(new Option(description:'Curry'))
                .save()
        Question question2 = new Question(description: "Your favorite Book?",allowMultiple: false)
                .addToOption(new Option(description:'story'))
                .addToOption(new Option(description:'poem'))
                .addToOption(new Option(description:'Novel'))
                .addToOption(new Option(description:'Others'))
        Question question3 = new Question(description: "Your favorite City?",allowMultiple: false)
                .addToOption(new Option(description:'Dhaka'))
                .addToOption(new Option(description:'London'))
                .addToOption(new Option(description:'New York'))
                .addToOption(new Option(description:'Panchagarh'))
        Question question4 = new Question(description: "Your favorite Place?",allowMultiple: true)
                .addToOption(new Option(description:'Home'))
                .addToOption(new Option(description:'Sea Side'))
                .addToOption(new Option(description:'City crowd'))
                .addToOption(new Option(description:'Nature'))
        Question question5 = new Question(description: "Your favorite Movie?",allowMultiple: false)
                .addToOption(new Option(description:'Home Alone'))
                .addToOption(new Option(description:'Movie 2'))
                .addToOption(new Option(description:'Movie 3'))
                .addToOption(new Option(description:'Movie 4'))
        poll1.addToQuestion(question1)
                .addToQuestion(question2)
                .addToQuestion(question3)
                .addToQuestion(question4)
                .addToQuestion(question5)
                .save(flush: true)

    }
    def destroy = {

    }
}
