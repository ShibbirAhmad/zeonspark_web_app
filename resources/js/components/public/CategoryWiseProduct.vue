<template>
  <div class="wrapper-wide">
    <frontend-header></frontend-header>
    <div id="container">
      <div class="container">
        <div class="slider slider-animation bv xz">
          <div class="row">
            <div class="col-lg-12">
              <carousel
                v-if="category_sliders"
                :items="1"
                :nav="false"
                :autoplay="true"
                :autoplayTimeout="2000"
              >
                <a
                  v-for="slider in category_sliders"
                  :href="slider.url"
                  :key="slider.id"
                >
                  <img :src="base_url + slider.image" />
                </a>
              </carousel>
            </div>
          </div>
        </div>

        <!-- Breadcrumb Start-->
        <ul class="breadcrumb">
          <li
            v-for="category in category"
            v-if="category.slug == $route.params.slug"
          >
            <router-link
              :to="{ name: 'PublcaCategory', params: { slug: category.slug } }"
            >
              <i class="fa fa-home"></i>

              {{ category.name }}
            </router-link>
          </li>
        </ul>

        <!-- Breadcrumb End-->
        <div class="row">
          <!--Left Part Start -->
          <aside id="column-left" class="col-sm-3">
            <div class="categories hidden-xs bg-white shadow c-box">
              <h3 class="subtitle">Other's Categories</h3>
              <div class="box-category">
                <ul id="cat_accordion">
                  <li
                    v-for="category in category"
                    v-if="category.slug != $route.params.slug"
                  >
                    <router-link
                      :to="{
                        name: 'PublcaCategory',
                        params: { slug: category.slug },
                      }"
                      >{{ category.name }}</router-link
                    >
                  </li>
                </ul>
              </div>
            </div>

            <div class="search-box hidden-xs bg-white shadow c-box">
              <h3 style="margin-left: 20px" class="subtitle">
                filter by price
              </h3>
              <form @submit.prevent="priceFilter">
                <div class="row">
                  <div class="col-md-6 col-sm-6">
                    <label for="min-price">min-price</label>
                    <input
                      class="form-control"
                      v-model="price_filter.min_price"
                      placeholder="00.00"
                      type="number"
                      name=""
                    />
                  </div>
                  <div class="col-md-6 col-sm-6">
                    <label for="max-price">max-price</label>
                    <input
                      class="form-control"
                      v-model="price_filter.max_price"
                      placeholder="max-price"
                      type="number"
                      name=""
                    />
                  </div>
                </div>
                <br />
                <button type="submit" class="btn btn-block btn_search">
                  Filter <i class="fa fa-lg fa-filter"></i>
                </button>
              </form>

              <div style="margin-top: 20px" class="sort-box">
                <select
                  v-model="sort_by_price"
                  @change="price_sorting_asec_desc"
                  class="form-control"
                >
                  <option value="select_by" disabled>Select Best Match</option>
                  <option value="1">price less to high</option>
                  <option value="2">price high to less</option>
                </select>
              </div>
            </div>
          </aside>

          <div id="content" class="col-sm-9">
           <div class="row">
            <div class="col-lg-4 custom_padding col-sm-4 col-md-4 col-xs-6  " v-for="product in products" :key="product.id">
            <div class="product-card ">
              <div class="product-card-body">
                <router-link :to="{name: 'single', params: { slug: product.slug } }">

                 <img :src="  product_thumbnail_link + product.thumbnail_img "  :alt="product.name" />

                </router-link>
                <div class="product-detail ">
                  <h4>   <router-link class="product-link" :to="{name: 'single', params: { slug: product.slug } }">{{ product.name.substring(0,20) }}
                         <span v-if="product.name.length > 20">...</span></router-link ></h4>
                  <p class="price">
                    <span class="price-new"> &#2547;{{
                      product.price
                    }}</span>
                    <span
                      class="price-old"
                      v-if="product.discount"
                      > &#2547;{{ product.sale_price }}</span
                    >

                  </p>
                </div>
              </div>
              <div class="product-card-footer">
                <div class="new_arrival_card_footer">
                       <router-link  v-if="product.product_attribute" :to="{ name:'single',params:{ slug: product.slug }}" > Add To Cart </router-link>
                        <a v-else @click="addToCart(product.slug)" >Add To Cart</a>

                       <router-link  v-if="product.product_attribute" :to="{ name:'single',params:{ slug: product.slug }}" >Buy Now </router-link>
                       <a  v-else  @click="buyNow(product.slug)" >Buy Now </a>
                </div>
              </div>
            </div>
          </div>
              <infinite-loading @infinite="categoryWiseProduct">
                <div slot="no-more"></div>
              </infinite-loading>
            </div>
          </div>
        </div>
  </div>
  <frontend-footer></frontend-footer>
      <quick-view v-if="quick_v_product_id" v-on:clicked="closedModal($event)" :quick_v_p_id="quick_v_product_id">  </quick-view>
  </div>
  </div>
</template>
<script>
import carousel from "vue-owl-carousel";

export default {
  created() {
    window.scrollTo(0, 0);

    this.$Progress.start();
    setTimeout(() => {
      this.$Progress.finish();
    }, 500);
  },
  data() {
    return {
      products: [],
      category_name: "",
      page: 1,
      price_page: 1,

      price_filter: {
        min_price: "",
        max_price: "",
      },
       base_url: this.$store.state.image_base_link,
       product_thumbnail_link: this.$store.state.image_thumbnail_link,
       sort_by_price: "select_by",
       quick_v_product_id:"",
       o_modal:false
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

    categoryWiseProduct($state) {
      axios
        .get("/_public/category/wise/product/?page=" + this.page, {
          params: {
            slug: this.$route.params.slug,
          },
        })
        .then((resp) => {
        // console.log(resp);
          if (resp.data.data.length) {
            this.page += 1;
            this.products.push(...resp.data.data);
            $state.loaded();
          } else {
            $state.complete();
          }
        })
    },

    priceFilter($state) {
      this.$Progress.start();
      let max_price = this.price_filter.max_price;
      let min_price = this.price_filter.min_price;
      let products = [];

      this.products.forEach((product) => {
        if (product.price >= min_price && product.price <= max_price) {
          products.push(product);
        }
      });
      if (products.length > 0) {
        this.products = products;
      } else {
        Swal.fire({
          type: "warning",
          text: " ): no produtc found......",
          duration: 3000,
        });
      }
      this.$Progress.finish();
    },
    price_sorting_asec_desc() {

       axios.get('/_public/api/sort/product/according/to/asc/desc',{
           params:{
              sort_value : this.sort_by_price ,
               slug:   this.$route.params.slug ,

           }
       })
       .then(resp => {
        this.products=[];
       this.products.push(...resp.data.products);
       })
     .catch()
  },

  closedModal(close){
       this.quick_v_product_id="";
    }

  },
  computed: {
    category() {
      return this.$store.getters.categories;
    },
    category_sliders() {
      return this.$store.getters.category_sliders;
    },
  },

  mounted() {
    //for get category from vuex
    this.$store.dispatch("category");
    this.$store.dispatch("category_sliders",this.$route.params.slug);
  },
  components: {
    carousel
  }
};
</script>

<style >
.search-box {
  margin-top: 20px;
}

.btn_search {
  background: #ff4d03;
  color: #fff;
  border: 1px dashed;
}



</style>