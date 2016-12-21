package feedback_database

class FeedbackController {

    def index() {
        session.userSession=null;
        def feedbacks = Feedback.list()
        [feedbacks:feedbacks]
    }
}
