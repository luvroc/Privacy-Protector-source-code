<template>
  <div id="background">
    <!-- 上方web端logo名称 -->
    <headerTitle/>
    <!-- 下方部分 -->
    <div class="mainPage">
      <!-- 登录模块 -->
      <register :turnOn="loginMenu" @loginSuccess="loginResult" @closeMenuClick="closeMenu"/>
      <!-- 用户操作界面 -->
      <userMenu @optionChoose="optionChoice" @getLoginMenu="openLoginMenu" @logOutRequest="logOutRequest" :isLogin="isLogin" :userData="userData"/>
      <!-- 主要功能模块 -->
      <mainPage :optionChooseMainPage="optionChooseData" :isLogin="isLogin" :userData="userData"/>
    </div>
</div>
</template>

<script>
// 引入组件
import register from "./components/register.vue"
import headerTitle from "./components/header.vue"
import userMenu from "./components/userMenu.vue"
import mainPage from "./components/mainPage.vue"

export default{
  // 注入组件
  components:{
    register,
    headerTitle,
    userMenu,
    mainPage
  },
  data(){
    return{
      isLogin:true,      // 用户登录状态
      loginMenu:false,      // 登录界面
      optionChooseData:0,      // 选项选择
      // 用户信息
      userData:{
                userName:'未登录',
                userPassword:'1',
                userIcon:'src/assets/img/userIcon.png',
                userEmail:'123@gmail.com',
                userPhone:'12345678910',
                visitorLogList:[],
                changeLogList:[],
                visitorLog:{visitorTime:'',visitorName:''},
                changeLog:{changeTime:'',changeSize:'',changeTitle:'',},
            },
    }
  },
  methods:{
    // 打开登录界面
    openLoginMenu(){
      if(!this.isLogin){
        this.loginMenu=true;
      }
    },
    // 登录界面返回内容
    closeMenu(){
      this.loginMenu=false;
    },
    // 登录成功
    loginResult(loginSuccess,userData){
      this.isLogin=loginSuccess;
      if(this.isLogin){
        console.log(userData);
        this.userData.userName=userData.userName;
        this.userData.userPassword=userData.userPassword;
        console.log(this.userData.userName,this.userData.userPassword)
        this.closeMenu();
      }
    },
    // 退出登录
    logOutRequest(){
      this.isLogin=false;
      // 回到首页
      this.optionChooseData=0;
    },
    // 选项选择
    optionChoice(option){
      this.optionChooseData=option;
    }
  }
}
</script>

<style>
*{
  margin: 0;
  padding: 0;
}
.mainPage{
  display: flex;
  flex-direction: row;
  height: 90vh;
  width: 100%;
}
</style>