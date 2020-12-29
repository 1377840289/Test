
<template>
  <div class="markdown-body" style="padding:30px">
   
    <div class="mod-s01">
    <div class="mod-hd" v-html="title">
    </div>
    <div class="mod-bd" v-html="content">
    
    </div>
</div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      md: "",
      title:"",
      content:""
    };
  },
  created() {
    // 从后端请求README.md
    this.$axios
      .post("/api/getarticle", {})
      .then((res) => {
        this.content = res.data[0].content;
        this.title = res.data[0].title;
      })
      .catch((err) => {
        return Promise.reject(err);
      });
  },
};
</script>
<style>
.markdown-body {
  box-sizing: border-box;
  margin: 0 auto;
  padding: 0 40px;
}
.mod-s01 {
    padding: 25px 36px;
    border: 1px solid #ccc;
    margin-bottom: 15px;
}
.mod-hd .title {
    font-size: 16px;
}
.mod-hd .icon-font {
    color: #f10215;
    margin-right: 6px;
}
p{
  line-height: 35px;
}
</style>