<template>
    <div class="mainMenu">
        <div class="userInfo">
            <div class="userIcon"><img :src=userData.userIcon alt="用户头像" width="120px"></div>
            <div class="userName">{{ userData.userName }}</div>
        </div>
        <div class="loginLogout">
            <div id="loginButton" v-if="!isLogin" @click="getLoginMenu">登录/注册</div>
            <div id="logoutButton" v-if="isLogin" @click="logOutRequest">退出登录</div>
        </div>
        <div class="optionList" v-if="isLogin">
            <div class="optionChoose" v-for="option in optionChooseList" :id="option.optionId" @click="optionChangeFunction(option)" :style="{backgroundColor: optionChoice===option.optionId? '#dbe2ef':'rgba(0,0,0,0)'}">
                <img :src="option.svgSrc" width="30px" style="margin-right: 10px;"></img>{{ option.optionName }}</div>
        </div>
    </div>
</template>

<script>
export default{
    data(){
        return{
            optionChooseList:{
            option1:{optionName:'我的数据',optionId:'1',svgSrc:'src/assets/svg/打开文件.svg',},
            // option2:{optionName:'访客申请',optionId:'2',svgSrc:'src/assets/svg/群邮件.svg',},
            option3:{optionName:'发起访问',optionId:'3',svgSrc:'src/assets/svg/查询.svg',},
            option4:{optionName:'信息修改',optionId:'4',svgSrc:'src/assets/svg/编辑.svg',},
        },
            optionChoice:'',
        }

    },
    methods:{
        optionChangeFunction(option){
            this.optionChoice=option.optionId;
            this.$emit("optionChoose",this.optionChoice);
        },
        getLoginMenu(){
            this.$emit("getLoginMenu");
        },
        logOutRequest(){
            this.$emit("logOutRequest");
        }
    },
    props:{
        // 是否登录
        isLogin:{
            type:Boolean,
            default:false,
        },
        // 用户信息
        userData:{
                userName:{type:String},userIcon:{type:String},
                default:{userName:'',userIcon:''}
            },
    },


}
</script>

<style scoped>
    .mainMenu{
        background-color: rgba(0, 0, 0, 0.03);
        min-width: 10rem;
        width: 10%;
        height: 100%;
        display: flex;
        align-items: center;
        flex-direction: column;
        border: solid 1px rgba(0, 0, 0, 0.1);
        border-top: hidden;
        border-left: hidden;
        border-bottom: hidden;
    }
    /* 用户信息 */
    .userIcon{
        margin: 3rem 0 1rem 0;
    }
    .userName{
        align-items: center;
        text-align: center;
        font-size: 20px;
        margin-bottom: 1rem;
    }
    /* 登录登出按钮 */
    .loginLogout{
        margin-top: 1rem;
        background-color: #6292CB;
        color: white;
        border: #6292CB solid 1px;
        border-radius: 10px;
        padding: 5px;
    }
    .loginLogout:hover{
        font-weight: bold;
    }
    /* 操作选项 */
    .optionList{
        width: 100%;
        margin-top: 4rem;
    }
    .optionChoose{
        text-align: center;
        justify-content: center;
        display: flex;
        flex-direction: row;
        font-size: 20px;
        color: black;
        margin: 0.5rem;
        border-radius: 10px;
        padding-top: 5px;
        padding-bottom: 5px;
    }
    .optionChoose:hover{
        font-weight: bold;
        background-color: #dbe2ef !important;
    }
</style>
