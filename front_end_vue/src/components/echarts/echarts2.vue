<template>
    <v-chart class="chart" :option="option" autoresize />
  </template>
  
  <script setup>
  import { use } from 'echarts/core';
  import { CanvasRenderer } from 'echarts/renderers';
  import { PieChart } from 'echarts/charts';
  import {
    TitleComponent,
    TooltipComponent,
    LegendComponent,
  } from 'echarts/components';
  import VChart, { THEME_KEY } from 'vue-echarts';
  import { ref, provide } from 'vue';
  
  use([
    CanvasRenderer,
    PieChart,
    TitleComponent,
    TooltipComponent,
    LegendComponent,
  ]);
  
  provide(THEME_KEY, 'white');
  
  const option = ref({
    title: {
      text: '数据统计图',
      top:"0%",
      left: 'center',
    },
    tooltip: {
      trigger: 'item',
      formatter: '{a} <br/>{b} : {c} ({d}%)',
    },
    legend: {
      orient: 'vertical',
      left: 'left',
      // data: ['文档', '图片', '文件', 'Video Ads', 'Search Engines'],
      data: ['文档', '图片', '文件'],
    },
    series: [
      {
        name: '数据统计图',
        type: 'pie',
        radius: '55%',
        center: ['50%', '60%'],
        data: [
          { value: 2, name: '文档' },
          { value: 1, name: '图片' },
          { value: 2, name: '文件' },
          // { value: 0, name: 'Video Ads' },
          // { value: 0, name: 'Search Engines' },
        ],
        emphasis: {
          itemStyle: {
            shadowBlur: 10,
            shadowOffsetX: 0,
            shadowColor: 'rgba(0, 0, 0, 0.5)',
          },
        },
      },
    ],
  });
  </script>
  
  <style scoped>
  .chart {
    height: 100%;
  }
  </style>
  