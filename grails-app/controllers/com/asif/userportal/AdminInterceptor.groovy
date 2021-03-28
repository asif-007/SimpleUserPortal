package com.asif.userportal


class AdminInterceptor {

    AuthenticationService authenticationService

    AdminInterceptor(){

    }

    boolean before() {

        if(authenticationService.isAdmin()){
            return true
        } else{
            redirect(controller: "dashboard", action: "index")
            return false
        }
    }
}
