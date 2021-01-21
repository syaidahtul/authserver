package acc.s3pid.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(	name = "person", 
		uniqueConstraints = { 
			@UniqueConstraint(columnNames = {"fullName","idType","idNo"})
		})
public class Person {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "person_seq", allocationSize = 1, initialValue = 10000)
	private Long id;
	
	private String fullName;
	
	private String secondName;
	
	private String idType;
	
	private String idNo;
	
	private String email;
	
	private String currUserRole;
	
	private boolean active;

}
