package com.pagroup.puppyPal.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pagroup.puppyPal.models.Dog;
import com.pagroup.puppyPal.repositories.DogRepository;

@Service
public class DogService {

	@Autowired
	private DogRepository repo;
	
	public Dog findById(Long id) {

		Optional<Dog> result = repo.findById(id);
		if(result.isPresent()) {
			return result.get();
		}
		
		return null;
	}
	
	public Dog show(Dog dog) {
		return repo.save(dog);
	} 
	
	public List<Dog> all() {
		return repo.findAll();
	}
	
	public Dog update(Dog dog) {
		return repo.save(dog);
	}
	
	public Dog create(Dog dog) {
		return repo.save(dog);
	}
	

	
	public void delete(Dog dog) {
		repo.delete(dog);
	}
}