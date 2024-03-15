package bean.Service.imple;

import bean.Dao.DBcon;
import bean.Dao.Title;
import bean.Service.TitleService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TitleServiceImpl implements TitleService {
    private Connection connection;
    private PreparedStatement TitlesQuery;
    private ResultSet results;


    //获取
    public List<Title> getTitles(){
        List<Title> titleList = new ArrayList<Title>();
        try {
            connection = DBcon.getConnection();
            TitlesQuery = connection.prepareStatement("select isbn,title,editionNumber,copyright,"+
                    "publisherId,imageFile,price "+"from titles ORDER BY title");
            ResultSet results = TitlesQuery.executeQuery();;
            while (results.next()){
                Title book = new Title();
                book.setIsbn(results.getString("isbn"));
                book.setTitle(results.getString("title"));
                book.setEditionNumber(results.getInt("editionNumber"));
                book.setCopyright(results.getString("copyright"));
                book.setPublisherId(results.getInt("publisherID"));
                book.setImageFile(results.getString("imageFile"));
                book.setPrice(results.getFloat("price"));
                titleList.add(book);
            }
        }
        catch (SQLException exception){
            exception.printStackTrace();
        }
        finally {
            DBcon.closeResultSet(results);
            DBcon.closeStatement(TitlesQuery);//?
            DBcon.closeConnection(connection);
        }
        return titleList;
    }



    //查找
    public Title findByIsbn(String isbn){
        Title book = null;
        try {
            connection = DBcon.getConnection();
            String sql = "select * from titles where isbn='"+isbn+"'";
            TitlesQuery = connection.prepareStatement(sql);
            results = TitlesQuery.executeQuery();
            if (results.next()){
                book = new Title();
                book.setIsbn(results.getString("isbn"));
                book.setTitle(results.getString("title"));
                book.setEditionNumber(results.getInt("editionNumber"));
                book.setCopyright(results.getString("copyright"));
                book.setPublisherId(results.getInt("publisherID"));
                book.setImageFile(results.getString("imageFile"));
                book.setPrice(results.getFloat("price"));
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }finally {
            DBcon.closeResultSet(results);
            DBcon.closeStatement(TitlesQuery);
            DBcon.closeConnection(connection);
        }
        return book;
    }


    //添加
    public int add(Title titlebean){
        int result = 0;
        try {//这里用prepareStatement的“?”作为占位符方法很方便
            connection = DBcon.getConnection();
            String sql ="insert into titles(isbn,title, editionNumber, ";
            sql += "copyright, publisherID,imageFile, price) values(?,?,?,?,?,?,?)";
            TitlesQuery = connection.prepareStatement(sql);
            TitlesQuery.setString(1, titlebean.getIsbn());
            TitlesQuery.setString(2, titlebean.getTitle());
            TitlesQuery.setInt(3, titlebean.getEditionNumber());
            TitlesQuery.setString(4,titlebean.getCopyright());
            TitlesQuery.setInt(5, titlebean.getPublisherId());
            TitlesQuery.setString(6, titlebean.getImageFile());
            TitlesQuery.setFloat(7, titlebean.getPrice());
            result = TitlesQuery.executeUpdate();
        }
        catch(Exception e){e.printStackTrace();}
        finally {//释B资源
        DBcon.closeResultSet(results);
        DBcon.closeStatement(TitlesQuery);
        DBcon.closeConnection(connection);}
        return result;
    }


    //删除
    public int delete(String isbn){
        int result = 0;
        try {
            connection = DBcon.getConnection();
            String sql = "delete from titles where isbn='"+isbn+"'";
            TitlesQuery = connection.prepareStatement(sql);
            result = TitlesQuery.executeUpdate();
            return result;
        }catch (Exception e){
            e.printStackTrace();
        }
        finally {
            DBcon.closeResultSet(results);
            DBcon.closeStatement(TitlesQuery);
            DBcon.closeConnection(connection);
        }

        return result;
    }


    //更新
    public int update(Title titlebean) {
        int result= 0;
        try{//这里用prepareStatement的“?"作为占位符方法很方便
            connection = DBcon.getConnection();
            String sql= "update titles set title=?, editionNumber=?,";
            sql += "copyright=?, publisherId=?, imageFile=?, price=? where isbn=?";
            TitlesQuery = connection.prepareStatement(sql);
            TitlesQuery.setString(1, titlebean.getTitle());
            TitlesQuery.setInt(2, titlebean.getEditionNumber());
            TitlesQuery.setString(3,titlebean.getCopyright());
            TitlesQuery.setInt(4, titlebean.getPublisherId());
            TitlesQuery.setString(5, titlebean.getImageFile());
            TitlesQuery.setFloat(6, titlebean.getPrice());
            TitlesQuery.setString(7, titlebean.getIsbn());
            result = TitlesQuery.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
        finally {
            DBcon.closeResultSet(results);
            DBcon.closeStatement(TitlesQuery);
            DBcon.closeConnection(connection);
        }
        return result;
    }
}
