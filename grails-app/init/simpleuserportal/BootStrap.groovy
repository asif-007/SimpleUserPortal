package simpleuserportal

import com.asif.userportal.AppInitializationService

class BootStrap {

    def init = { servletContext ->
        AppInitializationService.initialize()
    }
    def destroy = {
    }
}
