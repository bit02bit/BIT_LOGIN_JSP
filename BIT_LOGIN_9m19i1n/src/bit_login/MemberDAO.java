package bit_login;

import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	private static MemberDAO instance;
	private static ArrayList<MemberDTO> memberList = new ArrayList<MemberDTO>();

    // ΩÃ±€≈Ê ∆–≈œ
    private MemberDAO(){}
    public static MemberDAO getInstance(){
        if(instance==null) {
        	instance=new MemberDAO();
        	setup();
        }
            
        return instance;
    }
    
	public static void setup() {
		memberList.add(new MemberDTO("min", "min123"));
		memberList.add(new MemberDTO("hoon", "hoon123"));
		memberList.add(new MemberDTO("hwan", "hwan123"));
		memberList.add(new MemberDTO("hyun", "hyun123"));
	}
	
	public boolean login(String id, String pw) {
		for(MemberDTO data: memberList) {
			if(data.getId().equals(id)) {
				if(data.getPW().equals(pw)) {
					return true;
				}
			}
		}
		return false;
	}
}