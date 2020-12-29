
<template>
  <div id="myLogin">
    <el-dialog title="登录" width="300px" center :visible.sync="isLogin">
      <el-form :model="LoginUser"  status-icon  class="demo-ruleForm">
        <el-form-item prop="name">
          <el-input prefix-icon="el-icon-user-solid" placeholder="请输入账号" v-model="LoginUser.name"></el-input>
        </el-form-item>
        <el-form-item prop="pass">
          <el-input
            prefix-icon="el-icon-view"
            type="password"
            placeholder="请输入密码"
            v-model="LoginUser.pass"
          ></el-input>
        </el-form-item>
        <el-form-item>
          <el-button size="medium" type="primary" @click="Login" style="width:100%;">登录</el-button>
        </el-form-item>
      </el-form>
    </el-dialog>
  </div>
</template>
<script>
import { mapActions } from "vuex";

export default {
  name: "MyLogin",
  data() {
    return {
      LoginUser: {
        name: "",
        pass: ""
      }
    };
  },
  computed: {
    // 获取vuex中的showLogin，控制登录组件是否显示
    isLogin: {
      get() {
        return this.$store.getters.getShowLogin;
      },
      set(val) {
        this.setShowLogin(val);
      }
    }
  },
  methods: {
    ...mapActions(["setUser", "setShowLogin"]),
    Login() {
       this.$axios
            .post("/api/loginUser", {
              username: this.LoginUser.name,
              userpwd: this.LoginUser.pass
            })
            .then(res => {
              // “001”代表登录成功，其他的均为失败
              if (res.data.length > 0) {
                // 隐藏登录组件
                this.isLogin = false;
                // 登录信息存到本地
                localStorage.setItem("user", JSON.stringify(res.data[0]));
                // 登录信息存到vuex
                this.setUser(res.data[0]);
                // 弹出通知框提示登录成功信息
                this.notifySucceed("登录成功");
              } else {
                // 弹出通知框提示登录失败信息
                this.notifyError("账号或密码错误");
              }
            })
            .catch(err => {
              return Promise.reject(err);
            });
    }
  }
};
</script>
<style>
</style>