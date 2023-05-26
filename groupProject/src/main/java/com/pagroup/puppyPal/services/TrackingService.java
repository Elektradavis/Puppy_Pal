package com.pagroup.puppyPal.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pagroup.puppyPal.models.Tracking;
import com.pagroup.puppyPal.repositories.TrackingRepository;

@Service
public class TrackingService {
	@Autowired
	private TrackingRepository repo;
	
	public Tracking findById(Long id) {
		Optional<Tracking> result = repo.findById(id);
		if(result.isPresent()) {
			return result.get();
		}
		return null;
	}
	
//	public List<Tracking> dogTracking(Long dogId) {
//		return repo.findByDog(dogId);
//	}
//	
	public List<Tracking> allTrackings() {
		return repo.findAll();
	}
	
	public Tracking createOrUpdate(Tracking tracking) {
		return repo.save(tracking);
	}
	
	public void delete(Tracking tracking) {
		repo.delete(tracking);
	}
	
	
}
