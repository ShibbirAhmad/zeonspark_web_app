<template>
  <div class="wrapper-wide">
    <loading :active.sync="isLoading" :can-cancel="true" :is-full-page="fullPage"></loading>
    <frontend-header></frontend-header>
    <div id="container" v-if="!isLoading">
      <div class="container">
        <div class="single-product-box" >
          <div class="row">

            <div class="col-lg-5 col-md-5 col-xs-12">

                <div class="product-image-viewer"  >

                  <image-zoom v-if="zooming_img.length"
                    :regular="zooming_img"
                    img-class="single_product_image"
                    >
                  </image-zoom>
                  </div>

              <div class="preview_img_box_container">
               <div v-for="(image,index) in product_images" :key="index" :class="{__active_border :index==0}" class="__preview_image_box">
                  <img    @click="displayeImageFromBox"
                          class="__preview_img"
                          :src="base_url+image.product_image"
                    />
              </div>
             </div>

            </div>

            <div class="col-lg-4 col-md-4 col-xs-12">
               <ul class="list-unstyled description">

                  <li>

                    <h3 class="title" >{{ product.name }}</h3>

                  </li>

                   <li>
                      <div class="s_price_container_1">
                            <h4> Price:  </h4>
                            <p>
                                &#2547;{{product.price}}
                            </p>
                      </div>
                      <div v-if="product.discount" class="s_price_container_2">
                           <h4> Old Price: </h4>
                             <p>
                                 &#2547;{{product.sale_price}}
                              </p>
                        </div>

                         <div v-if="product.discount" class="s_price_container_3">
                           <h4> You Save : </h4>
                              <p>
                                {{ ((product.discount/product.sale_price)*100).toFixed(0) }}% <span>off</span>
                              </p>
                        </div>

                    </li>

                    <li>
                      <h4 class="p_code">
                        Product Code: <span> {{ product.product_code }} </span>
                      </h4>
                    </li>

                  </ul>

                  <div id="product">
                    <div class="row">

                      <div class="col-lg-12 col-md-12 col-xs-12" v-if="product.product_variant.length>0 && product.product_attribute">

                        <div class="ps-product__variations">
                            <div class="pr_switch_wrap">
                                <div class="product-attributes">

                                  <div v-if="product.product_attribute.attribute.name.toLowerCase()=='size'" class="text-swatches-wrapper attribute-swatches-wrapper attribute-swatches-wrapper form-group product__attribute product__color"
                                      data-type="text">
                                      <label class="attribute-name">Size</label>
                                      <div class="attribute-values">
                                          <ul class="text-swatch attribute-swatch color-swatch">
                                                  <li v-for="(variant,index) in product.product_variant" :key="index"
                                                      class="attribute-swatch-item pe-none">
                                                      <div>
                                                          <label>
                                                              <input class="product-filter-item variant_size"
                                                                  type="radio" v-model="cart.variant_id" name="size"
                                                                  :value="variant.variant.id" >
                                                              <span>{{ variant.variant.name }}</span>
                                                          </label>
                                                      </div>
                                                  </li>

                                          </ul>
                                      </div>
                                  </div>
                                </div>
                            </div>
                        </div>


                      </div>
                       <div class="col-lg-12 col-md-12 col-xs-12">
                        <div class="qty_container">
                          <h4 >
                            <b>Quantity</b>
                          </h4>

                          <div @click="dicrementQty" class="incrementor_plus">
                             <i  class="fa fa-minus"></i>
                          </div>

                              <input
                              type="text"
                              name="quantity"
                              v-model="cart.quantity"
                              value="1"
                              style="height: 36px !important;width:210px;"
                              class="form-control input_qty"
                              @change="validation"
                              @keyup="validation"
                            />
                           <div @click="incrementQty" class="incrementor_minus">
                             <i  class="fa fa-plus"></i>
                          </div>

                        </div>
                      </div>
                    </div>

                    <div class="row">


                      <div class="col-lg-5 col-md-5">
                        <button
                          @click.prevent="buyNow"
                          type="button"
                          style="background:#ffd700;color:#000"
                          class="btn  btn-lg btn-block btn_buy_cart"
                          >Buy Now</button>
                      </div>

                       <div class="col-lg-5 col-md-5">

                         <button
                          @click.prevent="CartToAdd"
                          type="button"
                          class="btn btn-primary btn-lg btn-block btn_buy_cart"
                          >
                         <span>Add To Cart</span>
                        </button>

                      </div>
                    </div>

                  </div>
            </div>

            <div class="col-lg-3 col-md-3 col-xs-12">

                <div class="single_p_right_section">
                    <ul>
                      <li>
                      <div class="social_media_share">
                        <facebook  style="cursor:pointer" :url="'https://zeonspark.com/'+product.slug" scale="2"></facebook>
                        <linkedin style="cursor:pointer"  :url="'https://zeonspark.com/'+product.slug"  scale="2"></linkedin>
                        <whats-app style="cursor:pointer" :url="'https://zeonspark.com/'+product.slug"  title="Hello" scale="2"></whats-app>
                        <pinterest style="cursor:pointer" :url="'https://zeonspark.com/'+product.slug"  scale="2"></pinterest>
                        <a  style="cursor:pointer" href="https://www.instagram.com"> <i class="fa fa-instagram instagram_share_icon"></i> </a>
                      </div>
                      </li>
                      <li><i class="fa fa-phone "></i> Hotline:  <a  :href="'tel:'+general_setting.header_contact_number"> {{ general_setting.header_contact_number }}</a>  </li>
                      <li><i class="fa fa-headphones"></i> Dedicated Support <br> <small>9:00 AM - 10:00 PM</small> </li>

                      <li> <i class="fa fa-thumbs-up "></i> Quality Product </li>
                      <li> <i class="fa fa-eye-slash "></i> 100% Secure  Payment </li>
                      <li> <i class="fa fa-truck "></i> Inside  Dhaka <br><small>1-3 working days delivery</small> </li>
                      <li> <i class="fa fa-truck "></i> Outside  Dhaka <br><small>3-5 working days delivery</small> </li>
                      <li> <i class="fa fa-handshake-o "></i> Cash On Delivery </li>
                      <li> <i class="fa fa-credit-card "></i> Payment Gateway </li>
                    </ul>
                 </div>


            </div>

         </div>
        </div>

          <div class="product-details-tabe">
               <ul class="details-tab-menu-list">
                  <li class="details-tab-menu-item"  @click="tab_content=1" :class="{'tab-menu-item-active':tab_content==1}">Details</li>
                  <li class="details-tab-menu-item"  @click="tab_content=2" :class="{'tab-menu-item-active':tab_content==2}" >Spacification</li>
                  <li class="details-tab-menu-item"  @click="tab_content=3" :class="{'tab-menu-item-active':tab_content==3}">Size  Chart</li>
                  <li class="details-tab-menu-item"  @click="tab_content=4" :class="{'tab-menu-item-active':tab_content==4}">Delivery Policy</li>
                 </ul>
              <div class="product-tab-content">
                <div v-html="product.details" class="product-details" :class="{block:tab_content==1}"></div>
                <div v-html="product.specification" class="product-details"  :class="{block:tab_content==2}"> </div>
                <div v-html="product.size_chart" class="product-details"  :class="{block:tab_content==3}"></div>
                <div v-html="product.delivery_policy" class="product-details" :class="{block:tab_content==4}"></div>
              </div>
              </div>


       <div v-if="related_products.length" class="new_arrival_section">
        <div class="row">
         <h4 class="arrival_heading">Related Products</h4>
          <vue-horizontal-list
            :items="related_products"
            :options="related_products_options"
          >
            <template v-slot:default="{ item }">
              <div class="col-lg-3 col-md-3 small_width">
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
                          >{{ item.name.substring(0,20) }}
                          <span v-if="item.name.length >20"> ... </span>
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
                        <a v-else @click="CartToAdd(item.slug)" >Add To Cart</a>

                       <router-link  v-if="item.product_attribute" :to="{ name:'single',params:{ slug: item.slug }}" >Buy Now </router-link>
                       <a  v-else  @click="buyNow(item.slug)" >Buy Now </a>
                    </div>
                  </div>
                </div>
              </div>
            </template>
          </vue-horizontal-list>
        </div>
      </div>




      </div>
    </div>
    <frontend-footer></frontend-footer>
      <quick-view v-if="quick_v_product_id" v-on:clicked="closedModal($event)" :quick_v_p_id="quick_v_product_id">  </quick-view>

  </div>

</template>


<script>

import Loading from "vue-loading-overlay";
import "vue-loading-overlay/dist/vue-loading.css";
import Swal from 'sweetalert2' ;
import VueHorizontalList from "vue-horizontal-list";
import imageZoom from 'vue-image-zoomer';
import {Facebook,Linkedin,Pinterest,WhatsApp, Email,Google} from "vue-socialmedia-share";

export default {
  beforeCreated() {
    this.validation();
    this.$store.dispatch("general_setting");
    setTimeout(() => {
      this.validation();
    }, 200);
  },
  data() {
    return {
      isLoading: true,
      fullPage: true,
      disabled: true,
      variant_index: "",
      base_url: this.$store.state.image_base_link,
      product_thumbnail_link: this.$store.state.image_thumbnail_link,
       cart: {
        product_id: "",
        variant_id: "",
        attrribute_id: "",
        quantity: 1,
      },
      related_products:"",
      related_products_options: {
          responsive: [
            { end: 450, size: 2 },
            { start: 450, end: 768, size: 2 },
            { start: 768, end: 992, size: 4 },
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
      tab_content:1,
      quick_v_product_id:"",
      o_modal:false,
      zooming_img:''
    };
  },
  methods: {

    displayeImageFromBox(e){
      let target_element = e.target;
      let active_images = document.getElementsByClassName("__active_border");

      if (active_images.length > 0) {
        for (let i = 0; i < active_images.length; i++) {
          active_images[i].classList.remove("__active_border");
        }
      }

         target_element.classList.add("__active_border");
         this.zooming_img=target_element.src

    },


    dicrementQty(){
      if (this.cart.quantity > 1) {
          let qty = this.cart.quantity
          this.cart.quantity= qty - 1 ;
      }
    },
     incrementQty(){
          let qty = this.cart.quantity
          this.cart.quantity= qty + 1 ;
    },

    CartToAdd() {
      if (this.product.product_variant.length > 0 ) {
         this.cart.attrribute_id = this.product.product_attribute.attribute.id ;
        if (this.cart.variant_id < 1) {
             Swal.fire({
                position: 'top-center',
                icon: 'error',
                title: 'please,select product '+this.product.product_attribute.attribute.name,
                showConfirmButton: false,
                timer: 1500
              })
            return ;
        }
      }
      axios
        .get("/_public/addToCart", {
          params: {
            slug: this.$route.params.slug,
            attribute_id: this.cart.attrribute_id,
            variant_id: this.cart.variant_id,
            quantity: this.cart.quantity,
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
        .then((error) => {
          // console.log(error);
        });
    },
     buyNow() {
       if (this.product.product_variant.length > 0 ) {
         this.cart.attrribute_id = this.product.product_attribute.attribute.id ;
        if (this.cart.variant_id < 1) {
             Swal.fire({
                position: 'top-center',
                icon: 'error',
                title: 'please,select product '+this.product.product_attribute.attribute.name,
                showConfirmButton: false,
                timer: 1500
              })
            return ;
        }
      }
      axios
        .get("/_public/addToCart", {
          params: {
            slug: this.$route.params.slug,
            attribute_id: this.cart.attrribute_id,
            variant_id: this.cart.variant_id,
            quantity: this.cart.quantity,
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
        .then((error) => {
          // console.log(error);
        });
     },
    validation() {
      if (this.cart.quantity < 1) {
        this.cart.quantity = 1;
        alert("Quantity at least 1");
        return;
      }
      if (this.product.product_attribute) {
        if (this.cart.attrribute_id < 1) {
          this.disabled = true;
        } else {
          this.disabled = false;
        }
      } else {
        this.disabled = false;
      }
    },
    SelectVaraint() {
     // this.product.product_variant.length=0;
      let index = this.variant_index;
      let variant_id = this.product.product_variant[index].variant_id;
      let attribute_id = this.product.product_variant[index].variant.attribute_id;
      this.cart.attrribute_id = attribute_id;
      this.cart.variant_id = variant_id;
      this.validation();
    },

    getRelatedProducts() {
      axios.get("/_public/related/products/"+this.$route.params.slug)
      .then((resp) => {
            this.related_products= resp.data ;
        })
    },

  closedModal(close){
       this.quick_v_product_id="";
    },




  },

  created() {

    this.getRelatedProducts();
    this.$store.dispatch("product_images", this.$route.params.slug);
    this.$store.dispatch("single_product", this.$route.params.slug);
    this.$store.dispatch("user");

  },

  computed: {
    product() {
      return this.$store.getters.single_product;
    },
     general_setting() {
      return this.$store.getters.general_setting;
    },

    product_images(){

      return this.$store.getters.product_images;
    },
     user() {
      return this.$store.getters.user;
    },

  },

  components: {
    Loading,
    VueHorizontalList,
    imageZoom,
    Facebook,Linkedin,Pinterest,WhatsApp, Email,Google
  },

  watch:{
    product_images:function(value){
      // console.log(value);
      if(Object.keys(value).length>0){
          this.isLoading=false;
      }
    },
     product: function (value) {
        if(value.product_image.length>0){
            this.zooming_img=this.base_url+value.product_image[0].product_image;
        }
    },
  }
};
</script>

<style scoped>
img.responsive-image.preview-box {
  width: 350px !important;
  height: 350px !important;

}

.product-details-tabe {
  margin-top: 20px;
}


.btnQuick:hover{

   background: #ff4d03;

}

.v-lazy-image {
  filter: blur(1px);
  transition: filter 0.5s;
}
.v-lazy-image-loaded {
  filter: blur(0);
}


</style>

