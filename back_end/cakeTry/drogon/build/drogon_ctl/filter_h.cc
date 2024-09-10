//this file is generated by program(drogon_ctl) automatically,don't modify it!
#include "filter_h.h"
#include <drogon/utils/OStringStream.h>
#include <string>
#include <map>
#include <vector>
#include <set>
#include <iostream>
#include <unordered_map>
#include <unordered_set>
#include <algorithm>
#include <list>
#include <deque>
#include <queue>
using namespace drogon;
std::string filter_h::genText(const DrTemplateData& filter_h_view_data)
{
	drogon::OStringStream filter_h_tmp_stream;
	std::string layoutName{""};
	filter_h_tmp_stream << "/**\n";
	filter_h_tmp_stream << " *\n";
	filter_h_tmp_stream << " *  ";
{
    auto & val=filter_h_view_data["filename"];
    if(val.type()==typeid(const char *)){
        filter_h_tmp_stream<<*(std::any_cast<const char *>(&val));
    }else if(val.type()==typeid(std::string)||val.type()==typeid(const std::string)){
        filter_h_tmp_stream<<*(std::any_cast<const std::string>(&val));
    }
}
	filter_h_tmp_stream << ".h\n";
	filter_h_tmp_stream << " *\n";
	filter_h_tmp_stream << " */\n";
filter_h_tmp_stream<<"\n";
	filter_h_tmp_stream << "#pragma once\n";
filter_h_tmp_stream<<"\n";
	filter_h_tmp_stream << "#include <drogon/HttpFilter.h>\n";
	filter_h_tmp_stream << "using namespace drogon;\n";
auto namespaceVector=filter_h_view_data.get<std::vector<std::string>>("namespaceVector");
if(namespaceVector.empty())
filter_h_tmp_stream<<"\n";
for(auto &namespaceName:namespaceVector){
	filter_h_tmp_stream << "namespace ";
filter_h_tmp_stream<<namespaceName;
filter_h_tmp_stream<<"\n";
	filter_h_tmp_stream << "{\n";
}
filter_h_tmp_stream<<"\n";
	filter_h_tmp_stream << "class ";
{
    auto & val=filter_h_view_data["className"];
    if(val.type()==typeid(const char *)){
        filter_h_tmp_stream<<*(std::any_cast<const char *>(&val));
    }else if(val.type()==typeid(std::string)||val.type()==typeid(const std::string)){
        filter_h_tmp_stream<<*(std::any_cast<const std::string>(&val));
    }
}
	filter_h_tmp_stream << " : public HttpFilter<";
{
    auto & val=filter_h_view_data["className"];
    if(val.type()==typeid(const char *)){
        filter_h_tmp_stream<<*(std::any_cast<const char *>(&val));
    }else if(val.type()==typeid(std::string)||val.type()==typeid(const std::string)){
        filter_h_tmp_stream<<*(std::any_cast<const std::string>(&val));
    }
}
	filter_h_tmp_stream << ">\n";
	filter_h_tmp_stream << "{\n";
	filter_h_tmp_stream << "  public:\n";
	filter_h_tmp_stream << "    ";
{
    auto & val=filter_h_view_data["className"];
    if(val.type()==typeid(const char *)){
        filter_h_tmp_stream<<*(std::any_cast<const char *>(&val));
    }else if(val.type()==typeid(std::string)||val.type()==typeid(const std::string)){
        filter_h_tmp_stream<<*(std::any_cast<const std::string>(&val));
    }
}
	filter_h_tmp_stream << "() {}\n";
	filter_h_tmp_stream << "    void doFilter(const HttpRequestPtr &req,\n";
	filter_h_tmp_stream << "                  FilterCallback &&fcb,\n";
	filter_h_tmp_stream << "                  FilterChainCallback &&fccb) override;\n";
	filter_h_tmp_stream << "};\n";
filter_h_tmp_stream<<"\n";
for(size_t i=0;i<namespaceVector.size();i++){
	filter_h_tmp_stream << "}\n";
}
if(layoutName.empty())
{
std::string ret{std::move(filter_h_tmp_stream.str())};
return ret;
}else
{
auto templ = DrTemplateBase::newTemplate(layoutName);
if(!templ) return "";
HttpViewData data = filter_h_view_data;
auto str = std::move(filter_h_tmp_stream.str());
if(!str.empty() && str[str.length()-1] == '\n') str.resize(str.length()-1);
data[""] = std::move(str);
return templ->genText(data);
}
}
