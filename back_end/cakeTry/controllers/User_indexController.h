#pragma once

#include <drogon/HttpController.h>
#include "yacl/crypto/tpre/tpre.h"
#include "absl/strings/escaping.h"
#include "gtest/gtest.h"
using namespace drogon;


struct userData {
  std::string username;
  std::string password;
};

namespace User
{
class indexController : public drogon::HttpController<indexController>
{
  public:
    METHOD_LIST_BEGIN
    // use METHOD_ADD to add your custom processing function here;
    // METHOD_ADD(indexController::get, "/{2}/{1}", Get); // path is /User/indexController/{arg2}/{arg1}
    // METHOD_ADD(indexController::your_method_name, "/{1}/{2}/list", Get); // path is /User/indexController/{arg1}/{arg2}/list
    // ADD_METHOD_TO(indexController::your_method_name, "/absolute/path/{1}/{2}/list", Get); // path is /absolute/path/{arg1}/{arg2}/list
    ADD_METHOD_TO(indexController::instance, "/api/instance_list", Post); // path is /absolute/path/{arg1}/{arg2}/list
    ADD_METHOD_TO(indexController::instance_single, "/api/instance_single", Post); // path is /absolute/path/{arg1}/{arg2}/list
    ADD_METHOD_TO(indexController::registe, "/api/user/registe", Post); // path is /absolute/path/{arg1}/{arg2}/list
    ADD_METHOD_TO(indexController::login, "/api/user/login", Post); // path is /absolute/path/{arg1}/{arg2}/list

    METHOD_LIST_END
    // your declaration of processing function maybe like this:
    // void get(const HttpRequestPtr& req, std::function<void (const HttpResponsePtr &)> &&callback, int p1, std::string p2);
    // void your_method_name(const HttpRequestPtr& req, std::function<void (const HttpResponsePtr &)> &&callback, double p1, int p2) const;
    void instance(const HttpRequestPtr& req, std::function<void (const HttpResponsePtr &)> &&callback) const;
    void instance_single(const HttpRequestPtr& req, std::function<void (const HttpResponsePtr &)> &&callback) const;
    void registe(const HttpRequestPtr& req, std::function<void (const HttpResponsePtr &)> &&callback,userData user) const;
    void login(const HttpRequestPtr& req, std::function<void (const HttpResponsePtr &)> &&callback,userData user) const;
};
}

namespace drogon {
  template <>
  inline userData fromRequest(const HttpRequest &req)
  {
    auto json = req.getJsonObject();
    userData value;
    if(json == nullptr)
    {
      throw std::runtime_error("no input json");
    }
    if(json)
    {
      if(json->isMember("username"))
      {
        const auto &temp = (*json)["username"].asString();
        if(temp.size() < 8)
        {
          throw std::runtime_error("too short username");
        }
        value.username = temp;
      } else 
      {
        throw std::runtime_error("missing username");
      }
      if(json->isMember("password"))
      {
        const auto &temp = (*json)["password"].asString();
        if(temp.size() < 6)
        {
          throw std::runtime_error("too short password");
        }
        value.password = temp;
      } else 
      {
        throw std::runtime_error("missing password");
      }
    }
    return value;
  }
}
