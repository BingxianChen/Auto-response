package com.chen.service;

import java.util.List;

import com.chen.bean.Message;
import com.chen.dao.MessageDao;

/**
 * 列表相关的业务功能
 * @author chen
 *
 */
public class ListService {
	public List<Message> queryMessageList(String command,String description){
		MessageDao dao = new MessageDao();
		return dao.queryMessageList(command, description);
	}

}
