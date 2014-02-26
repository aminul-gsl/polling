package com.pilotapp.polling

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class PollController {

    def index() {
        redirect(action: 'show')
    }
    def show() {
    render(view: 'pollList')
    }
    def create() {
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
