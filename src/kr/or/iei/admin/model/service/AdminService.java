package kr.or.iei.admin.model.service;

import kr.or.iei.admin.model.vo.Admin;

public interface AdminService {

	/**
	 * @Author : SeungHyun Kim(kshlove735)
	 * @Date : 2021. 12. 24.
	 * @return : Admin
	 * @subscription : 관리자 로그인 
	 */
	public Admin selectOneUser(String adminId, String adminPwd);

}