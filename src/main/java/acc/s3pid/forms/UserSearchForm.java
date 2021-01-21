package acc.s3pid.forms;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserSearchForm extends AbstractForm {

	private static final long serialVersionUID = 7544473639190391774L;

	private String fullName;
	
	private String secondName;
	
	private String idType;
	
	private String idNo;
	
	private String userType;
	
	private String email;
	
	private boolean active;

}
