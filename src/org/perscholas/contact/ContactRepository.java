package org.perscholas.contact;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface ContactRepository extends CrudRepository<Contact, Long> {
	
	@Query(value = "SELECT c FROM Contact c WHERE c.name LIKE '%' || :keyword || '%'"
			+ " OR c.email LIKE '%' || :keyword || '%'"
			+ " OR c.address LIKE '%' || :keyword || '%'"
			+ " OR c.phone LIKE '%' || :keyword || '%'")
	public List<Contact> search(@Param("keyword") String keyword);
}
