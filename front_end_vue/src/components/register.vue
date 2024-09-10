<template>
    <div class="window" v-if="turnOn">
        <!-- 登录注册选择 -->
        <div class="modelChoose">
            <div id="logButton" @click="newUser=false" :style="isChosen1">登录</div>
            <div>|</div>
            <div id="registerButton" @click="newUser=true" :style="isChosen2">注册</div>
        </div>
        <!-- 登录注册提交表单 -->
        <div class="menu">
            <form>
                <div class="input"><div class="inputType">账号</div><input type="text" placeholder="输入账号" v-model="userAccount" @keydown.prevent.enter></div>
                <div class="input"><div class="inputType">密码</div><input type="password" placeholder="输入密码" v-model="userPassword" autocomplete="false"></div>
                <button type="button" class="submitButton" id="logging" v-if="!newUser" :style="isInputFull" @click="loginSendData">登录</button>
                <button type="button" class="submitButton" id="register" v-else="!newUser" :style="isInputFull" @click="registerSendData">注册</button>
            </form>
        </div>
        <!-- 退出界面 -->
        <div id="quit" @click="closeMenuClick"></div>
    </div>
</template>

<script>
// import request from '@/utils/requests'
import axios, { Axios } from 'axios'

export default{
    data(){
        return{
            needMenu:true,
            newUser:false,
            userAccount:'',
            userPassword:'',
            loginStatus:false,
            userData:{
                userName:'',
                userPassword:'',
                userIcon:'',
                data:'',
            }
        }
    },
    computed:{
        // 登录按钮颜色变化
        isInputFull(){return {backgroundColor:this.userAccount===''||this.userPassword===''? 'rgb(0, 0, 255 , 0.4)':'rgb(0, 0, 255 , 0.6)'}},
        isChosen1(){return {color: this.newUser===true? 'black':'rgb(0, 1, 255 , 0.9)'}},
        isChosen2(){return {color: this.newUser===false? 'black':'rgb(0, 1, 255 , 0.9)'}}
    },
    props:{
        turnOn:{
            type:Boolean,
            default:false,
        }
    },
    methods:{
        loginSuccess(){this.$emit("loginSuccess",this.loginStatus,this.userData)},
        closeMenuClick(){this.$emit("closeMenuClick")},
        // 登录提交
        loginSendData(){
            //  axios({
            //     method:'POST',
            //     headers: {'content-type': 'application/x-www-form-urlencoded','charset':'UTF-8'},
            //     url:'/api/instance_list',
            //     data:{
            //         account:this.userAccount,
            //         password:this.userPassword,
            //     },
            // })
            // .then(result=>{console.log(result.data.data),this.loginSuccess=true,this.closeMenu()})
            // .catch(error=>{console.log(error)})

            this.userData.userName="John Doe";
            this.userData.userPassword='123';
            this.loginStatus=true;
            console.log(this.loginStatus,this.userData.userAccount,this.userData.userPassword);
            this.loginSuccess();
        },
        // 注册提交
        registerSendData(){
            axios({
                method:'POST',
                headers: {'content-type': 'application/x-www-form-urlencoded','charset':'UTF-8'},
                url:'/api/instance_list',
                data:{
                    account:this.userAccount,
                    password:this.userPassword,
                },
            })
            .then(result=>{console.log(result.data.data)})
            .catch(error=>{console.log(error)})
        }
    }
}
</script>

<style scoped>
.window{
    width: 30rem;
    height: 14rem;
    color: red;
    display: flex;
    flex-direction: column;
    background-color: white;
    border: solid grey 1px;
    border-radius: 10px;
    position: fixed;
    left: 35vw;
    top: 30vh;
    z-index: 1 !important;
}
/* 登录注册选择按钮 */
.modelChoose{
    display: flex;
    justify-content:center;
    align-items: center;
    color: black;
}

#logButton,#registerButton{
    width: 50px;
    /* border: solid grey 1px; */
    margin: 1rem 2rem 0.8rem 2rem;
    font-size: 20px;
    text-align: center;
    color: black;
}
#logButton:hover,#registerButton:hover{
    font-weight: 550;
}

/* 输入文本框 */
input{
    margin: 0;
    margin-left: 5px;
    width: 69%;
    height: 2.4rem;
    border: hidden;
    outline: none;
}
/* 登录注册表单 */
form{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    margin: 10px 0 20px 0;
}
/* 输入框 */
.input{
    color: black;
    font-size: 16px;
    justify-content: left;
    line-height: 40px;
    display: flex;
    border: 1px gray solid;
}
.input:first-of-type{
    border-radius: 5px 5px 0px 0px;
    border-bottom: hidden;
}
.input:last-of-type{
    border-radius: 0px 0px 5px 5px;
}
.inputType{
    margin-left: 10px;
    margin-right: 10px;
}
.submitButton{
    color: white;
    background-color: rgb(0, 0, 255 , 0.4);
    border: hidden;
    border-radius: 10px;
    width: 40%;
    height: 30px;
    margin-top: 15px;
}
/* 退出按钮 */
#quit{
    position: relative;
    width: 2rem;
    height: 2rem;
    /* border: 1px solid gray; */
    border-radius: 100%;
    left: 28rem;
    bottom: 12.5rem;
    transform: rotate(45deg);
}
#quit::after,#quit::before{
    content: '';
    position: absolute;
    width: 0.2rem;
    height: 1rem;
    right: 0.8rem;
    top: 0.5rem;
    background-color: black;
}
#quit::before{
    transform: rotate(90deg);
}
</style>