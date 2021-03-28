package com.asif.userportal


class AppInitializationService {

    static initialize() {
        initMember()
    }

    private static initMember() {
        if (User.count() == 0) {
            User user = new User()
            user.firstName = "System"
            user.lastName = "Administrator"
            user.email = "admin@system.com"
            user.address = "Dhaka"
            user.phone = "01000110011"
            user.password = "admin"
            user.birthDate = new Date(2000 , 1 ,11)
            user.memberType = GlobalConfig.USER_TYPE.ADMINISTRATOR
            if(user.validate()){
                user.save(flash: true)
            }
        }
    }
}
