package com.yostech.yoscare

import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.authentication.dao.NullSaltSource
import grails.plugin.springsecurity.ui.RegisterCommand
import grails.plugin.springsecurity.ui.RegistrationCode

@Secured('permitAll')
class RegisterController extends grails.plugin.springsecurity.ui.RegisterController {
    def register(RegisterCommand registerCommand) {

        if (!request.post) {
            return [registerCommand: new RegisterCommand()]
        }

        if (registerCommand.hasErrors()) {
            return [registerCommand: registerCommand]
        }

        def user = uiRegistrationCodeStrategy.createUser(registerCommand)
        user.enabled=true
        user.accountLocked=false
        user.passwordExpired=false
        user.accountExpired=false
        user.password=registerCommand.password
        user.save(validate:false,flush:true)
        flash.message = "Account is created successfully <a href='/login/auth'>Click Here to Login</a>"
        redirect (controllerName:'login',actionName:'auth')
       /* String salt = saltSource instanceof NullSaltSource ? null : registerCommand.username
        RegistrationCode registrationCode = uiRegistrationCodeStrategy.register(user, registerCommand.password, salt)

        if (registrationCode == null || registrationCode.hasErrors()) {
            // null means problem creating the user
            flash.error = message(code: 'spring.security.ui.register.miscError')
            return [registerCommand: registerCommand]
        }

        sendVerifyRegistrationMail registrationCode, user, registerCommand.email

        [emailSent: true, registerCommand: registerCommand]*/
    }
}
