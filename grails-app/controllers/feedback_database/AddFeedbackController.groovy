package feedback_database

class AddFeedbackController {

    def user

    def index() {
       
        }
    def saveFeedback()
      {
        def saveFB = new Feedback(params)
        if(saveFB.save())
        {
            redirect(controller :"feedback" , action: "index")
        }
          else
        {
           redirect(action :"index") 
        }
    }
}
