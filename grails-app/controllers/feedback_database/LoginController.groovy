package feedback_database

class LoginController {

    String username //to access in both the actions login and update
    String msg
    def index() {
       // redirect(action: "login")
    }

    def login() {

        def user=User.findByUserNameAndPassword(params.username , params.password)

        if(params.username!=null && params.password!=null)
        {
            if(user)
            {
                username = params.username //to be used in update action
                redirect(action: "update")

            }
            else
            {
                //if user not exist
                redirect(action : "index" ,model:[msg:msg])
            }

        }
            //if fields are null
        else
               redirect(action: "index")





    }


    def update()
    {

	String courseName
	String instituteName
	String trainerName
	String courseDuration
	String totalFees
	def feedback

        if(username!=null)
        {
            feedback = Feedback.findByUserName(username)

            courseName = feedback.courseName
            instituteName = feedback.instituteName
            trainerName = feedback.trainerName
            courseDuration = feedback.courseDuration
            totalFees = feedback.totalFees
            feedback = feedback.feedback

            def sendData = [courseName:courseName , instituteName : instituteName ,trainerName : trainerName , courseDuration: courseDuration , totalFees : totalFees, feedback :feedback ]
            println(sendData)
            [sendData :sendData]

        }
        else
        {
            redirect(action: "index")
        }
    }


}
