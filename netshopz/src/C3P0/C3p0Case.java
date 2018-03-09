package C3P0;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
import org.junit.Test;
import com.backstage.DBUtilDaoToUser;
import com.backstage.DBUtilDaoImpToUser;
import com.userDao.Users;
public class C3p0Case {

	@Test
	public void test() throws SQLException {
		
			
			DBUtilDaoToUser dbu=new DBUtilDaoImpToUser();
			List<Users> l=dbu.queryAll();
			System.out.println(l.size());
			System.out.println(l);
			Iterator it=l.iterator();
			while(it.hasNext())
			{
				Users u=(Users) it.next();
				System.out.println(u.toString());
			}
				
	}

}
