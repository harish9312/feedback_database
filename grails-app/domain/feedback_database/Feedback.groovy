package feedback_database

class Feedback {


    String courseName
    String instituteName
    String trainerName
    String courseDuration
    String totalFees
    String feedback
    String userName //to fetch the feedback data of the user who is currently logged in

    static constraints = {

        courseName blank: false , nullable: false
        instituteName blank: false , nullable: false
        trainerName blank: false   , nullable: false
        courseDuration blank: false , nullable: false
        totalFees blank: false , nullable: false
    }

    static mapping = {

        feedback column: "feedback" , sqlType : "varchar(1000)"
    }

}
