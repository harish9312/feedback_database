package feedback_database

class FeedbackController {




    def index() {
        def feedbacks = Feedback.list()
        [feedbacks:feedbacks]
    }
}
