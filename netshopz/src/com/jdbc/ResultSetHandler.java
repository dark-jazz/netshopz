package com.jdbc;
import java.sql.ResultSet;
import java.sql.SQLException;


public interface ResultSetHandler {
    public Object handler(ResultSet rs) throws Exception;
}
