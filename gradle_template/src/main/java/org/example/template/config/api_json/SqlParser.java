package org.example.template.config.api_json;

import apijson.RequestMethod;
import apijson.framework.APIJSONObjectParser;
import apijson.framework.APIJSONParser;
import apijson.orm.SQLConfig;
import com.alibaba.fastjson.JSONObject;

public class SqlParser extends APIJSONParser {

    public SqlParser() {
        super();
    }

    public SqlParser(RequestMethod method) {
        super(method);
    }

    public SqlParser(RequestMethod method, boolean needVerify) {
        super(method, needVerify);
    }

    @Override
    public APIJSONObjectParser createObjectParser(JSONObject request, String parentPath, SQLConfig arrayConfig
            , boolean isSubquery, boolean isTable, boolean isArrayMainTable) throws Exception {
        return new SqlObjectParser(getSession(), request, parentPath, arrayConfig
                , isSubquery, isTable, isArrayMainTable).setMethod(getMethod()).setParser(this);
    }
}