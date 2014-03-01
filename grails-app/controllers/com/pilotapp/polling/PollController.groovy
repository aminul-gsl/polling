package com.pilotapp.polling

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class PollController {

    def index() {
        redirect(action: 'show')
    }
    def show() {
    render(view: 'create')
    }
    def create() {
        Poll poll=new Poll()
        poll.name=params.pollName
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
