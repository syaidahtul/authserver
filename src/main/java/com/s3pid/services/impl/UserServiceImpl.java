package com.s3pid.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.s3pid.forms.UserRegistrationForm;
import com.s3pid.models.AppUser;
import com.s3pid.repositories.AppUserRepository;
import com.s3pid.services.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	PasswordEncoder encoder;

	@Autowired
	private AppUserRepository appUserRepository;

	@Override
	public void createUser(UserRegistrationForm regForm) {
		String email = regForm.getEmail();
		String domain = email.substring(email .indexOf("@") + 1);
		
		if ("sabah.gov.my".equals(domain)) {
			regForm.setUserType("GOV_STAFF");
		} else {
			regForm.setUserType("PUBLIC");
		}
		
		AppUser appUser = new AppUser(regForm.getUsername(),regForm.getEmail(), encoder.encode(regForm.getPassword()), regForm.getUserType(), true);
		appUser = appUserRepository.save(appUser);
	}
	
	@Override
	public UserPrincipal loadUserByUsername(String username) throws UsernameNotFoundException {
		AppUser appUser = appUserRepository.findByEmail(username);
		UserPrincipal principal = new UserPrincipal();
		if (appUser != null) {
			principal.setId(appUser.getId());
			principal.setUsername(appUser.getUsername());
			principal.setEmail(appUser.getEmail());
			principal.setPassword(appUser.getPassword());
			principal.setUsertype(appUser.getUserTypeCode());
		}
		
		return principal;
	}

}
