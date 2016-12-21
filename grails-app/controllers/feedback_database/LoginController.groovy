package feedback_database
import grails.converters.JSON
import uk.co.desirableobjects.oauth.scribe.OauthService
import grails.plugin.springsecurity.annotation.Secured

class LoginController {
    def springSecurityService
    String currentUser //to access in both the actions login and update
    String msg = "Please Login First"
    def feedback //defined here to store id for the user logged in
    FacebookLoginService facebookLoginService
    OauthService oauthService

    def auth(){}

    def index() {
        currentUser = springSecurityService.currentUser?.username
        println("Index"+currentUser)
        // redirect(action: "login")
    }

    def fbsuccess(){
        String sessionKey = oauthService.findSessionKeyForAccessToken('facebook')
        def token = session[sessionKey]
        def new1 =facebookLoginService.serviceMethod(token)
        println(new1+"Token")
        def data = JSON.parse(new1)
        currentUser = data.id
        println(currentUser)
        if(currentUser){
            redirect(controller: 'login' , action: 'update')
        }
        else
            redirect(controller: 'lognin' , action: 'index')
    }

    def getuser(){
        currentUser = springSecurityService.currentUser?.username
        println("Get"+ currentUser)
        redirect(controller: 'login' , action: 'update')

    }

    def update() {

    def username = currentUser
        println("1st"+username)
        feedback = Feedback.findByUserName(username)

        if (feedback != null) {

            String courseName
            String instituteName
            String trainerName
            String courseDuration
            String totalFees
            String fb

            if (username != null) {
                feedback = Feedback.findByUserName(username)
                if (feedback != null) {
                    courseName = feedback.courseName
                    instituteName = feedback.instituteName
                    trainerName = feedback.trainerName
                    courseDuration = feedback.courseDuration
                    totalFees = feedback.totalFees
                    fb = feedback.feedback


                    def sendData = [courseName: courseName, instituteName: instituteName, trainerName: trainerName, courseDuration: courseDuration, totalFees: totalFees, feedback: fb]

                    [sendData: sendData]


                }//2nd If Close

            }//1st If close

            else{
                println("In Else")
                def msg ="Please Login First"
                redirect(controller: 'login' , action: "index" , params:[msg:msg])

            }


        } else {
            def user = username
            redirect(controller: "login", action: "addFeedback")
        }
    }


    def updateData() {
        def username = currentUser
        println("in update data "+username)
        feedback = Feedback.findByUserName(username)
        feedback.courseName = params.courseName
        feedback.instituteName = params.instituteName
        feedback.trainerName = params.trainerName
        feedback.courseDuration = params.courseDuration
        feedback.totalFees = params.totalFees
        feedback.feedback = params.fb
        if (feedback.save()) {
            redirect(controller: "feedback", action: "index")
        } else {
            redirect(controller: "login", action: "index")
        }


    }

    def deleteFeedback() {
        def username = currentUser
        if(username!=null) {
            def del = Feedback.findByUserName(username)
            if (del.delete()) {
                render("Deleted")
            } else {
                redirect(controller: "login", action: "addFeedback")
            }
        }
        else
            redirect(action: 'index')
    }
    def addFeedback() {
        def username = currentUser
        println("in addnew "+username)
        if(username!=null)
    {
        println(username)
        def loggedUser = [username: username]
        [loggedUser: loggedUser]
    }
        else
        redirect(action: 'index' , params: [msg:msg])
    }

}//Controller Close

