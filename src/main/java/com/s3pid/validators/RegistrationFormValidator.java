package com.s3pid.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.s3pid.forms.UserRegistrationForm;
import com.s3pid.repositories.AppUserRepository;
import com.s3pid.services.UserService;

public class RegistrationFormValidator implements Validator {
	
	private UserService userService;
	
	private AppUserRepository appUserRepository;

	public RegistrationFormValidator(UserService userService) {
		this.userService = userService;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		return UserRegistrationForm.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {

		UserRegistrationForm form = UserRegistrationForm.class.cast(target);
		
		if (appUserRepository.existsByUsername(form.getUsername())) {
			errors.rejectValue("", "error.username.taken", "error");
		}

		if (appUserRepository.existsByEmail(form.getEmail())) {
			errors.rejectValue("", "error.username.taken", "error");
		}
		
				
	}

}
