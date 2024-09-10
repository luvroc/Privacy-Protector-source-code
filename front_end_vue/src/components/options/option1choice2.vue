<template>
    <div class="background">
       <div class="title"><h1>数据修改</h1></div>
       <div class="dataPart">
           <div class="dataPartSubtitle" >
               <h2>数据总数:<span id="num">5</span></h2><div class="addData">添加数据</div>
           </div>
           <div class="dataList" v-for="(data,index) in userDataChange1">
            <div class="dataListData">
                <div class="dataIndex">{{ index }}</div>
                <div class="dataName">{{ data.changeTitle }}</div>
            </div>
               
               <div class="changeButtons">
                <div class="dataRewrite" @click="data.visitMode=2">修改</div>
                <div class="dataDelete" @click="data.visitMode=2">删除</div>
                   <!-- <div :class="data.visitMode=='1'?['private','buttonChoose']:['private']" @click="data.visitMode=1">不公开</div>
                   <div :class="data.visitMode=='2'?['protect','buttonChoose']:['protect']" @click="data.visitMode=2">成员访问</div>
                   <div :class="data.visitMode=='3'?['public','buttonChoose']:['public']" @click="data.visitMode=3">公开</div> -->
               </div>
           </div>
       </div>
   </div>
</template>

<script>
export default{
   data(){
       return{
           userDataChange1:{
               5:{changeTime:'6.11',changeTitle:'diary1',changeSize:'65kb',visitMode:'1'},
               4:{changeTime:'6.11',changeTitle:'Img',changeSize:'682kb',visitMode:'1'},
               3:{changeTime:'6.12',changeTitle:'file1',changeSize:'521kb',visitMode:'1'},
               2:{changeTime:'6.15',changeTitle:'file2',changeSize:'315kb',visitMode:'1'},
               1:{changeTime:'6.16',changeTitle:'diary2',changeSize:'35kb',visitMode:'1'},
           },
       }
   }
}
</script>

<style scoped>
/* 网页背景 */
.background{
   align-self: self-start;
   height: 100%;
}
/* 标题 */
.title{
   font-size: 25px;
   display: flex;
   align-items: center;
    justify-content: space-between;
}
h1,h2{
   align-items: start;
   color: #112d4e;
}
.dataPartSubtitle{
    /* line-height: 2.6rem; */
    display: flex;
    align-items: center;
    justify-content: space-between;
}


/* 按钮 */

.changeButtons{
   display: flex;
   flex-direction: row;
   justify-content: center;
   align-items: center;

}
.dataRewrite,.dataDelete,.addData{
   width: 5rem;
   height: 1.5rem;
   border-radius: 30px;
   background-color: white;
   text-align: center;
   margin: 0.3rem;
   font-size: 15px;
   font-weight: bold;
}
.dataRewrite{
   background-color: #6292CB;
   color: white;
}
.dataRewrite{
   background-color: #6292CB;
   color: white;
}
.addData{
    width: 11rem;
    height: 2rem;
    text-align: center;
    font-weight: bold;
    font-size: 20px;
    line-height: 2rem;
    background-color: #6292CB;
    color: white;   
}


/* 显示数据 */
.dataPart{
   display: flex;
   flex-direction: column;
   width: 60rem;
   border-top: solid 2px;
   overflow: scroll;
}
.dataList{
   display: flex;
   justify-content:space-between;
   align-items: start;
   border-top:dotted 1px;
   padding: 0.4rem;
   height: 2rem;
   font-size: 20px;
}
.dataListData{
    width: 50%;
    display: flex;
    /* justify-content: center; */
    align-items: center;
}
.dataIndex{
   margin-right: 2%;
   width: 5%;
}
.dataName{
   width: 50%;
}

/* 删除按钮 */
.delButton{
   display: flex;
   justify-content: space-between;
}
.deleteButton{
   margin-top: 1%;
   width: 40px;
   height: 40px;
   border: hidden;
   border-radius: 50px;
   position: relative;
   background-color: red;
   transform: rotate(45deg) scale(0.7);
}
.deleteButton:hover{
   transform: rotate(45deg) scale(0.9);
}
.deleteButton::before,
.deleteButton::after{
   content: '';
   position: absolute;
   width: 8px;
   height: 30px;
   top: 6px;
   left: 16px;
   border-radius: 30px;
   background-color: rgb(255, 255, 255);
}
.deleteButton::before{
   transform-origin: 0,100%;
   transform: rotate(90deg);
}
/*  */
#deleteAllButton{
   color: blue;
   padding-top: 1%;
   margin-right: 8%;
}
#deleteAllButton:hover{
   font-size: larger;
}</style>