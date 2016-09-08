//User Domain Class for Registred User
package com.feedback_database

class User {

    String name
	String username
    String password
	

    static constraints = {

        name blank: false
        username unique: true , blank: false
        password blank : false

    }
}
