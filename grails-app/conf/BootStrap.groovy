import grails.util.Holders

class BootStrap {

    def init = { servletContext ->
        //Holders.config.grails.appRootUrl = "/aslConverter"
        Holders.config.grails.appRootUrl = ""
    }
    def destroy = {
    }
}
