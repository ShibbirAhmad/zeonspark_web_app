<template>
  <div>

    <footer id="footer">
      <div class="fpart-first">
        <div class="container">
          <div class="row">
            <div class="contact col-lg-3 col-md-3 col-sm-12 col-xs-12">
              <ul>
                <li>
                  <img :src="base_url+general_setting.logo" />
                </li>
                <li class="address">
                  <p v-html="footer_setting.footer_description " class="short_desc_footer">
                  </p>
                </li>
              </ul>
            </div>

            <div class="quick_link_column col-lg-2 col-md-2 col-sm-6 col-xs-6">
              <div class="quick_link">
                <h5>Quick Links</h5>
                <div class="line"></div>
                <ul class="link_line">

                  <li>
                    <router-link :to="{ name: 'welcome' }">Home</router-link>
                  </li>

                  <li>
                    <router-link :to="{ name: 'AboutUs' }"
                      >About Us</router-link
                    >
                  </li>
                  <li>
                    <router-link :to="{ name: 'ContactUs' }"
                      >Contact Us</router-link
                    >
                  </li>
                </ul>
              </div>
            </div>

            <div class="quick_link_column col-lg-2 col-md-2 col-sm-6 col-xs-6">
              <h5>Information</h5>
              <div class="line"></div>
              <ul class="link_line">
                <li>
                  <router-link :to="{ name: 'how_to_buy' }"
                    >How to order</router-link
                  >
                </li>
                <li>
                  <router-link :to="{ name: 'return_policy' }"
                    >Return Policy</router-link
                  >
                </li>
                <li>
                  <router-link :to="{ name: 'shipment' }"
                    >Shipment
                  </router-link>
                </li>
                <li>
                  <router-link :to="{ name: 'team' }"> Team </router-link>
                </li>

              </ul>
            </div>

            <div class=" col-lg-5 col-md-5 col-sm-5 col-xs-12">
              <div class="row news_letter">
              <h5>Newsletter</h5>
              <div class="line"></div>
                <div class="col-md-10 col-sm-12 ">
                   <div class="subscribe-input">
                      <form @submit.prevent="subscribe()">
                        <input
                          id="signup"
                          type="email"
                          required
                          placeholder="subscribe for latest offer"
                          v-model="email"
                          class="form-control"
                        />
                      <button type="submit" class="btn email_icon_container">
                        <i class="fa fa-lg fa-envelope"> </i>
                      </button>
                    </form>
                   </div>

                </div>
                <div class="col-md-10 col-sm-12">
                  <div class="social-icon">

                <a :href="footer_setting.facebook_url" target="_blank" class="social-wrape">
                  <i class="fa fa-lg fa-facebook f-icon"></i>
                </a>

                <a :href="footer_setting.youtube_url" class="social-wrape"   target="_blank">
                  <i class="fa fa-lg fa-youtube f-icon"></i>
                </a>

                <a :href="footer_setting.twitter_url" class="social-wrape"  target="_blank" >
                  <i class="fa fa-lg fa-twitter f-icon"></i>
                </a>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="fpart-second">
        <div class="container">
          <div id="powered" class="clearfix"></div>
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
              <div class="payment-card">
                <img
                  :src="base_url + 'images/ssl.png'"
                  style="width: 100%; height: auto; margin-top: -30px"
                  alt=""
                />
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row footer_info_row">
          <div class="end_footer" >
                <p class="f_info_left">
                  {{ footer_setting.copyright_info  }}
                </p>
              <p class="f_info_right">
                <a title="Mohasagor IT Solution" target="_blank" href="https://mit.mohasagor.com">Powered by MIT </a>
              </p>
          </div>
      </div>
    </footer>
  </div>
</template>






<script>
export default {
  mounted() {
   this.$store.dispatch('general_setting');
   this.$store.dispatch('footer_setting');
  },
  data() {
    return {
      email: "",
      base_url: this.$store.state.image_base_link,
    };
  },
  methods: {
    subscribe() {
      axios
        .post("/_public/add/subscriber", {
          email: this.email,
        })
        .then((resp) => {
          if (resp.data.success == "OK") {
            this.email = "";
            Swal.fire({
              type: "success",
              text: resp.data.message,
              duration: 2000,
            });
          } else {
            this.email = "";
            Swal.fire({
              type: "warning",
              text: resp.data.message,
              duration: 2000,
            });
          }
        })
        .catch();
    },


  },
  computed:{

    footer_setting(){
      return this.$store.getters.footer_setting ;
    },
     general_setting(){
      return this.$store.getters.general_setting ;
    }
  }
};
</script>


<style scoped>



</style>
