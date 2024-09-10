<template>
    
    <div class="changeList" v-if="userDataChange.length==0">
        <div class="logTitle">数据修改日志</div>
        <div class="listHead">
            <div class="changeTime">修改时间</div>
            <div class="changeTitle">文件名</div>
            <div class="changeSize">文件大小</div>
        </div>
        <div class="listData" v-for="changeData in userDataChange1">
            <div class="changeTime">{{ changeData.changeTime }}</div>
            <div class="changeTitle">{{ changeData.changeTitle }}</div>
            <div class="changeSize">{{ changeData.changeSize }}</div>
        </div>
    </div>
    <div class="changeListNone" v-else="userDataChange.length!=0" @click="asd">暂无数据！</div>
</template>

<script>
export default{
    data(){
        return{
            // 测试数据
            userDataChange1:{
                5:{changeTime:'6.11',changeTitle:'diary1',changeSize:'65kb'},
                4:{changeTime:'6.11',changeTitle:'Img',changeSize:'682kb'},
                3:{changeTime:'6.12',changeTitle:'file1',changeSize:'521kb'},
                2:{changeTime:'6.15',changeTitle:'file2',changeSize:'315kb'},
                1:{changeTime:'6.16',changeTitle:'diary2',changeSize:'35kb'},
            },
        }
    },
    props:{
        userDataChange:{
            type:Array,
            default:()=>[{changeTime:'11.11',changeTitle:'none',changeSize:'1kb'}]
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