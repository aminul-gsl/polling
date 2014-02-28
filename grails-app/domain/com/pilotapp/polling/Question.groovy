package com.pilotapp.polling

class Question {
    String description
    boolean allowMultiple = false
    static hasMany = [option:Option]
    static constraints = {
        option nullable: true
    }
}
