<template>
    
    <div class="optionBackground">
        
        <!-- 功能标头 -->
        <div class="optionTitleheader" :id="optionList[optionChooseMainPage].optionName+'Titleheader'">{{ optionList[optionChooseMainPage].optionName }}</div>
        <Transition mode="out-in">
        <!-- 首页 -->
        <div class="optionMainPage" :id="optionList[0].optionName+'optionMainPage'" v-if="optionChooseMainPage=='0'">
        <!-- <div style="font-size: 550px;">♿</div> -->
        <div class="homePage" id="homePage1"><img src="@/assets/img/home1.jpg" alt="home1" class="homePageImg">
            <div class="homePageText">
                <div class="homePageTextTitle">信息便捷共享</div><div class="homePageTextDetail">随时随地，便捷共享您的信息</div>
            </div></div>
        <div class="homePage" id="homePage3"><img src="@/assets/img/home3.jpg" alt="home3" class="homePageImg">
        <div class="homePageText">
            <div class="homePageTextTitle">规范访问权限</div><div class="homePageTextDetail">明确权限，安全共享您的数据</div>
        </div></div>
        <div class="homePage" id="homePage1"><img src="@/assets/img/home2.jpeg" alt="home2" class="homePageImg">
        <div class="homePageText">
            <div class="homePageTextTitle">数据加密保护</div><div class="homePageTextDetail">加密算法，有效保护您的隐私</div>
        </div></div>

        
        </div>

        <!-- 我的数据 -->
        <div class="option" id="option1" v-else-if="optionChooseMainPage=='1'">
            <!-- 左侧 -->
            <div id="option1Part1Mydata">
                <!-- 左侧选项 -->
                <div class="option1Part1MydataOption" v-for="option in option1Options" :id="option.optionid" @click="option1OptionChoice=option.option1Choose">
                    <img class="option1Part1MydataOptionSvg" :src="option.optionSvg" alt="文件修改" width="50px">
                    <div class="option1Part1MydataOptionFonts">
                        <div class="option1Part1MydataOptionName">{{ option.optionName }}</div>
                        <div class="option1Part1MydataOptionDetail">{{ option.optionDetail }}</div>
                    </div>

                </div>
            </div>
            <!-- 右侧 -->
             <!-- 数据统计 -->
            <div class="option1Part2" id="option1Part2Choice0" v-if="option1OptionChoice==0">
                <!-- 数据一 访客表 -->
                <div class="option1Part2children"><visitorLog :userDataVisitor="userData.visitorLogList"/></div>
                <!-- 数据二 访客折线图 -->
                <div class="option1Part2children"><myEcharts1 :userDataVisitor="userData.visitorLogList"/></div>
                <!-- 数据三 数据修改日志 -->
                <div class="option1Part2children"><changeLog :userDataChange="userData.changeLogList"/></div>
                <!-- 数据四 数据分布图 -->
                <div class="option1Part2children"><myEcharts2 :userDataChange="userData.changeLogList"/></div>
            </div>
            <!-- 权限修改 -->
            <div class="option1Part2" id="option1Part2Choice1" v-if="option1OptionChoice==1&&isLogin"><option1 :Data="userData.dataList" @dataVisitorUpdate="dataVisitorUpdate"/></div>
            <!-- 数据修改 -->
            <div class="option1Part2" id="option1Part2Choice2" v-if="option1OptionChoice==2&&isLogin"><option2 :Data="userData.dataList" @dataDataUpdate="dataDatapdate"/></div>
            <!-- 文件上传 -->
            <div class="option1Part2" id="option1Part2Choice3" v-if="option1OptionChoice==3&&isLogin"><form action="#"><input type="file" placeholder="选择文件" multiple="multiple"><button>上传文件</button></form></div>
        </div>
        <!-- 发起访问 -->
        <div class="option" id="option3" v-else-if="optionChooseMainPage=='3'">
            <!-- 搜索栏 -->
            <div id="option3visitMenu">
                <form action="#" id="option3visitMenuForm">
                    <div class="option3inputType">访问对象</div>
                    <input type="text" placeholder="输入访问对象" id="option3visitMenuFormInput">
                    <img src="../assets/svg/搜索.svg" alt="搜索" class="option3serachButton" width="30px">
                </form>
            </div>
            <!-- 数据内容 -->
            <div id="option3visitData">暂无资料</div>
        </div>
        <!-- 信息修改 -->
        <div class="option" id="option4" v-else-if="optionChooseMainPage=='4'">
            <div class="option4Data">
                <div class="option4Avator"><img src="@/assets/img/userIcon.png" alt="" width="100px"><div class="avatorButton">头像更改</div></div>
                <div class="option4Userlist">
                    <div class="option4UserlistData"><div class="">用户名：{{ userData.userName }}</div><form action="#"><input type="text" placeholder="新用户名"><button>提交</button></form></div>
                    <div class="option4UserlistData"><div class="">邮箱：{{ userData.userEmail }}</div><form action="#"><input type="text" placeholder="绑定新邮箱"><button>提交</button></form></div>
                    <div class="option4UserlistData"><div class="">手机号：{{ userData.userPhone }}</div><form action="#"><input type="text" placeholder="绑定新手机"><button>提交</button></form></div>
                </div>
            </div>
            
        </div>
        </Transition> 
    </div>   
    
</template>

<script>
  import myEcharts1 from '@/components/echarts/echarts1.vue'
  import myEcharts2 from '@/components/echarts/echarts2.vue'
  import changeLog from '@/components/echarts/changeLog.vue'
  import visitorLog from '@/components/echarts/visitorLog.vue'
  import option1 from '@/components/options/option1choice1.vue'
  import option2 from '@/components/options/option1choice2.vue'
export default{
    data(){
        return{
            optionList:{
                0:{optionid:0,optionName:"首页",},
                1:{optionid:1,optionName:"我的数据",},
                // 2:{optionid:2,optionName:"访客申请",},
                3:{optionid:3,optionName:"发起访问",},
                4:{optionid:4,optionName:"信息修改",},
                },
            //我的数据选项
            option1Options:{
                0:{optionid:"option1Part1Echarts",optionSvg:"src/assets/svg/表单组件-表格.svg",optionName:"数据统计",optionDetail:"访客表与数据日志",option1Choose:0,},
                1:{optionid:"option1Part1View",optionSvg:"src/assets/svg/文件-文件.svg",optionName:"权限修改",optionDetail:"修改数据访问权限",option1Choose:1,},
                2:{optionid:"option1Part1Rewrite",optionSvg:"src/assets/svg/文件-文件修改.svg",optionName:"数据修改",optionDetail:"修改当前数据",option1Choose:2,},
                3:{optionid:"option1Part1Upload",optionSvg:"src/assets/svg/文件-文件上传.svg",optionName:"文件上传",optionDetail:"支持指定格式",option1Choose:3,},
            },
            option1OptionChoice:0,
    }   
},
    props:{
        optionChooseMainPage:{default:'1'},
        // 是否登录
        isLogin:{
            type:Boolean,
            default:false,
        },
        // 用户信息
        userData:{
                userName:{type:String},userIcon:{type:String},visitorLog:'',changeLog:'',visitorLogList:[],changeLogList:[],userEmail:'暂无邮箱',
                visitorLog:{visitorTime:'',visitorName:''},changeLog:{changeTime:'',changeSize:'',changeTitle:'',},
                dataList:[],
                default:{userName:'none',userIcon:'src/assets/img/userIcon.png'}
        },
    },
    components:{
        myEcharts1,
        myEcharts2,
        changeLog,
        visitorLog,
        option1,
        option2,
    },
    methods:{
        fileUploadFunction(){
            console.log("upload failed");
        }
    }
}
</script>

<style>
@import '../assets/css/option1.css';
@import '../assets/css/option3.css';
@import '../assets/css/option4.css';
@import '../assets/css/homePage.css';
</style>

<style scoped>
/* 渐入动画 */
.v-enter-active,
.v-leave-active {
  transition: opacity 0.1s ease;
}
.v-enter-from,
.v-leave-to {
  opacity: 0;
}
.optionBackground{
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    background-color: rgba(0, 0, 0, 0.04);
    width: 90%;
    height: 100%;
}
/* 上方的名称 */
.optionTitleheader{
    height: 2rem;
    width: 100%;
    background-color: white;
    color: black;
    font-weight: bold;
    line-height: 2rem;
    font-size: 15px;
    margin-left: 0rem;
    border: solid rgba(0, 0, 0, 0.1);
    border-top:hidden;
    border-left: hidden;
    border-right:hidden;
}

.option{
    min-width: 90rem;
    min-height: 30rem;
    width: 90%;
    height: 100%;
    margin: 0;
    padding: 0;
    border-radius: 20px;
}

</style>