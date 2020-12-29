
<template>
  <div id="register">
    <el-dialog title="注册" width="300px" center :visible.sync="isRegister">
      <el-form :model="RegisterUser" ref="ruleForm" class="demo-ruleForm">
        <el-form-item prop="name">
          <el-input
            prefix-icon="el-icon-user-solid"
            placeholder="请输入手机号"
            v-model="RegisterUser.name"
          ></el-input>
        </el-form-item>
        <el-form-item prop="pass">
          <el-input
            prefix-icon="el-icon-view"
            type="text"
            placeholder="请输入用户名"
            v-model="RegisterUser.nickname"
          ></el-input>
        </el-form-item>
        <el-form-item prop="confirmPass">
          <el-input
            prefix-icon="el-icon-view"
            type="password"
            placeholder="请再次输入密码"
            v-model="RegisterUser.confirmPass"
          ></el-input>
        </el-form-item>
        <el-form-item>
          <el-button
            size="medium"
            type="primary"
            @click="Register"
            style="width: 100%"
            >注册</el-button
          >
        </el-form-item>
      </el-form>
    </el-dialog>
  </div>
</template>
<script>
export default {
  name: "MyRegister",
  props: ["register"],
  data() {
    return {
      isRegister: false, // 控制注册组件是否显示
      RegisterUser: {
        name: "",
        nickname: "",
        confirmPass: "",
      },
    };
  },
  watch: {
    // 监听父组件传过来的register变量，设置this.isRegister的值
    register: function (val) {
      if (val) {
        this.isRegister = val;
      }
    },
    // 监听this.isRegister变量的值，更新父组件register变量的值
    isRegister: function (val) {
      if (!val) {
        this.$refs["ruleForm"].resetFields();
        this.$emit("fromChild", val);
      }
    },
  },
  methods: {
    Register() {
      if (this.RegisterUser.name == "" || this.RegisterUser.nickname == "" || this.RegisterUser.confirmPass == "") {
        this.notifyError("输入框不能为空");
        return;
      } else if (this.RegisterUser.name.length != 11) {
        this.notifyError("手机号错误");
        return;
      }
      this.$axios
        .post("/api/regUser", {
          username: this.RegisterUser.name,
          nickname: this.RegisterUser.nickname,
          userpwd: this.RegisterUser.confirmPass,
        })
        .then((res) => {
          // “001”代表注册成功，其他的均为失败
          if (res.data != "2") {
            // 隐藏注册组件
            this.isRegister = false;
            // 弹出通知框提示注册成功信息
            this.notifySucceed("注册成功");
          } else {
            // 弹出通知框提示注册失败信息
            this.notifyError("注册失败，手机号已经存在。");
          }
        })
        .catch((err) => {
          return Promise.reject(err);
        });
    },
  },
};
</script>
<style>
</style>