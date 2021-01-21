package acc.s3pid.forms;

import java.util.List;

import acc.s3pid.dto.PersonDTO;
import acc.s3pid.dto.UserDTO;
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
