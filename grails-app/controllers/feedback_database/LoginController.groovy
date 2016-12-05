package feedback_database

class LoginController {

    String username //to access in both the actions login and update
    String msg
    def feedback //defined here to store id for the user logged in
    
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


    def update() {
	      		
        feedback = Feedback.findByUserName(username)
	
	
	if(feedback!=null){
	
        String courseName
        String instituteName
        String trainerName
        String courseDuration
        String totalFees
        String fb
        
	
	if (username != null) 
	     {
            feedback = Feedback.findByUserName(username)
            if(feedback!=null)
            {
                courseName = feedback.courseName
                instituteName = feedback.instituteName
                trainerName = feedback.trainerName
                courseDuration = feedback.courseDuration
                totalFees = feedback.totalFees
                fb = feedback.feedback
		
		
                def sendData = [courseName: courseName, instituteName: instituteName, trainerName: trainerName, courseDuration: courseDuration, 			        totalFees: totalFees, feedback: fb]
		
                [sendData: sendData]



            }//2nd If Close
            
          }//1st If close 

        else 
            redirect(action: "index")

	}
	else{
	def user = username

	redirect(controller:"login" , action:"addFeedback")

	}
    
    }//def close




    def updateData()
    {

        feedback = Feedback.findByUserName(username)
        feedback.courseName = params.courseName
        feedback.instituteName = params.instituteName
        feedback.trainerName = params.trainerName
        feedback.courseDuration = params.courseDuration
        feedback.totalFees = params.totalFees
        feedback.feedback = params.fb
        if(feedback.save())
        {
            redirect(controller:"feedback" , action: "index")
        }
        else
        {
            redirect(controller:"login" , action:"index")
        }

    }

    def deleteFeedback(){
	
	def del = Feedback.findByUserName(username)
	if(del.delete())
	{
		render("Deleted")
	}
	else
	{
		redirect(controller:"login" , action:"addFeedback")	
	}

   }


    def addFeedback(){
        //passing the username to the view of addFeedback so the username must be inserted in the User table
      def loggedUser = [username:username]
	                 [loggedUser:loggedUser]
        }














}

