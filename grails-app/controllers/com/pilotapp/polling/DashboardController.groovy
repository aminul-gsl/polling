package com.pilotapp.polling

import com.pilotapp.polling.security.User
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
class DashboardController {

    def index() {
//        def user = User.get(springSecurityService.principal.id)
        def pollList = Poll.findAll();
//        println(pollList.size())
        // This page will list all active poll
        render (view: 'index',model: [pollList:pollList])
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
