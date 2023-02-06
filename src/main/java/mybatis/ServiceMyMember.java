package mybatis;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

//회원인증 처리를 위한 서비스 객체
@Service
public interface ServiceMyMember {
	//아이디, 패스워드를 통해 로그인 처리를 위한 추상메서드
	public MyMemberDTO login(String id, String pass);

	public MyMemberDTO logout(String id, String pass);
	
	//수정처리
	public int idmodify(MyMemberDTO myMemberDTO);
	
	public MyMemberDTO idview(ParameterDTO parameterDTO);
	
	public int register(@Param("_name_") String name,
			@Param("_pass_") String pass,
			@Param("_id_") String id);
}
