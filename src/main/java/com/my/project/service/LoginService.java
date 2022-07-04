package com.my.project.service;

import java.util.Map;

public interface LoginService {
	Map<String, Object> loginCheck(String mid, String passwd);
}
