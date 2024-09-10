<template>
    <div class="backgroundTitle">
        <img id="logoImg" src="../assets/img/logo.png" width="300px"></img>
        <div id="title">企业信息隐私保护管理平台</div>
        <!-- <div id="connectUs">联系我们</div> -->
    </div>
</template>

<style scoped>
    .backgroundTitle{
        min-height: 60px;
        width: 100vw;
        height: 8vh;
        margin: 0;
        padding: 0;
        background-color: rgb(0, 0, 0 , 0.05);
        display: flex;
        /* justify-content: space-between; */
        border-bottom: solid rgba(0, 0, 0, 0.12);
        /* align-items:center; */
    }

    #title{
        position: relative;
        width: 50rem;
        height: 40px;
        padding-top: 20px;
        margin-left: 0.8rem;
        color: #112d4e;
        font-size: 38px;
        font-weight: 550;
        white-space: nowrap;
        top: 0px;
    }
    #logoImg{
        margin-left: 1rem;
    }
    #connectUs{
        width: auto;
        height: 100%;
        display: flex;
        right: 1rem;
        align-items: flex-end;
        text-align: left;
        color: rgba(0, 0, 0, 0.6);
    }
</style>