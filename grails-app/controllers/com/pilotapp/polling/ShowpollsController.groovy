package com.pilotapp.polling

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class ShowpollsController {

    def index() {
        // This page will list all active poll
        render (view: 'index')
    }
}
