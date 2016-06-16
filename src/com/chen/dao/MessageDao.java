package com.chen.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.chen.bean.Message;
import com.chen.db.DBAccess;
/**
 * 和message表相关的数据库操作
 * @author chen
 *
 */
public class MessageDao {

	public List<Message> queryMessageList(String command,String description){
		DBAccess dbAccess = new DBAccess();
		List<Message> messageList = new ArrayList<Message>();
		SqlSession sqlSession = null;
		try {
			sqlSession = dbAccess.getSqlSesion();
			Message message = new Message();
			message.setCommand(command);
			message.setDescription(description);
			//通过sqlSession执行SQL语句
			//messageList = sqlSession.selectList("Message.queryMessageList",message);
			IMessage imessage = sqlSession.getMapper(IMessage.class);
			messageList =imessage.queryMessageList(message);
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if(sqlSession != null){
				sqlSession.close();
			}
		}
		return messageList;
	}
	/**
	 * 单条删除
	 * @param id
	 */
	public void deleteOne(int id){
		DBAccess dbAccess = new DBAccess();
		SqlSession sqlSession = null;
		try {
			sqlSession = dbAccess.getSqlSesion();
			//通过sqlSession执行SQL语句
			sqlSession.delete("Message.deleteOne",id);
			sqlSession.commit();
			
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if(sqlSession != null){
				sqlSession.close();
			}
		}
		
	}
	/**
	 * 多表删除
	 */
	public void deleteBatch(List<Integer> idList){
		DBAccess dbAccess = new DBAccess();
		SqlSession sqlSession = null;
		try {
			sqlSession = dbAccess.getSqlSesion();
			//通过sqlSession执行SQL语句
			sqlSession.delete("Message.deleteBatch",idList);
			sqlSession.commit();
			
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if(sqlSession != null){
				sqlSession.close();
			}
		}
	}
	
	
	
	
	
	
	
	
	
	
	/**
	 * 根据查询条件查询消息列表
	 */
	/*
	 * public List<Message> queryMessageList(String command,String description){
		List<Message> messageList = new ArrayList<Message>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hello?useUnicode=true&"
					+ "characterEncoding=UTF8&autoReconnect=true&useSSL=false","root","123456");
					StringBuilder sql = new StringBuilder("select ID,COMMAND,DESCRIPTION,CONTENT from MESSAGE where 1=1");
					List<String> paramList = new ArrayList<String>();
					if(command !=null&&!"".equals(command.trim())){
						sql.append(" and COMMAND=?");
						paramList.add(command);
					}
					if(description !=null&&!"".equals(description.trim())){
						sql.append(" and DESCRIPTION like '%' ? '%'");
						paramList.add(description);
					}
					PreparedStatement statement = conn.prepareStatement(sql.toString());
					for(int i = 0;i<paramList.size();i++){
						statement.setString(i+1, paramList.get(i));
						System.out.println(paramList.get(i));
					}
					System.out.println(statement.toString());
					ResultSet rs = statement.executeQuery();
					while(rs.next()){
						Message message = new Message();
						messageList.add(message);
						message.setId(rs.getString("ID"));
						message.setCommand(rs.getString("COMMAND"));
						message.setDescription(rs.getString("DESCRIPTION"));
						message.setContent(rs.getString("CONTENT"));
						System.out.println(message.toString());
						
					}
					
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return messageList;
		
	}
	*/
}
	

