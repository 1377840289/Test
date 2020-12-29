<template>
  <el-card class="app-container" shadow="always">
    <div slot="header">
      <span>添加商品信息</span>
    </div>
    <el-form ref="form1" :model="form1" :rules="rules2" label-width="120px">
      <el-form-item
        prop="id"
        label="编号">
        <el-input v-model="form1.id"  :disabled="true" placeholder="不可修改"/>
      </el-form-item>
      <el-form-item
        prop="name"
        label="名称">
        <el-input v-model="form1.name" placeholder="请输入名称"/>
      </el-form-item>
      <el-form-item
        label="图片地址"
        prop="posterurl"
      >
        <el-input v-model="form1.posterurl" placeholder="请输入图片地址"/>
      </el-form-item>
      <el-form-item
        label="类别"
        prop="type"
      >
        <el-input v-model="form1.type" placeholder="请再次输入类别"/>
        <p style="float:left">1代表电子设备，2代表衣服，3代表其他，4为运动专区</p>
      </el-form-item>
      <el-form-item
        label="价格"
        prop="score"
      >
        <el-input v-model.number="form1.score" type="number" placeholder="请输入价格"/>
      </el-form-item>
      <el-form-item
        label="简介"
        prop="actor"
      >
        <el-input v-model.number="form1.actor" placeholder="请输入简介"/>
      </el-form-item>
      <el-form-item
        label="赔付说明"
        prop="playinfo"
      >
        <el-input v-model="form1.playinfo" placeholder="请输入赔付说明"/>
      </el-form-item>
      <el-form-item>
        <el-button :loading="loading" type="primary" @click="onSubmit()">提交</el-button>
        <el-button @click="onCancel">取消</el-button>
      </el-form-item>
    </el-form>
  </el-card>
</template>
<script>
  import ElCard from "element-ui/packages/card/src/main";
  import axios from "axios";

  export default {
    components: {ElCard},
    data() {
      var validatePass = (rule, value, callback) => {
       
      }
      return {
        form1: {
          id: "",
          name: "",
          posterurl: "",
          type: "",
          score: "",
          actor: "",
          screen: "",
          isshow: "",
          wish: "",
          playinfo: "",
          imgurl:""
        },
        loading: false,
        rules2: {
         
        }
      }
    },
    mounted(){
      this.form1 =JSON.parse(localStorage.getItem("goodsInfo"))
      console.log(this.$route.params.id,this.form1)
    },
    methods: {
      onSubmit() {
        console.log(this.form1)
        let data = JSON.stringify(this.form1)
          axios
          .post("api/updateGoods", this.form1,
          )
          .then(response => {
            if(response.data==1){
               this.$alert('修改成功', '温馨提示', {
                confirmButtonText: '确定',
                callback: action => {
                      this.$router.push({path:"/table"})
                }
              });

            }
          })
          .catch(function(error) {
            console.log(error);
          });
      },
      showError() {
        this.$message({
          message: '提交失败！',
          type: 'error'
        })
      },
      onCancel() {
        this.$router.back()
      }
    }
  }
</script>

<style scoped>
  .line{
    text-align: center;
  }
</style>
