package pool;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Test;

public class PoolCase {

	@Test
	public void test() {
		
		linkpool pool=new linkpool();
		for(int i=0;i<10;i++){
	    Connection con=pool.getConnection();
		if(i%3==0){
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		}
		
	}

}
