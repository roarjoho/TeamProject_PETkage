package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
    
    Connection con = null;
    PreparedStatement pstmt = null;
    String sql = null;
    ResultSet rs = null;
    
    private Connection getConnection() throws Exception {//xml파일 활용하여 db연결정보 가져오기
        Context init = new InitialContext();
        DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/MysqlDB");
        con = ds.getConnection();           
    return con;          
}//get Connection---------------------------------------------------

    public void objectClose() {
        if(pstmt!=null) {
            try{pstmt.close();}
            catch (Exception e) {}
        }
        if(con!=null) {
            try {con.close();}
            catch (Exception e2) {}
        }
    }//object Close---------------------------------------------------   
    
    public void insertMember(MemberDTO memberDTO) {
        System.out.println("MemberDAO.insertMember(memberDTO) 호출");
        try {
            con=getConnection();        
            sql = "insert into user (user_id, user_pwd, user_name, user_phone, user_email, user_createDate) values(?,?,?,?,?,?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, memberDTO.getUser_id());
            pstmt.setString(2,memberDTO.getUser_pwd());
            pstmt.setString(3,memberDTO.getUser_name());
            pstmt.setString(4,memberDTO.getUser_phone());
            pstmt.setString(5,memberDTO.getUser_email());
            pstmt.setTimestamp(6,memberDTO.getUser_createDate());                       
            pstmt.executeUpdate();
            
        } catch (Exception e) {
            System.out.println("insertMember()에서 예외가 발생함.");
            e.printStackTrace();
        } finally {
            objectClose();
        }                        
    }//------insertMember()------------

    public MemberDTO getMember(String id) {
        System.out.println("MemberDAO.getMember(id) 호출");
        MemberDTO memberDTO = null;
        try {
            con = getConnection();
            sql = "select * from user where user_id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,id);
            rs = pstmt.executeQuery();
            if(rs.next()) {
                memberDTO = new MemberDTO();
                memberDTO.setUser_id(rs.getString("user_id"));
                memberDTO.setUser_pwd(rs.getString("user_pwd"));
                memberDTO.setUser_name(rs.getString("user_name"));
                memberDTO.setUser_phone(rs.getString("user_phone"));
                memberDTO.setUser_email(rs.getString("user_email"));
                memberDTO.setUser_createDate(rs.getTimestamp("user_createDate"));                              
            } else {
                memberDTO=null;
            }                        
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            objectClose();
        }       
        return memberDTO;
    }//------getMember()------------










}
