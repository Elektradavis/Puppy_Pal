package com.pagroup.puppyPal.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.pagroup.puppyPal.models.Tracking;

@Repository
public interface TrackingRepository extends CrudRepository<Tracking, Long>{
	List<Tracking> findAll();
//	List<Tracking> findByDog(Long dogId);
}
