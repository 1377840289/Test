
<template>
  <div class="home" id="home" name="home">
    <!-- 轮播图 -->
    <div class="block">
      <el-carousel height="460px">
        <el-carousel-item v-for="item in carousel" :key="item.carousel_id">
          <img style="height:460px;" :src="item.imgurls" :alt="item.describes" />
        </el-carousel-item>
      </el-carousel>
    </div>
    <!-- 轮播图END -->
    <div class="main-box">
      <div class="main">
        <div class="phone">
          <div class="box-hd">
            <div class="title">电子设备</div>
          </div>
          <div class="box-bd">
            <div class="promo-list">
              <router-link to>
                <img :src="$target +'public/imgs/phone/phone.png'" />
              </router-link>
            </div>
            <div class="list">
              <MyList :list="phoneList" :isMore="true" type=1></MyList>
            </div>
          </div>
        </div>

        <div class="appliance" id="promo-menu">
          <div class="box-hd">
            <div class="title">衣服</div>
          </div>
            <div class="box-bd">
            <div class="promo-list">
              <router-link to>
                <img :src="$target +'public/imgs/phone/phone.png'" />
              </router-link>
            </div>
            <div class="list">
              <MyList :list="applianceHotList" :isMore="true" type=2></MyList>
            </div>
          </div>
        </div>
        <div class="accessory" id="promo-menu">
          <div class="box-hd">
            <div class="title">其他</div>
          </div>
           <div class="box-bd">
            <div class="promo-list">
              <router-link to>
                <img :src="$target +'public/imgs/phone/phone.png'" />
              </router-link>
            </div>
            <div class="list">
              <MyList :list="protectingShellList" :isMore="true" type=3></MyList>
            </div>
          </div>
          <div class="box-bd">
               <div class="box-hd">
            <div class="title">运动专区</div>
          </div>
            <div class="promo-list">
              <ul>
                <li>
                  <img :src="$target +'public/imgs/accessory/accessory-promo1.png'" alt />
                </li>
                <li>
                  <img :src="$target +'public/imgs/accessory/accessory-promo2.png'" alt />
                </li>
              </ul>
            </div>
            <div class="list">
              <MyList :list="chargerList" :isMore="true" type=4></MyList>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      carousel: "", // 轮播图数据
      phoneList: "", 
      miTvList: "", 
      applianceList: "", 
      applianceHotList: "", 
      accessoryList: "", 
      accessoryHotList: "", 
      protectingShellList: "", 
      chargerList: "", 
      applianceActive: 1, 
      accessoryActive: 1 
    };
  },
  watch: {
    applianceActive: function(val) {
      console.log("val",val)
      if (this.applianceHotList == "") {
        this.applianceHotList = this.applianceList;
      }
      if (val == 1) {
        this.applianceList = this.applianceHotList;
        return;
      }
      if (val == 2) {
        this.applianceList = this.miTvList;
        return;
      }
    },
    accessoryActive: function(val) {
      if (this.accessoryHotList == "") {
        this.accessoryHotList = this.accessoryList;
      }
      if (val == 1) {
        this.accessoryList = this.accessoryHotList;
        return;
      }
      if (val == 2) {
        this.accessoryList = this.protectingShellList;
        return;
      }
      if (val == 3) {
        this.accessoryList = this.chargerList;
        return;
      }
    }
  },
  created() {
    this.$axios
      .post("/api/goodBanners", {})
      .then(res => {
        this.carousel = res.data;
      })
      .catch(err => {
        return Promise.reject(err);
      });
    this.getPromo("1", "phoneList");
    this.getPromo("2", "applianceHotList");
    this.getPromo("3", "protectingShellList");
    this.getPromo("4", "chargerList");
  },
  methods: {
    getChildMsg(val) {
      this.applianceActive = val;
    },
    getChildMsg2(val) {
      this.accessoryActive = val;
    },
    getPromo(type, val, api) {
      api = api != undefined ? api : "/api/getGoodsByType";
      this.$axios
        .post(api, {
          type
        })
        .then(res => {
          console.log(res)
          this[val] = res.data;
        })
        .catch(err => {
          return Promise.reject(err);
        });
    }
  }
};
</script>
<style scoped>
@import "../assets/css/index.css";
</style>