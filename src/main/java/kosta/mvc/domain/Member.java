package kosta.mvc.domain;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Builder
/**
 * 회원 도메인
 */
public class Member {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "member_mno_seq")
	@SequenceGenerator(name = "member_mno_seq", allocationSize = 1, sequenceName = "member_mno_seq")
	private Long memberNo; //회원번호
	
	private String memberProfile; //프로필아이콘
	
	@Column(nullable = false)
	private String memberEmail; //이메일
	
	@Column(nullable = false)
	private String memberPassword; //비밀번호
	
	@Column(nullable = false)
	private String memberNickname; //닉네임
	
	@Column(nullable = false)
	private String memberPhone; //핸드폰번호
	
	@Column(nullable = false, name = "mamber_birth_date")
	private String memberBirthDate; //생년월일
	
	private String memberAuth; //본인인증
	
	private String memberRole;//권한
	
	/*
	 @OneToMany(mappedBy = "member", cascade = CascadeType.ALL) 
	 private List<Pet> petList;
	 
	 @OneToMany(mappedBy = "member", cascade = CascadeType.ALL) 
	 private List<QnaBoard> qnaBoardList;
	 
	 @OneToMany(mappedBy = "member", cascade = CascadeType.ALL) 
	 private List<Scrap> scrapList;
	 
	 @OneToMany(mappedBy = "member", cascade = CascadeType.ALL) 
	 private List<Reservation> reservationList;*/
	 
	 @OneToMany(mappedBy = "member", cascade = CascadeType.ALL) 
	 private List<CommunityBoard> communityBoardList;
	 
	 @OneToMany(mappedBy = "member", cascade = CascadeType.ALL) 
	 private List<LikeBoard> likeList;
	 
	
	
}
