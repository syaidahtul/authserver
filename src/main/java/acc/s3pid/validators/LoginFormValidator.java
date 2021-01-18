package acc.s3pid.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import acc.s3pid.forms.UserRegistrationForm;
import acc.s3pid.services.UserService;

public class LoginFormValidator implements Validator {
	
	private UserService service;

	@Override
	public boolean supports(Class<?> clazz) {
		return UserRegistrationForm.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		UserRegistrationForm form = UserRegistrationForm.class.cast(target);
		
		
				
	}

}
