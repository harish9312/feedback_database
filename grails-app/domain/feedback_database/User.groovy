package feedback_database

class User {
    String name
    String userName
    String password


    static constraints = {

        name blank: false
        userName unique: true , blank: false
        password blank : false

    }

}
