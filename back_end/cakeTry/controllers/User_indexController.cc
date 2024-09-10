#include "User_indexController.h"
// #include "yacl/crypto/tpre/tpre.h"
// #include "absl/strings/escaping.h"
// #include "gtest/gtest.h"
using namespace User;
using namespace yacl::crypto;
    void User::indexController::instance(const HttpRequestPtr& req, std::function<void (const HttpResponsePtr &)> &&callback) const
    {
        MultiPartParser parser;
        parser.parse(req);
        auto params = parser.getParameters();
         for(const auto &param :params){
            LOG_ERROR << param.first << ":::" <<param.second;
        }

            // HttpViewData data;
            auto message = "idk what happened";
            LOG_ERROR << "message Received:::" << message;
        //密钥加密
        /*
        * 1.Alice密钥对生成
        * 2.加密message
        * 3.存入密文
        
        */
            std::string EncryptedStr=message;
            //EncryptedStr.replace(7,11,"bob");
        // data.insert("title","ListParameters");
        // data.insert("parameters",data);
            Json::Value json;
            Json::Value data;
            data["code"]="200";
            data["encrypt"]=EncryptedStr;
            data["message"]="success Encrypted!";
            json["data"]=data;
            auto resp = HttpResponse::newHttpJsonResponse(json);
            //auto resp = HttpResponse::newHttpViewResponse("ListParameters.csp",data);
            callback(resp);
        }
        

    void User::indexController::instance_single(const HttpRequestPtr& req, std::function<void (const HttpResponsePtr &)> &&callback) const
    {
        auto p1 = req -> getParameter("message");
        auto name = req -> getParameter("username");
        
        
        LOG_ERROR << "single param: "<<p1;
        std::string iv = "123456789";
        // EcGroupFactory()
        // auto DbPtr = getDbClient("default");
        // yacl::crypto::TPRE tpre;
        // yacl::crypto::Keys keys;
        
        // std::unique_ptr<yacl::crypto::EcGroup> ecc_group = yacl::crypto::EcGroupFactory::Instance().Create("sm2");

        

        // std::pair<yacl::crypto::Keys::PublicKey, yacl::crypto::Keys::PrivateKey> key_pair_A =
        // keys.GenerateKeyPair(ecc_group);//Alice密钥对生成算法

        // std::string message = "I'm Alice.";
        
        // std::pair<yacl::crypto::Capsule::CapsuleStruct, std::vector<uint8_t>> ct_1 =
        // tpre.Encrypt(ecc_group, key_pair_A.first, iv, p1);//加密


        // LOG_ERROR << "keyPair:\n1->"<<(int)key_pair_A.first<<"\n2->"<<(int)key_pair_A.second;
        // LOG_ERROR << "encryptedPair:\n1-> "<<(int)ct_1.first<<"\n2->"<<(int)ct_1.second;
        // LOG_ERROR << "keyPair:\n1->"<<key_pair_A.first<<"\n2->"<<key_pair_A.second;
        // LOG_ERROR << "encryptedPair:\n1-> "<<ct_1.first<<"\n2->"<<ct_1.second;
        // std::cout << "encryptedPair:\n"<<key_pair_A.first<<std::endl;

        Json::Value json;
        json["message"] = "success";
        json["return"] = p1;
        auto resp = HttpResponse::newHttpJsonResponse(json);
        callback(resp);
    }

    void User::indexController::registe(const HttpRequestPtr& req, std::function<void (const HttpResponsePtr &)> &&callback,userData user) const
{
    auto dbClient = drogon::app().getDbClient();
    Json::Value json;
    // std::string temp = "INSERT INTO usertbl VALUES ("+user.password+","+user.password+");";

    try 
    {   
        dbClient->execSqlSync("INSERT INTO usertbl VALUES ($1,$2);",user.username,user.password);
        // dbClient->execSqlSync("select * from usertbl;");
        json["message"]="success";
    } catch (const drogon::orm::DrogonDbException &e){
        json["error"] = "failed to registe ,connect me";
        json["errorDetail"] = e.base().what();
        // json["temp"] = temp;
    }
    auto resp = drogon::HttpResponse::newHttpJsonResponse(json);
    callback(resp);
}
    
    
    void User::indexController::login(const HttpRequestPtr& req, std::function<void (const HttpResponsePtr &)> &&callback,userData user) const
{
    auto dbClient = drogon::app().getDbClient();
    Json::Value json;
    // json['a']=1;

    try {
        // json["namelist"][0]["value"]="suck nigger dick";
        //这里不会报错

        dbClient->execSqlAsync("select * from usertbl where name=$1;",
        [=](const drogon::orm::Result &result) mutable {
                                // Json::Value json2;

                                // std::cout << result.size() << " rows selected!" << std::endl;
                                // std::cout<<json.type()<<std::endl;
                                json["a"]="a";
                                // json["ads"].append(1);//这里导致报错
                                
                                // int i = 0;
                                // for (auto row : result)
                                // {
                                //     // json["name"].append(row["name"].as<std::string>());
                                //     std::cout << i++ << ": user name is " << row["name"].as<std::string>() << std::endl;
                                // }
                                auto resp = drogon::HttpResponse::newHttpJsonResponse(json);
                                callback(resp);
                            },
                            [&](const drogon::orm::DrogonDbException &e) {
                                std::cerr << "error:" << e.base().what() << std::endl;
                            },user.username
        );
    
    }catch(const std::exception &e){
         std::cerr << "error:" << e.what() << std::endl;
        // json["error"]=e.base().what();
    }
//     auto resp = drogon::HttpResponse::newHttpJsonResponse(json);
//     callback(resp);
}


// Add definition of your processing function here
