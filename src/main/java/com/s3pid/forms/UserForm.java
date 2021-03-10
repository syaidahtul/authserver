package com.s3pid.forms;

import java.util.List;

import com.s3pid.dto.PersonDTO;
import com.s3pid.dto.UserDTO;

import lombok.Getter;
import lombok.Setter;

/*
 * UserForm for ADMIN VIEW 
 * 
 */

@Getter
@Setter
public class UserForm extends AbstractForm {

	private static final long serialVersionUID = -1072735834543077859L;

	private PersonDTO person;
	
	private List<UserDTO> users;
	
}
