package org.example.template;

import apijson.Log;
import apijson.framework.APIJSONApplication;
import apijson.framework.APIJSONCreator;
import apijson.framework.APIJSONParser;
import apijson.orm.*;
import org.example.template.config.api_json.*;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {

    static {
        APIJSONApplication.DEFAULT_APIJSON_CREATOR = new APIJSONCreator() {
            @Override
            public Verifier<Long> createVerifier() {
                return new SqlVerifier();
            }

            @Override
            public SQLConfig createSQLConfig() {
                return new SqlConfig();
            }

            @Override
            public Parser<Long> createParser() {
                return new SqlParser();
            }

            @Override
            public FunctionParser createFunctionParser() {
                return new SqlFunctionParser();
            }

            @Override
            public SQLExecutor createSQLExecutor() {
                return new SqlSQLExecutor();
            }
        };
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(Application.class, args);
        unitauto.Log.DEBUG = Log.DEBUG = false;
        APIJSONParser.IS_PRINT_BIG_LOG = false;
        APIJSONApplication.init(true);
    }
}
