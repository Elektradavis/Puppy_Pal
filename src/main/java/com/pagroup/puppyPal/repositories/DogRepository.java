package com.pagroup.puppyPal.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.pagroup.puppyPal.models.Dog;

import java.util.List;

@Repository
public interface DogRepository extends CrudRepository<Dog, Long> {

	List<Dog> findAll();
} 