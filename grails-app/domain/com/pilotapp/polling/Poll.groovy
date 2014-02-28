package com.pilotapp.polling

import com.pilotapp.polling.security.User

class Poll {
    String name
    String description
    boolean status = false
    Date createDate
    Integer pollCount = 0
    static belongsTo = [user:User]
    static hasMany = [question:Question]
    static constraints = {
        description nullable: true
    }
}
