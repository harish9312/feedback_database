package feedback_database

class RegisterController {

    def user

    def index() {
       
        }

    //to add a new user into the feedback database
    def addUser()
    {   //to print the msg when an error occurs
        def msg="Sorry Please try Again"
        //to be used in the addFeedback action
        user = params.userName
        def add = new User(params)
        
        if(add.save())
        {
            redirect(action: "addFeedback")
        }
        else
        {
            redirect(action:"index" )

        }
    }
    def addFeedback(){
        //passing the username to the view of addFeedback so the username must be inserted in the User table
      def loggedUser = [user:user]
	                 [loggedUser:loggedUser]
        }
    //save the feedback to the database and redirect to the feedback list
    def saveFeedback()
    {
        def saveFB = new Feedback(params)
        if(saveFB.save())
        {
            redirect(controller :"feedback" , action: "index")
        }
    }


 }
