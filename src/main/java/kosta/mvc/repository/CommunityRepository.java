package kosta.mvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;

import kosta.mvc.domain.CommunityBoard;

public interface CommunityRepository extends JpaRepository<CommunityBoard, Long>, 
		QuerydslPredicateExecutor<CommunityBoard> {
	
	/**
	 *  태그 이름에 해당하는 정보 조회!
	 */
	@Query("select c from CommunityBoard c where c.boardTag like ?1")
	//@Modifying //dml이나ddl은 필수!
	List<CommunityBoard> tagSelect(String tag);

}
