package mybatis;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

//회원인증 처리를 위한 서비스 객체
@Service
public interface ServiceMyMember {
	//아이디, 패스워드를 통해 로그인 처리를 위한 추상메서드
	public MyMemberDTO login(String id, String pass);

	public MyMemberDTO logout(String id, String pass);
	
	public MyMemberDTO findId(String name);
	
	public MyMemberDTO findPass(String id, String name);
	
	public MyMemberDTO memberInfo(String id);
	
	public int passCheck(String id, String name, String pass);
	
	//수정처리
	public int idmodify(@Param("__id") String id,
			@Param("__name") String name,
			@Param("__pass") String pass);
	
	public MyMemberDTO idview(ParameterDTO parameterDTO);
	
	public int register(@Param("_id_") String id,
			@Param("_name_") String name,
			@Param("_pass_") String pass);
}
