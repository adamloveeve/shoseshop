package com.soecode.jt.service.impl;

import static org.junit.Assert.fail;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.soecode.jt.BaseTest;
import com.soecode.jt.dto.AppointExecution;
import com.soecode.jt.service.BookService;

public class BookServiceImplTest extends BaseTest {

	@Autowired
	private BookService bookService;

	@Test
	public void testAppoint() throws Exception {
		long bookId = 1001;
		long studentId = 12345678910L;
		AppointExecution execution = bookService.appoint(bookId, studentId);
		System.out.println(execution);
	}

}
