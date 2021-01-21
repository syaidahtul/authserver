package acc.s3pid.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PersonDTO {

	private String fullName;
	
	private String secondName;
	
	private String idType;
	
	private String idNo;
	
	private String email;
	
	private String currUserRole;
	
	private boolean active;
	
}
