package acc.s3pid.services;

import org.springframework.security.core.userdetails.UserDetailsService;

import acc.s3pid.forms.UserRegistrationForm;

public interface UserService extends UserDetailsService {

	public void createUser(UserRegistrationForm registrationForm);

}
