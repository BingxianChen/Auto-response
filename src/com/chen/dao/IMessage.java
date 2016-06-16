package com.chen.dao;

import java.util.List;

import com.chen.bean.Message;

/**
 * 与Message配置文件相对应的接口
 * @author chen
 *
 */
public interface IMessage {
	public List<Message> queryMessageList(Message message);
}
