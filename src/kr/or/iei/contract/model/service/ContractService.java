package kr.or.iei.contract.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import kr.or.iei.company.model.vo.Company;
import kr.or.iei.contract.model.vo.Contract;

public interface ContractService {

	ArrayList<Company> selectConditionCompany(String area, String cleanType);


	HashMap<String, Object> MemberChoice(int currentPage, String userId);

	int insertCondition(Contract con);
	
}
