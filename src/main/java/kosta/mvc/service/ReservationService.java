package kosta.mvc.service;

import java.util.List;

import kosta.mvc.domain.Reservation;

public interface ReservationService {

	void insert(Reservation reser);
	
	Reservation selectBy(Long resiNo, String checkIn, String checkOut);

	List<Reservation> selectByCampNo(Long campNo);

}
