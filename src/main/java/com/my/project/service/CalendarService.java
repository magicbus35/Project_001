package com.my.project.service;

import java.util.List;
import java.util.Map;

import com.my.project.dto.Calendar;

public interface CalendarService {


	int calDrag(Calendar calendar);
	List<Calendar> calList();
	int calDelete(int num);

}
