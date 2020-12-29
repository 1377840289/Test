<template>
 <el-form :model="ruleForm" :rules="rules" ref="ruleForm"  class="demo-ruleForm">
      <h3 class="title">商城登录</h3>
      <el-form-item prop="account">
         <el-input type="text" v-model="ruleForm.account" auto-complete="off" placeholder="账号"></el-input>
      </el-form-item>
       <el-form-item prop="checkPass">
      <el-input type="password" v-model="ruleForm.checkPass" auto-complete="off" placeholder="密码"></el-input>
       </el-form-item>
      <el-checkbox v-model="checked" checked class="remember">记住密码</el-checkbox>
      <el-form-item style="width:100%;">
      <el-button type="primary"  @click.native.prevent="handleSubmit" :loading="logining">登录</el-button>
      <el-button @click.native.prevent="handleReset">重置</el-button>
    </el-form-item>
  </el-form>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      logining: false,
      ruleForm: {
        account: "admin",
        checkPass: "123456"
      },
      rules: {
        account: [
          { required: true, message: "请输入账号", trigger: "blur" },
          { type: "string", message: "账号必须为字符和数字" },
          { min: 2, max: 10, message: "长度在 2 到 10 个字符", trigger: "blur" }
          //{ validator: validaePass }
        ],
        checkPass: [
          { required: true, message: "请输入密码", trigger: "blur" }
          //{ validator: validaePass2 }
        ]
      },
      checked: true
    };
  },
  methods: {
    handleReset() {
      this.$refs.ruleForm.resetFields();
    },
    handleSubmit(event) {
      this.$refs.ruleForm.validate(valid => {
        if (valid) {
          // this.logining = true;
          var loginParams = {
            username: this.ruleForm.account,
            password: this.ruleForm.checkPass
          };
          this.logining = false;
          axios.post(
					"api/loginUser" ,{username: loginParams.username.trim(),userpwd:loginParams.password.trim()}
			  	).then(res => {
            console.log(res);
            if (res.data) {
              sessionStorage.setItem("user", JSON.stringify(res.data));
                this.$router.push({ path: "/Table" });
            } else {
              this.$message.warning("用户名或密码错误！请检查后再试");
            }
          });
        }
      });
    }
  }
};
</script>

<style scoped>
.demo-ruleForm {
  /*box-shadow: 0 0px 8px 0 rgba(0, 0, 0, 0.06), 0 1px 0px 0 rgba(0, 0, 0, 0.02);*/
  -webkit-border-radius: 5px;
  border-radius: 5px;
  -moz-border-radius: 5px;
  background-clip: padding-box;
  margin: 180px auto;
  width: 350px;
  padding: 35px 35px 15px 35px;
  background: #fff;
  border: 1px solid #eaeaea;
  box-shadow: 0 0 25px #cac6c6;
}
.el-form-item {
  margin-left: 0;
}
.title {
  margin: 0px auto 40px auto;
  text-align: center;
  color: #505458;
}
.remember {
  margin: 0px 0px 35px 0px;
}
</style>
