package com.asif.userportal

class DashboardController {

    AuthenticationService authenticationService

    def index() {

        def res = authenticationService.getUser()
        [user: res]
    }

    def change() {
    }

    def changepassword(){

        def user = authenticationService.getUser()
        String temp = params.currentpassword

        if(temp.encodeAsMD5() == user.password){
            String one = params.password
            String two = params.confirmpassword
            if(one != two){

                flash.message = AppUtil.infoMessage(g.message(message: "Password are is not match") , false)
                redirect(controller: "dashboard", action: "change")

            }else{

                def res = authenticationService.update(user , params.password)
                if(res.isSuccess) {
                    flash.message = AppUtil.infoMessage(g.message(message: "Password Changed Successfully"))
                    redirect(controller: "dashboard", action: "change")
                }
            }
        }else{
            flash.message = AppUtil.infoMessage(g.message(message: "Current password is not match") , false)
            redirect(controller: "dashboard", action: "change")
        }


    }
}
