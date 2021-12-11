package org.example.template.controller;

import apijson.StringUtil;
import apijson.framework.APIJSONController;
import com.alibaba.fastjson.JSONObject;
import org.example.template.config.api_json.SqlParser;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.Map;

/**
 * @author sixue.feng
 */
@RequestMapping("/blog")
@RestController
public class BaseController extends APIJSONController {
    public static final String REMEMBER = "remember";
    public static final String ACCOUNT = "account";
    public static final String PASSWORD = "password";

    public static JSONObject newIllegalArgumentResult(JSONObject requestObject, String key) {
        return newIllegalArgumentResult(requestObject, key, null);
    }

    public static JSONObject newIllegalArgumentResult(JSONObject requestObject, String key, String msg) {
        return SqlParser.extendErrorResult(requestObject
                , new IllegalArgumentException(key + ":value 中value不合法！" + StringUtil.getString(msg)));
    }

    @PostMapping(value = "get")
    @Override
    public String get(@RequestBody String request, HttpSession session) {
        return super.get(request, session);
    }

    @PostMapping("head")
    @Override
    public String head(@RequestBody String request, HttpSession session) {
        return super.head(request, session);
    }

    @PostMapping("gets")
    @Override
    public String gets(@RequestBody String request, HttpSession session) {
        return super.gets(request, session);
    }

    @PostMapping("heads")
    @Override
    public String heads(@RequestBody String request, HttpSession session) {
        return super.heads(request, session);
    }

    @PostMapping("post")
    @Override
    public String post(@RequestBody String request, HttpSession session) {
        return super.post(request, session);
    }

    @PostMapping("put")
    @Override
    public String put(@RequestBody String request, HttpSession session) {
        return super.put(request, session);
    }

    @PostMapping("delete")
    @Override
    public String delete(@RequestBody String request, HttpSession session) {
        return super.delete(request, session);
    }

    @PostMapping("get/{tag}")  // 虽然看起来 APIAuto 更好识别是否为 APIJSON 万能接口，但 tag 导致空格截断前 Host 不固定不方便批量测试  {tag}/get")
    @Override
    public String getByTag(@PathVariable String tag, @RequestParam Map<String, String> params, @RequestBody String request, HttpSession session) {
        return super.getByTag(tag, params, request, session);
    }

    @PostMapping("head/{tag}")
    @Override
    public String headByTag(@PathVariable String tag, @RequestParam Map<String, String> params, @RequestBody String request, HttpSession session) {
        return super.headByTag(tag, params, request, session);
    }

    @PostMapping("gets/{tag}")
    @Override
    public String getsByTag(@PathVariable String tag, @RequestParam Map<String, String> params, @RequestBody String request, HttpSession session) {
        return super.getsByTag(tag, params, request, session);
    }

    @PostMapping("heads/{tag}")
    @Override
    public String headsByTag(@PathVariable String tag, @RequestParam Map<String, String> params, @RequestBody String request, HttpSession session) {
        return super.headsByTag(tag, params, request, session);
    }

    @PostMapping("post/{tag}")
    @Override
    public String postByTag(@PathVariable String tag, @RequestParam Map<String, String> params, @RequestBody String request, HttpSession session) {
        return super.postByTag(tag, params, request, session);
    }

    @PostMapping("put/{tag}")
    @Override
    public String putByTag(@PathVariable String tag, @RequestParam Map<String, String> params, @RequestBody String request, HttpSession session) {
        return super.putByTag(tag, params, request, session);
    }

    @PostMapping("delete/{tag}")
    @Override
    public String deleteByTag(@PathVariable String tag, @RequestParam Map<String, String> params, @RequestBody String request, HttpSession session) {
        return super.deleteByTag(tag, params, request, session);
    }

    @GetMapping("get/{request}")
    public String openGet(@PathVariable String request, HttpSession session) {
        try {
            request = URLDecoder.decode(request, StandardCharsets.UTF_8);
        } catch (Exception e) {
            // Parser会报错
        }
        return get(request, session);
    }

    @GetMapping("head/{request}")
    public String openHead(@PathVariable String request, HttpSession session) {
        try {
            request = URLDecoder.decode(request, StandardCharsets.UTF_8);
        } catch (Exception e) {
            // Parser会报错
        }
        return head(request, session);
    }
}
