<template>
  <div>
  <h1>1测试页面</h1>
  <ul>
  <li v-for="(item) in list" :key="item.id">{{item.id}}:{{item.name}}</li>
  </ul>
  </div>
</template>

<script>
// import HelloWorld from './components/HelloWorld.vue'
import axios from 'axios'

export default {
  name: 'App',
  components: {
    // HelloWorld
  },
  data(){
    return {
      list: [
        { id: 5, name: '测试猿66'}
      ],
    }
  },
  created(){
    axios.get('/api/users').then(res => {
      console.log(res)
      this.list = res.data || [];
    })
  }
}
</script>

<style>

</style>
