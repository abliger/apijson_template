package org.example.template.config.api_json;

import apijson.RequestMethod;
import apijson.framework.APIJSONSQLConfig;
import com.alibaba.fastjson.annotation.JSONField;

/**
 * @author sixue.feng
 */
public class SqlConfig extends APIJSONSQLConfig {

    static {
        DEFAULT_DATABASE = DATABASE_POSTGRESQL;
        DEFAULT_SCHEMA = "blog";
    }

    public SqlConfig() {
        super();
    }

    public SqlConfig(RequestMethod method, String table) {
        super(method, table);
    }

    @Override
    public String getDBVersion() {
        return "9.6.15";
    }

    @JSONField(serialize = false)
    @Override
    public String getDBUri() {
        return "jdbc:postgresql://localhost:5432/blog?stringtype=unspecified";
    }

    @JSONField(serialize = false)
    @Override
    public String getDBAccount() {
        return "postgres";
    }

    @JSONField(serialize = false)
    @Override
    public String getDBPassword() {
        return "111111";
    }

    @Override
    public boolean isMySQL() {
        return false;
    }

    @Override
    public boolean isPostgreSQL() {
        return true;
    }

    @Override
    public boolean isSQLServer() {
        return false;
    }

    @Override
    public boolean isOracle() {
        return false;
    }

    @Override
    public boolean isDb2() {
        return false;
    }
}