package com.pilotapp.polling

class Question {
    String name
    static belongsTo = [poll:Poll]
    static hasMany = [option:Option]
    static constraints = {
    }
}
