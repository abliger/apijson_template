package org.example.template.config.api_json;

import apijson.NotNull;
import apijson.RequestMethod;
import apijson.framework.APIJSONObjectParser;
import apijson.orm.Join;
import apijson.orm.SQLConfig;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.http.HttpSession;
import java.util.List;

public class SqlObjectParser extends APIJSONObjectParser {

    public SqlObjectParser(HttpSession session, @NotNull JSONObject request, String parentPath, SQLConfig arrayConfig
            , boolean isSubquery, boolean isTable, boolean isArrayMainTable) throws Exception {
        super(session, request, parentPath, arrayConfig, isSubquery, isTable, isArrayMainTable);
    }

    @Override
    public SQLConfig newSQLConfig(RequestMethod method, String table, String alias, JSONObject request, List<Join> joinList, boolean isProcedure) throws Exception {
        return SqlConfig.newSQLConfig(method, table, alias, request, joinList, isProcedure);
    }


}
