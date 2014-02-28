package com.pilotapp.polling

class Option {
    String name
    static belongsTo = [question:Question]
    static constraints = {
    }
}
