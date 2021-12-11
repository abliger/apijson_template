package org.example.template.config.api_json;


import apijson.RequestMethod;
import apijson.framework.APIJSONFunctionParser;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.http.HttpSession;

public class SqlFunctionParser extends APIJSONFunctionParser {
    public static final String TAG = "DemoFunctionParser";

    public SqlFunctionParser() {
        this(null, null, 0, null, null);
    }

    public SqlFunctionParser(RequestMethod method, String tag, int version, JSONObject request, HttpSession session) {
        super(method, tag, version, request, session);
    }

}