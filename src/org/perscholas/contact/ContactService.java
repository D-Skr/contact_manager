package org.perscholas.contact;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ContactService {
	@Autowired ContactRepository repo;
	
	public void save(Contact contact) {
		repo.save(contact);
	}
	
	public List<Contact> listAll() {
		return (List<Contact>) repo.findAll();
	}
	
	public Contact get(Long id) {
		return repo.findById(id).get();
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public List<Contact> search(String keyword) {
		return repo.search(keyword);
	}
}
