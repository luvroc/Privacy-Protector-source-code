//this file is generated by program(drogon_ctl) automatically,don't modify it!
#include "demoMain.h"
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
std::string demoMain::genText(const DrTemplateData& demoMain_view_data)
{
	drogon::OStringStream demoMain_tmp_stream;
	std::string layoutName{""};
	demoMain_tmp_stream << "#include <drogon/drogon.h>\n";
	demoMain_tmp_stream << "int main() {\n";
	demoMain_tmp_stream << "    //Set HTTP listener address and port\n";
	demoMain_tmp_stream << "    drogon::app().addListener(\"0.0.0.0\", 5555);\n";
	demoMain_tmp_stream << "    //Load config file\n";
	demoMain_tmp_stream << "    //drogon::app().loadConfigFile(\"../config.json\");\n";
	demoMain_tmp_stream << "    //drogon::app().loadConfigFile(\"../config.yaml\");\n";
	demoMain_tmp_stream << "    //Run HTTP framework,the method will block in the internal event loop\n";
	demoMain_tmp_stream << "    drogon::app().run();\n";
	demoMain_tmp_stream << "    return 0;\n";
	demoMain_tmp_stream << "}\n";
if(layoutName.empty())
{
std::string ret{std::move(demoMain_tmp_stream.str())};
return ret;
}else
{
auto templ = DrTemplateBase::newTemplate(layoutName);
if(!templ) return "";
HttpViewData data = demoMain_view_data;
auto str = std::move(demoMain_tmp_stream.str());
if(!str.empty() && str[str.length()-1] == '\n') str.resize(str.length()-1);
data[""] = std::move(str);
return templ->genText(data);
}
}
