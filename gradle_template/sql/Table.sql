Drop Table if exists blog."Access";
CREATE TABLE blog."Access"
(
    id integer PRIMARY KEY NOT NULL,
    debug integer DEFAULT 0 NOT NULL,
    name varchar(50) DEFAULT '实际表名，例如 apijson_user'::character varying NOT NULL,
    alias text,
    get text DEFAULT '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]'::text NOT NULL,
    head text DEFAULT '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]'::text NOT NULL,
    gets text DEFAULT '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]'::text NOT NULL,
    heads text DEFAULT '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]'::text NOT NULL,
    post text DEFAULT '["OWNER", "ADMIN"]'::text NOT NULL,
    put text DEFAULT '["OWNER", "ADMIN"]'::text NOT NULL,
    delete text DEFAULT '["OWNER", "ADMIN"]'::text NOT NULL,
    date text DEFAULT CURRENT_TIMESTAMP NOT NULL
);
COMMENT ON COLUMN blog."Access".id IS '唯一标识';
COMMENT ON COLUMN blog."Access".debug IS '是否为调试表，只允许在开发环境使用，测试和线上环境禁用';
COMMENT ON COLUMN blog."Access".alias IS '外部调用的表别名，例如 User';
COMMENT ON COLUMN blog."Access".get IS '允许 get 的角色列表，例如 ["LOGIN", "CONTACT", "CIRCLE", "OWNER"]
用 JSON 类型不能设置默认值，反正权限对应的需求是明确的，也不需要自动转 JSONArray。
TODO: 直接 LOGIN,CONTACT,CIRCLE,OWNER 更简单，反正是开发内部用，不需要复杂查询。';
COMMENT ON COLUMN blog."Access".head IS '允许 head 的角色列表，例如 ["LOGIN", "CONTACT", "CIRCLE", "OWNER"]';
COMMENT ON COLUMN blog."Access".gets IS '允许 gets 的角色列表，例如 ["LOGIN", "CONTACT", "CIRCLE", "OWNER"]';
COMMENT ON COLUMN blog."Access".heads IS '允许 heads 的角色列表，例如 ["LOGIN", "CONTACT", "CIRCLE", "OWNER"]';
COMMENT ON COLUMN blog."Access".post IS '允许 post 的角色列表，例如 ["LOGIN", "CONTACT", "CIRCLE", "OWNER"]';
COMMENT ON COLUMN blog."Access".put IS '允许 put 的角色列表，例如 ["LOGIN", "CONTACT", "CIRCLE", "OWNER"]';
COMMENT ON COLUMN blog."Access".delete IS '允许 delete 的角色列表，例如 ["LOGIN", "CONTACT", "CIRCLE", "OWNER"]';
COMMENT ON COLUMN blog."Access".date IS '创建时间';
INSERT INTO blog."Access" (id, debug, name, alias, get, head, gets, heads, post, put, delete, date) VALUES (1, 1, 'Access', '', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '[]', '[]', '[]', '2019-07-21 12:21:36');
INSERT INTO blog."Access" (id, debug, name, alias, get, head, gets, heads, post, put, delete, date) VALUES (2, 1, 'Table', null, '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '[]', '[]', '[]', '2018-11-28 16:38:14');
INSERT INTO blog."Access" (id, debug, name, alias, get, head, gets, heads, post, put, delete, date) VALUES (3, 1, 'Column', null, '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '[]', '[]', '[]', '2018-11-28 16:38:14');
INSERT INTO blog."Access" (id, debug, name, alias, get, head, gets, heads, post, put, delete, date) VALUES (4, 0, 'Function', null, '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '[]', '[]', '[]', '2018-11-28 16:38:15');
INSERT INTO blog."Access" (id, debug, name, alias, get, head, gets, heads, post, put, delete, date) VALUES (5, 1, 'Request', null, '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '[]', '[]', '[]', '2018-11-28 16:38:14');
INSERT INTO blog."Access" (id, debug, name, alias, get, head, gets, heads, post, put, delete, date) VALUES (6, 1, 'Response', null, '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '[]', '[]', '[]', '2018-11-28 16:38:15');
INSERT INTO blog."Access" (id, debug, name, alias, get, head, gets, heads, post, put, delete, date) VALUES (7, 1, 'Document', null, '["LOGIN", "ADMIN"]', '["LOGIN", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["OWNER", "ADMIN"]', '["LOGIN", "ADMIN"]', '["OWNER", "ADMIN"]', '2018-11-28 16:38:15');
INSERT INTO blog."Access" (id, debug, name, alias, get, head, gets, heads, post, put, delete, date) VALUES (8, 1, 'TestRecord', null, '["LOGIN", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["OWNER", "ADMIN"]', '["OWNER", "ADMIN"]', '["OWNER", "ADMIN"]', '2018-11-28 16:38:15');
INSERT INTO blog."Access" (id, debug, name, alias, get, head, gets, heads, post, put, delete, date) VALUES (9, 0, 'Test', null, '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '[]', '[]', '[]', '2018-11-28 16:38:15');
INSERT INTO blog."Access" (id, debug, name, alias, get, head, gets, heads, post, put, delete, date) VALUES (10, 1, 'PgAttribute', null, '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '[]', '[]', '[]', '2018-11-28 16:38:14');
INSERT INTO blog."Access" (id, debug, name, alias, get, head, gets, heads, post, put, delete, date) VALUES (11, 1, 'PgClass', null, '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["UNKNOWN", "LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '["LOGIN", "CONTACT", "CIRCLE", "OWNER", "ADMIN"]', '[]', '[]', '[]', '2018-11-28 16:38:14');


Drop Table if exists blog."Function";
CREATE TABLE blog."Function"
(
    id bigint PRIMARY KEY NOT NULL,
    name varchar(30) NOT NULL,
    arguments varchar(100),
    demo text NOT NULL,
    detail varchar(1000),
    date timestamp(6) NOT NULL,
    back varchar(45),
    requestlist varchar(45),
    "userId" bigint DEFAULT 0,
    type varchar(45) DEFAULT 'Object'::character varying
);
COMMENT ON COLUMN blog."Function".name IS '方法名';
COMMENT ON COLUMN blog."Function".arguments IS '参数列表，每个参数的类型都是 String。
用 , 分割的字符串 比 [JSONArray] 更好，例如 array,item ，更直观，还方便拼接函数。';
COMMENT ON COLUMN blog."Function".demo IS '可用的示例。';
COMMENT ON COLUMN blog."Function".detail IS '详细描述';
COMMENT ON COLUMN blog."Function".date IS '创建时间';
COMMENT ON COLUMN blog."Function".back IS '返回类型';
COMMENT ON COLUMN blog."Function".requestlist IS 'Request 的 id 列表';
COMMENT ON COLUMN blog."Function"."userId" IS '用户id';
COMMENT ON COLUMN blog."Function".type IS '返回类型';
INSERT INTO blog."Function" (id, name, arguments, demo, detail, date, back, requestlist, "userId", type) VALUES (1, 'countArray', 'array', '{"array": [1, 2, 3]}', '获取数组长度。没写调用键值对，会自动补全 "result()": "countArray(array)"', '2018-10-13 08:23:23.000000', null, null, 0, 'Object');
INSERT INTO blog."Function" (id, name, arguments, demo, detail, date, back, requestlist, "userId", type) VALUES (2, 'countObject', 'object', '{"object": {"key0": 1, "key1": 2}}', '获取对象长度。', '2018-10-13 08:23:23.000000', null, null, 0, 'Object');
INSERT INTO blog."Function" (id, name, arguments, demo, detail, date, back, requestlist, "userId", type) VALUES (3, 'isContain', 'array,value', '{"array": [1, 2, 3], "value": 2}', '判断是否数组包含值。', '2018-10-13 08:23:23.000000', null, null, 0, 'Object');
INSERT INTO blog."Function" (id, name, arguments, demo, detail, date, back, requestlist, "userId", type) VALUES (4, 'isContainKey', 'object,key', '{"key": "id", "object": {"id": 1}}', '判断是否对象包含键。', '2018-10-13 08:30:31.000000', null, null, 0, 'Object');
INSERT INTO blog."Function" (id, name, arguments, demo, detail, date, back, requestlist, "userId", type) VALUES (5, 'isContainValue', 'object,value', '{"value": 1, "object": {"id": 1}}', '判断是否对象包含值。', '2018-10-13 08:30:31.000000', null, null, 0, 'Object');
INSERT INTO blog."Function" (id, name, arguments, demo, detail, date, back, requestlist, "userId", type) VALUES (6, 'getFromArray', 'array,position', '{"array": [1, 2, 3], "result()": "getFromArray(array,1)"}', '根据下标获取数组里的值。position 传数字时直接作为值，而不是从所在对象 request 中取值', '2018-10-13 08:30:31.000000', null, null, 0, 'Object');
INSERT INTO blog."Function" (id, name, arguments, demo, detail, date, back, requestlist, "userId", type) VALUES (7, 'getFromObject', 'object,key', '{"key": "id", "object": {"id": 1}}', '根据键获取对象里的值。', '2018-10-13 08:30:31.000000', null, null, 0, 'Object');
INSERT INTO blog."Function" (id, name, arguments, demo, detail, date, back, requestlist, "userId", type) VALUES (8, 'getWithDefault', 'value,defaultValue', '{"value": null, "defaultValue": 1}', '如果 value 为 null，则返回 defaultValue', '2019-08-20 15:26:36.000000', null, null, 0, 'Object');
INSERT INTO blog."Function" (id, name, arguments, demo, detail, date, back, requestlist, "userId", type) VALUES (9, 'removeKey', 'key', '{"key": "s", "key2": 2}', '从对象里移除 key', '2019-08-20 15:26:36.000000', null, null, 0, 'Object');
INSERT INTO blog."Function" (id, name, arguments, demo, detail, date, back, requestlist, "userId", type) VALUES (10, 'getFunctionDemo', null, '{}', '获取远程函数的 Demo', '2019-08-20 15:26:36.000000', null, null, 0, 'Object');
INSERT INTO blog."Function" (id, name, arguments, demo, detail, date, back, requestlist, "userId", type) VALUES (11, 'getFunctionDetail', null, '{}', '获取远程函数的详情', '2019-08-20 15:26:36.000000', null, null, 0, 'Object');

Drop Table if exists blog."Request";
CREATE TABLE blog."Request"
(
    id bigint PRIMARY KEY NOT NULL,
    version smallint NOT NULL,
    method varchar(10),
    tag varchar(20) NOT NULL,
    structure jsonb NOT NULL,
    detail varchar(10000),
    date timestamp(6)
);
COMMENT ON COLUMN blog."Request".id IS '唯一标识';
COMMENT ON COLUMN blog."Request".version IS 'GET,HEAD可用任意结构访问任意开放内容，不需要这个字段。
其它的操作因为写入了结构和内容，所以都需要，按照不同的version选择对应的structure。

自动化版本管理：
Request JSON最外层可以传 "version":Integer 。
1.未传或 <= 0，用最新版。 "@order":"version-"
2.已传且 > 0，用version以上的可用版本的最低版本。 "@order":"version+", "version{}":">={version}"';
COMMENT ON COLUMN blog."Request".method IS '只限于GET,HEAD外的操作方法。';
COMMENT ON COLUMN blog."Request".tag IS '标签';
COMMENT ON COLUMN blog."Request".structure IS '结构';
COMMENT ON COLUMN blog."Request".detail IS '详细说明';
COMMENT ON COLUMN blog."Request".date IS '创建时间';
INSERT INTO blog."Request" (id, version, method, tag, structure, detail, date) VALUES (35, 2, 'POST', 'Document', '{"Document": {"INSERT": {"@role": "OWNER"}, "DISALLOW": "id", "NECESSARY": "userId,name,url,request"}, "TestRecord": {"INSERT": {"@role": "OWNER"}, "UPDATE": {"documentId@": "Document/id"}, "DISALLOW": "id,documentId", "NECESSARY": "userId,response"}}', null, '2017-11-26 08:34:41.000000');
INSERT INTO blog."Request" (id, version, method, tag, structure, detail, date) VALUES (36, 2, 'PUT', 'Document', '{"DISALLOW": "userId", "NECESSARY": "id"}', null, '2017-11-26 08:35:15.000000');
INSERT INTO blog."Request" (id, version, method, tag, structure, detail, date) VALUES (37, 2, 'DELETE', 'Document', '{"INSERT": {"@role": "OWNER"}, "UPDATE": {"TestRecord": {"@role": "OWNER", "documentId@": "Document/id"}}, "DISALLOW": "!", "NECESSARY": "id"}', null, '2017-11-26 00:36:20.000000');
INSERT INTO blog."Request" (id, version, method, tag, structure, detail, date) VALUES (38, 2, 'POST', 'TestRecord', '{"DISALLOW": "id", "NECESSARY": "userId,documentId,response"}', null, '2018-06-16 23:44:36.000000');

Drop Table if exists blog."Response";
CREATE TABLE blog."Response"
(
    id bigint PRIMARY KEY NOT NULL,
    method varchar(10),
    model varchar(20) NOT NULL,
    structure text NOT NULL,
    detail varchar(10000),
    date timestamp(6)
);
COMMENT ON COLUMN blog."Response".id IS '唯一标识';
COMMENT ON COLUMN blog."Response".method IS '方法';
COMMENT ON COLUMN blog."Response".model IS '表名，table是SQL关键词不能用';
COMMENT ON COLUMN blog."Response".structure IS '结构';
COMMENT ON COLUMN blog."Response".detail IS '详细说明';
COMMENT ON COLUMN blog."Response".date IS '创建日期';
CREATE INDEX "id_UNIQUE" ON blog."Response" (id);

Drop Table if exists blog."Document";
CREATE TABLE blog."Document"
(
    id bigint PRIMARY KEY NOT NULL,
    "userId" bigint NOT NULL,
    version smallint NOT NULL,
    name varchar(100) NOT NULL,
    url varchar(250) NOT NULL,
    request text NOT NULL,
    response text,
    header text,
    date timestamp
);

Drop Table if exists blog."Test";
CREATE TABLE blog."Test"
(
    id smallint PRIMARY KEY NOT NULL
);
INSERT INTO blog."Test" (id) VALUES (1);

Drop Table if exists blog."TestRecord";
CREATE TABLE blog."TestRecord"
(
    id bigint PRIMARY KEY NOT NULL,
    "userId" bigint NOT NULL,
    "documentId" bigint NOT NULL,
    response text NOT NULL,
    date timestamp(6) NOT NULL,
    compare text,
    standard text,
    "randomId" bigint DEFAULT 0
);
COMMENT ON COLUMN blog."TestRecord".id IS '唯一标识';
COMMENT ON COLUMN blog."TestRecord"."userId" IS '用户id';
COMMENT ON COLUMN blog."TestRecord"."documentId" IS '测试用例文档id';
COMMENT ON COLUMN blog."TestRecord".response IS '接口返回结果JSON';
COMMENT ON COLUMN blog."TestRecord".date IS '创建日期';
COMMENT ON COLUMN blog."TestRecord".compare IS '对比结果';
COMMENT ON COLUMN blog."TestRecord".standard IS 'response 的校验标准，是一个 JSON 格式的 AST ，描述了正确 Response 的结构、里面的字段名称、类型、长度、取值范围 等属性。';
COMMENT ON COLUMN blog."TestRecord"."randomId" IS '随机配置 id';