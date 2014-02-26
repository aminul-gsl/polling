package com.pilotapp.polling

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
class DashboardController {

    def index() {
        redirect(action: 'show')
    }
    def show() {
        render (view: 'index')
    }
    def polllist(){
         //Will show all avilable poll list with link to take part on the poll
    }

    def takepart(){
        //will show the selected poll on polling page
    }
    def save(){
        //save poll here
        flash.message = "Poll Created successfully"
        redirect(action: 'show')
    }
}
