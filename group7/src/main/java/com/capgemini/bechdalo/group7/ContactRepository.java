package com.capgemini.bechdalo.group7;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface ContactRepository extends MongoRepository<Contact,String> {
	public Contact save(Contact contact);
	
	
}
