<template>
  <div class="wrapper-wide">
    <frontend-header></frontend-header>


    <div class="container">

       <div class="row ">
      <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12  slider_column">
        <carousel
          v-if="sliders"
          :items="1"
          :nav="false"
          :autoplay="true"
          :autoplayTimeout="2000"
        >
          <a v-for="slider in sliders" :href="slider.url" :key="slider.id">
            <img :src="base_url + slider.image" />
          </a>
        </carousel>
      </div>

       <div v-if="banner && banner.beside_slider_banner_status == 1" class="col-lg-3 banner_column_beside_slider col-md-3 col-xs-12">

        <a :href="banner.beside_slider_banner_url_1" target="_blank">
          <img class="banner_besie_slider_1" :src="base_url + banner.beside_slider_banner_1" />
        </a>

        <a :href="banner.beside_slider_banner_url_2" target="_blank">
          <img class="banner_besie_slider_2" :src="base_url + banner.beside_slider_banner_2" />
        </a>

       </div>

      </div>

    <div class="offer_banner_row row">

    <div v-if="offer_banner.length > 1 " class="offer_banner_container col-lg-4 col-md-4 col-sm-4 col-xs-12">
         <vue-displacement-slideshow
            :images="offerBannersLeft"
            :intensity.number="0.2"
            :speedIn.number="2.4"
            :speedOut.number="2.4"
            ease="Expo.easeInOut"
            ref="slideshowLeft">
        </vue-displacement-slideshow>
    </div>

       <div v-if="offer_banner.length > 3 " class="offer_banner_container col-lg-4 col-md-4 col-sm-4 col-xs-12">
         <vue-displacement-slideshow
            :images="offerBannersMiddle"
            :intensity.number="0.2"
            :speedIn.number="2.4"
            :speedOut.number="2.4"
            ease="Expo.easeInOut"
            ref="slideshowMiddle">
        </vue-displacement-slideshow>
    </div>


       <div v-if="offer_banner.length > 5 "  class="offer_banner_container col-lg-4 col-md-4 col-sm-4 col-xs-12">
         <vue-displacement-slideshow
            :images="offerBannersRight"
            :intensity.number="0.2"
            :speedIn.number="2.4"
            :speedOut.number="2.4"
            ease="Expo.easeInOut"
            ref="slideshowRight">
        </vue-displacement-slideshow>
    </div>

    </div>

      <div v-if="best_selling_produtcs.length" class="new_arrival_section">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-xs-12 text-center">
               <img class="margin_design" :src="base_url+'images/basic_img/MARGIN-DESIGN.png'" >
                 <h4 class="arrival_heading">Hot Sale </h4>

            </div>
          <vue-horizontal-list
            :items="best_selling_produtcs"
            :options="best_selling_options"
          >
            <template v-slot:default="{ item }">
              <div class="col-lg-3 col-md-3 col-xs-6 small_width   ">
                <div class="new_arrival_container">
                  <div class="new_arrival_card">
                    <div class="new_arrival_card_body text-center">
                      <router-link
                        :to="{
                          name: 'single',
                          params: { slug: item.slug },
                        }"
                      >
                        <img
                          :src="product_thumbnail_link + item.thumbnail_img"
                        />
                      </router-link>
                      <p class="arrival_link">
                        <router-link
                          :to="{
                            name: 'single',
                            params: { slug: item.slug },
                          }"
                          >{{ item.name.substring(0, 20) }}
                          <span v-if="item.name.length > 20"> ... </span>
                        </router-link>
                      </p>
                      <p class="price">
                        <span class="price-new"> &#2547;{{ item.price }}</span>
                        <span class="price-old" v-if="item.discount">
                          &#2547;{{ item.sale_price }}</span
                        >
                      </p>
                    </div>
                      <div class="new_arrival_card_footer">
                       <router-link  v-if="item.product_attribute" :to="{ name:'single',params:{ slug: item.slug }}" > Add To Cart </router-link>
                        <a v-else @click="addToCart(item.slug)" >Add To Cart</a>

                       <router-link  class="buy_now"  v-if="item.product_attribute" :to="{ name:'single',params:{ slug: item.slug }}" >Buy Now </router-link>
                       <a  v-else  class="buy_now"  @click="buyNow(item.slug)" >Buy Now </a>
                    </div>
                  </div>
                </div>
              </div>
            </template>
          </vue-horizontal-list>
        </div>
      </div>


      <div v-if="new_arrival_products.length" class="new_arrival_section">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-xs-12 text-center">
               <img class="margin_design" :src="base_url+'images/basic_img/MARGIN-DESIGN.png'" >
                 <h4 class="arrival_heading">New Arrival</h4>

            </div>
          <vue-horizontal-list
            :items="new_arrival_products"
            :options="new_arrival_options"
          >
            <template v-slot:default="{ item }">
              <div class="col-lg-3 col-md-3 col-xs-6 small_width   ">
                <div class="new_arrival_container">
                  <div class="new_arrival_card">
                    <div class="new_arrival_card_body text-center">
                      <router-link
                        :to="{
                          name: 'single',
                          params: { slug: item.slug },
                        }"
                      >
                        <img
                          :src="product_thumbnail_link + item.thumbnail_img"
                        />
                      </router-link>
                      <p class="arrival_link">
                        <router-link
                          :to="{
                            name: 'single',
                            params: { slug: item.slug },
                          }"
                          >{{ item.name.substring(0, 20) }}
                          <span v-if="item.name.length > 20"> ... </span>
                        </router-link>
                      </p>
                      <p class="price">
                        <span class="price-new"> &#2547;{{ item.price }}</span>
                        <span class="price-old" v-if="item.discount">
                          &#2547;{{ item.sale_price }}</span
                        >
                      </p>
                    </div>
                       <div class="new_arrival_card_footer">
                       <router-link  v-if="item.product_attribute" :to="{ name:'single',params:{ slug: item.slug }}" > Add To Cart </router-link>
                        <a v-else @click="addToCart(item.slug)" >Add To Cart</a>

                       <router-link class="buy_now" v-if="item.product_attribute" :to="{ name:'single',params:{ slug: item.slug }}" >Buy Now </router-link>
                       <a class="buy_now" v-else  @click="buyNow(item.slug)" >Buy Now </a>
                    </div>
                  </div>
                </div>
              </div>
            </template>
          </vue-horizontal-list>
        </div>
      </div>


       <div v-if="trending_now_products.length" class="new_arrival_section">
        <div class="row">

           <div class="col-lg-12 col-md-12 col-xs-12 text-center">
               <img class="margin_design" :src="base_url+'images/basic_img/MARGIN-DESIGN.png'" >
                 <h4 class="arrival_heading">Trending Now</h4>

          </div>
          <vue-horizontal-list
            :items="trending_now_products"
            :options="trending_now_options"
          >
            <template v-slot:default="{ item }">
              <div class="col-lg-3 col-md-3 col-xs-6 small_width   ">
                <div class="new_arrival_container">
                  <div class="new_arrival_card">
                    <div class="new_arrival_card_body text-center">
                      <router-link
                        :to="{
                          name: 'single',
                          params: { slug: item.slug },
                        }"
                      >
                        <img
                          :src="product_thumbnail_link + item.thumbnail_img"
                        />
                      </router-link>
                      <p class="arrival_link">
                        <router-link
                          :to="{
                            name: 'single',
                            params: { slug: item.slug },
                          }"
                          >{{ item.name.substring(0, 20) }}
                          <span v-if="item.name.length > 20"> ... </span>
                        </router-link>
                      </p>
                      <p class="price">
                        <span class="price-new"> &#2547;{{ item.price }}</span>
                        <span class="price-old" v-if="item.discount">
                          &#2547;{{ item.sale_price }}</span
                        >
                      </p>
                    </div>
                       <div class="new_arrival_card_footer">
                       <router-link  v-if="item.product_attribute" :to="{ name:'single',params:{ slug: item.slug }}" > Add To Cart </router-link>
                        <a v-else @click="addToCart(item.slug)" >Add To Cart</a>

                       <router-link class="buy_now" v-if="item.product_attribute" :to="{ name:'single',params:{ slug: item.slug }}" >Buy Now </router-link>
                       <a  v-else  class="buy_now" @click="buyNow(item.slug)" >Buy Now </a>
                    </div>
                  </div>
                </div>
              </div>
            </template>
          </vue-horizontal-list>
        </div>
      </div>

       <div v-if="banner && banner.under_new_arrival_banner_status == 1" class="row">

        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <a :href="banner.under_new_arrival_banner_url_1" target="_blank">
            <img class="banner_under_new_arrival_1" :src="base_url + banner.under_new_arrival_banner_1" />
          </a>
        </div>

        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <a :href="banner.under_new_arrival_banner_url_2" target="_blank">
            <img class="banner_under_new_arrival_2" :src="base_url + banner.under_new_arrival_banner_2" />
          </a>
       </div>


       </div>


      <div v-if="sub_categories.length" class="new_arrival_section">
        <div class="row ">
          <div class="col-lg-12 col-md-12 col-xs-12 text-center">
                 <img class="margin_design" :src="base_url+'images/basic_img/MARGIN-DESIGN.png'" >
                  <h4 class="arrival_heading">View All</h4>
          </div>


          <vue-horizontal-list
            :items="sub_categories"
            :options="sub_categories_options"
          >
            <template v-slot:default="{ item }">
              <div class="col-lg-3 col-md-3 col-xs-6 small_width   ">
                <div class="sub_category_home_container">
                  <div class="sub_category_home_card">
                    <div class="sub_category_home_card_body text-center">
                      <router-link
                        :to="{
                          name: 'PublicSubCategory',
                          params: { slug: item.slug },
                        }"
                      >
                        <img
                          :src="base_url + item.image"
                        />
                      </router-link>

                       <router-link
                         class="sub_category_home_name"
                         :to="{
                          name: 'PublicSubCategory',
                          params: { slug: item.slug },
                        }">
                          {{ item.name }}
                            <span class="sub_category_angle"> <i class="fa fa-lg fa-angle-double-right" aria-hidden="true"></i></span>
                       </router-link>

                    </div>
                  </div>
                </div>
              </div>
            </template>
          </vue-horizontal-list>
        </div>
      </div>


      <div class="row service_row">
        <div class="col-lg-12 col-md-12 col-xs-12 text-center">
           <h4 class="shopping_made_easy" >Shopping Made Easy </h4>
        </div>

        <div class="col-md-3 col-sm-6 text-center">

          <div class="service_container">
            <a style="text-decoration:none" href="/fast-delivery" target="_blank" >
            <div class="service_outer">
              <div class="service_inner">
                <!-- <i style="margin: 12px 8px;" class="fa fa-handshake-o service_icon"> </i> -->
                <img class="service_img" :src="base_url+'images/basic_img/fast_delivery.gif'" >
              </div>
            </div>
             <h4>Fast Delivery </h4>
            <p>Digital Payments</p>
             </a>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 text-center">
          <div class="service_container">
            <a style="text-decoration:none" href="/best-prices" target="_blank" >
            <div class="service_outer">
              <div class="service_inner">
                  <img class="service_img" :src="base_url+'images/basic_img/best_price.jpg'" >
                <!-- <i class="fa fa-repeat service_icon"> </i> -->

              </div>
            </div>
            <h4>Best Prices </h4>
            <p> Guarented </p>
            </a>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 text-center">
          <div class="service_container">
            <a  style="text-decoration:none" href="/payments/info" target="_blank" >
            <div class="service_outer">
              <div class="service_inner">
                   <!-- <i class="fa fa-credit-card service_icon"> </i> -->
                  <img class="service_img" :src="base_url+'images/basic_img/secure.png'" >
              </div>
            </div>
            <h4>Secure Payment</h4>
            <p>Multiple safe payment methods</p>
             </a>
          </div>
        </div>

         <div class="col-md-3 col-sm-6 text-center">
          <div class="service_container">
            <a  style="text-decoration:none" href="/stiching/service" target="_blank" >
            <div class="service_outer">
              <div class="service_inner">
               <img class="service_img" :src="base_url+'images/basic_img/stiching.png'" >
                <!-- <i class="fa fa-truck service_icon"> </i> -->
              </div>
            </div>
            <h4> Stitching Service </h4>
            <p>  Customized </p>
           </a>
          </div>
        </div>
      </div>

    </div>

    <frontend-footer></frontend-footer>
    <quick-view
      v-if="quick_v_product_id"
      v-on:clicked="closedModal($event)"
      :quick_v_p_id="quick_v_product_id"
    >
    </quick-view>
  </div>
</template>

<script>
import Vue from "vue";
import FlipCountdown from "vue2-flip-countdown";
import Loading from "vue-loading-overlay";
import "vue-loading-overlay/dist/vue-loading.css";
import carousel from "vue-owl-carousel";
import VueHorizontalList from "vue-horizontal-list";
Vue.use(Loading);
import VueDisplacementSlideshow from "vue-displacement-slideshow";
export default {

  data() {
    return {
      loading: true,
      page: 1,
      offers: [],
      product_id: null,
      base_url: this.$store.state.image_base_link,
      product_thumbnail_link: this.$store.state.image_thumbnail_link,
      isScroll: 0,
      quick_v_product_id: "",
      o_modal: false,
      // home_page_products: [],
      new_arrival_products: "",
      trending_now_products: "",
      sub_categories: "",
      best_selling_options: {
        responsive: [
          { end: 450, size: 2 },
          { start: 450, end: 769, size: 2 },
          { start: 770, end: 992, size: 4 },
          { size: 4 },
        ],
        list: {
          windowed: 600,
          padding: 24,
        },
        position: {
          start: 0,
        },
        autoplay: {
          play:true,
          speed: 3600,
          repeat: true,
        },
      },
      new_arrival_options: {
        responsive: [
          { end: 450, size: 2 },
          { start: 450, end: 769, size: 2 },
          { start: 770, end: 992, size: 4 },
          { size: 4 },
        ],
        list: {
          windowed: 600,
          padding: 24,
        },
        position: {
          start: 0,
        },
        autoplay: {
          play: true,
          speed: 3600,
          repeat: true,
        },
      },
      trending_now_options: {
          responsive: [
            { end: 450, size: 2 },
            { start: 450, end: 769, size: 2 },
            { start: 770, end: 992, size: 4 },
            { size: 4 },
          ],
          list: {
            windowed: 600,
            padding: 24,
          },
          position: {
            start: 0,
          },
          autoplay: {
            play:true,
            speed: 3600,
            repeat: true,
          },
      },
      sub_categories_options: {
          responsive: [
            { end: 450, size: 2 },
            { start: 450, end: 769, size: 2 },
            { start: 770, end: 992, size: 4 },
            { size: 4 },
          ],
          list: {
            windowed: 600,
            padding: 24,
          },
          position: {
            start: 0,
          },
          autoplay: {
            play:true,
            speed: 3600,
            repeat: true,
          },
        },
    };
  },
  methods: {

      addToCart(slug) {
      axios
        .get("/_public/addToCart", {
          params: {
            slug: slug,
            quantity: 1,
          },
        })
        .then((resp) => {
        //  console.log(resp);
          if (resp.data.status == "SUCCESS") {
              this.$toasted.show(resp.data.message, {
              position: "top-center",
              type: "success",
              duration: 2000,
            });
            this.$store.dispatch("getCartContent");
          } else if (resp.data.status == "error") {
            this.$toasted.show(resp.data.message, {
              position: "top-center",
              type: "error",
              duration: 4000,
            });
          }
        })

    },

     buyNow(slug) {
      axios
        .get("/_public/addToCart", {
          params: {
            slug:slug,
            quantity: 1,
          },
        })
        .then((resp) => {
         // console.log(resp);
          if (resp.data.status == "SUCCESS") {
              this.$store.dispatch("getCartContent");
              this.$toasted.show(resp.data.message, {
              position: "bottom-left",
              type: "success",
              duration: 2000,
            });
           this.$router.push({ name: "Chekout" });
          } else if (resp.data.status == "error") {
            this.$toasted.show(resp.data.message, {
              position: "top-center",
              type: "error",
              duration: 4000,
            });
          }
        })
    },
    newArrivalProducts() {
      axios.get("/_public/products")
      .then((resp) => {
      //  console.log(resp);
        this.new_arrival_products = resp.data.new_arrival_products;
        this.trending_now_products = resp.data.trending_now_products;
        this.sub_categories = resp.data.sub_categories;
      });
    },

    handleScrol() {
      this.isScroll = 1;
    },

    productDetals(product_id) {
      this.prdoct_modal = true;
      this.product_id = product_id;
    },
    closedModal(close) {
      this.quick_v_product_id = "";
    },
    showCategoryName(id) {
      var x = document.getElementById("subCategoryNameView" + id);
      x.classList.toggle("displayeBlok");
    },
    init() {
    //We loop through all our images by calling the 'next' method of our component every 2 seconds

     setInterval(() => {
        if (this.offer_banner.length > 1) {
           this.$refs.slideshowLeft.next();
        }
      }, 2000);


     setInterval(() => {
        if (this.offer_banner.length > 3) {
            this.$refs.slideshowMiddle.next();
        }
     }, 2500);

     setInterval(() => {
        if (this.offer_banner.length > 5) {
           this.$refs.slideshowRight.next();
        }
      }, 5000);

  }
},
  components: {
    Loading,
    carousel,
    FlipCountdown,
    VueHorizontalList,
    VueDisplacementSlideshow,
  },
  created() {
    window.scrollTo(0,0);
    window.addEventListener("scroll", this.handleScrol);
    this.$store.dispatch("category");
    this.$store.dispatch("sliders");
    this.$store.dispatch("sale_campaign");
    this.newArrivalProducts();

  },
  mounted(){
    this.init();
  },
  computed: {
      offerBannersLeft() {
          return [
            this.base_url+this.offer_banner[0].image,
            this.base_url+this.offer_banner[1].image,
          ];
      },

     offerBannersMiddle() {
            return [
              this.base_url+this.offer_banner[2].image,
              this.base_url+this.offer_banner[3].image,
            ];
        },

     offerBannersRight() {
            return [
              this.base_url+this.offer_banner[4].image,
              this.base_url+this.offer_banner[5].image,
            ];
        },

    banner() {
      return this.$store.getters.banner;
    },
    offer_banner() {
        return this.$store.getters.offer_banner;
      },
    category() {
      return this.$store.getters.categories;
    },
    slider_banner() {
      return this.$store.getters.slider_banner;
    },
    best_selling_produtcs() {
      return this.$store.getters.best_selling_produtcs;
    },
    sliders() {
      return this.$store.getters.sliders;
    },

    sale_campaign() {
      return this.$store.getters.sale_campaign;
    },
  },

};

//show sub  menu in mobile menu
document.addEventListener("DOMContentLoaded", () => {
  //set a time our function. this function call after 2 sec on domloaded
  setTimeout(() => {
    //find the click element
    let sub_menu = document.getElementsByClassName("show-sub");

    for (let i = 0; i < sub_menu.length; i++) {
      //set a click event
      sub_menu[i].addEventListener("click", function () {
        let show_sub_menu =
          sub_menu[i].parentElement.querySelector(".left-sub-menu");
        //set active class
        show_sub_menu.classList.toggle("nav-active");
        sub_menu[i].classList.toggle("fa-minus");
      });
    }
  }, 2000);
});
</script>


