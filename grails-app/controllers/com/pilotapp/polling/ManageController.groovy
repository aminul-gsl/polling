package com.pilotapp.polling

import com.pilotapp.polling.security.User
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class ManageController {
    def springSecurityService
    def index() {
        def user = User.get(springSecurityService.principal.id)
        def pollList = Poll.findAllByUser(user);
        println(pollList.size())
        // This page will list all active poll
        render (view: 'index',model: [pollList:pollList])
    }
    def participants(Long id) {
        Poll aPoll = Poll.read(id)
        if(!aPoll){
            redirect(action: 'index')
        }
        def userList = User.findAll()
    render(view: 'participantList',model: [userList:userList,aPoll:aPoll])
    }
    def create() {
        Poll poll=new Poll()
        poll.description=params.description
        poll.createDate=new Date();
       poll.save()
    render (view: 'create')
    }
    def save() {
//        if (! poll.save()) {
            // validation failed, render registration page again
//            render(view: 'create',model:[poll:poll] )
//            return
//        } else {
            // validate/save ok, redirect to list page
            flash.message = "Poll Created successfully"
            redirect(action: 'show')
//        }
    }
}
