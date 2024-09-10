<template>
    
    <div class="visitorList" v-if="userDataVisitor.length==0">
        <div class="logTitle">访客表</div>
        <div class="listHead">
            <div class="visitorTime">访问时间</div>
            <div class="visitorName">访客</div>
        </div>
        <div class="listData" v-for="visitorData in userDataVisitor1">
            <div class="visitorTime">{{ visitorData.visitorTime }}</div>
            <div class="visitorName">{{ visitorData.visitorName }}</div>
        </div>
    </div>
    <div class="visitorListNone" v-else="userDataVisitor.length!=0" @click="asd">暂无数据！</div>
</template>

<script>
export default{
    data(){
        return{
            // 测试数据
            userDataVisitor1:{
                1:{visitorTime:'6.21',visitorName:'Sam'},
                2:{visitorTime:'6.20',visitorName:'Amy'},
                3:{visitorTime:'6.20',visitorName:'Toby'},
                4:{visitorTime:'6.19',visitorName:'Sam'},
                5:{visitorTime:'6.18',visitorName:'Alice'},
            },
        }
    },
    props:{
        userDataVisitor:{
            type:Array,
            default:()=>[{visitorTime:'',visitorName:''}]
        }
    },
    methods:{
        asd(){console.log(this.userDataChange);}

    }
}
</script>

<style>
@import url('../../assets/css/visit&changeLog.css');
</style>