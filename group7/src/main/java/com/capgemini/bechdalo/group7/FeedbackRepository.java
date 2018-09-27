package com.capgemini.bechdalo.group7;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface FeedbackRepository extends MongoRepository<Feedback,String> {
	public Feedback save(Feedback feedback);
}
