<template>
  <div>
    <admin-main></admin-main>
    <div class="content-wrapper">
      <section class="content-header">
        <h1>
          <router-link :to="{ name: 'order' }" class="btn btn-primary btn-sm">
            <i class="fa fa-arrow-right"></i>
          </router-link>
          <a href="#sg-product" class="btn btn-success btn-sm">  <i class="fa fa-arrow-down"></i></a>
        </h1>
        <ol class="breadcrumb">
          <li>
            <a href="#"> <i class="fa fa-dashboard"></i>Dashboard </a>
          </li>
          <li class="active">Order</li>
        </ol>
      </section>
      <section class="content">
         <form @submit.prevent="searchProduct" id="searchProductform">

         </form>
        <form @submit.prevent="add" @keydown="form.onKeydown($event)">
          <div class="row justify-content-center">
            <div
              class="alert alert-danger alert-dismissible"
              v-if="errors.length"
              role="alert"
            >
              <ul>
                <div v-for="error in errors">
                  <li>{{ error }}</li>
                  <br />
                </div>
              </ul>
            </div>
            <div class="col-lg-4">
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title">Customer information</h3>
                </div>
                <div class="box-body">
                  <div class="form-group">
                    <label>Customer_mobile</label>
                    <input
                      type="text"
                      name="customer_mobile"
                      class="form-control"

                      autocomplete="off"
                      placeholder="Enter customer 11 digit mobile number"
                      v-model="form.customer_mobile"
                      @keyup="searchCustomer"
                      :class="{
                        'is-invalid': form.errors.has('customer_mobile'),
                      }"
                    />
                    <has-error :form="form" field="customer_mobile"></has-error>
                  </div>

                  <div class="form-group">
                    <label>Name</label>
                    <input
                      type="text"
                      name="name"
                      class="form-control"

                      autocomplete="off"
                      placeholder="Name"
                      v-model="form.customer_name"
                      :class="{
                        'is-invalid': form.errors.has('customer_name'),
                      }"
                    />
                    <has-error :form="form" field="customer_name"></has-error>
                  </div>

                  <div class="form-group">
                    <label>Address</label>
                    <input
                      type="text"
                      name="address"
                      class="form-control"
                      autocomplete="off"
                      placeholder="address"
                      v-model="form.customer_address"
                      :class="{
                        'is-invalid': form.errors.has('customer_address'),
                      }"
                    />
                    <has-error
                      :form="form"
                      field="customer_address"
                    ></has-error>
                  </div>

                  <div class="form-group">
                    <label>City</label>
                    <select name="city" class="form-control" v-model="form.city" @change="selectCity" :class="{ 'is-invalid': form.errors.has('city') }" >
                      <option>select city</option>
                      <option v-for="city in cities" :value="city.id">
                        {{ city.name }}
                      </option>
                    </select>
                    <has-error :form="form" field="city"></has-error>
                  </div>
                     <div class="form-group">
                    <label>Sub City</label>
                    <select class="form-control" name="sub_city"  :class="{ 'is-invalid': form.errors.has('sub_city') }" v-model="form.sub_city">
                      <option disabled value="">select sub city</option>
                      <option v-if="sub_cities.length > 0 " v-for="sub_city in sub_cities" :key="sub_city.id" :value="sub_city.id">{{sub_city.name}}</option>
                    </select>
                                        <has-error :form="form" field="sub_city"></has-error>

                  </div>

                  <div class="form-group">
                    <label>Shipping_cost</label>
                    <input
                      type="text"
                      name="shipping_cost"
                      class="form-control"
                      v-model="form.shipping_cost"
                      :class="{
                        'is-invalid': form.errors.has('shipping_cost'),
                      }"
                    />
                    <has-error :form="form" field="shipping_cost"></has-error>
                  </div>

                  <div class="form-group">
                    <label>Courier</label>
                    <select
                      name="courier"
                      v-model="form.courier"
                      class="form-control"
                      :class="{ 'is-invalid': form.errors.has('courier') }"
                    >
                      <option value>select courier</option>
                      <option v-for="courier in couriers" :value="courier.id">
                        {{ courier.name }}
                      </option>
                    </select>
                    <has-error :form="form" field="courier"></has-error>
                  </div>

                  <div class="form-group">
                    <label>Status</label>
                    <select
                      name="status"
                      v-model="form.status"
                      class="form-control"
                    >
                      <option value="3">Approved</option>
                      <option value="2">Pending</option>
                    </select>
                  </div>

                  <!-- <div class="form-group">
                    <label>Order_type</label>
                    <select
                      name="status"
                      v-model="form.order_type"
                      class="form-control"
                    >
                      <option value="2">Admin Order</option>
                      <option value="3">Whole sale</option>
                    </select>
                  </div> -->
                </div>
              </div>
            </div>


            <div class="col-lg-8">
              <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title">Product information</h3>
                </div>
                <div class="box-body">
                  <div class="form-group">
                    <label>Scan Barcode || prodcut code</label>
                    <input
                      type="text"
                      name="name"
                      class="form-control"
                      autofocus
                      autocomplete="off"
                      placeholder="Enter Product Code"
                      form="searchProductform"
                      v-model="product_code"
                    />
                  </div>

                  <div class="row">
                    <div class="col-lg-12">
                      <table class="table table-hover table-bordered table-striped ">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>Product</th>
                            <!-- <th>Attribute</th> -->
                            <th>Variant</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>total</th>
                            <th>Remove</th>
                          </tr>
                        </thead>
                        <tbody v-if="products.length > 0">
                          <tr v-for="(product, index) in products" :key="index">
                            <td  style="width:10px" >{{ index }}</td>
                            <td>
                              {{ product.name + "-" + product.product_code }}
                              <input type="hidden" :value="product.id" />
                            </td>

                            <td>
                              <select
                                class="form-control"
                                v-model="form.products[index].variant_id"
                                style="width: 80px"
                              >
                                <option value>select variant</option>
                                <option
                                  v-if="product.variants"
                                  v-for="(product_variant, index) in product.variants"
                                  :key="index"
                                  :value="product_variant.variant.id"
                                >
                                  {{ product_variant.variant.name }}
                                </option>
                              </select>
                            </td>
                            <td>
                              <input
                                type="number"
                                v-model="form.products[index].quantity"
                                @keyup="quantity(index)"
                                @change="quantity(index)"
                                style="width: 70px"
                              />
                              <span class="badge badge-danger">{{ product.stock }}</span>
                            </td>
                            <td >
                              <input style="width: 80px"
                                v-model="form.products[index].price"
                                @keyup="totalCalculation && quantity(index)"
                                v-if="form.order_type == 3"
                              />
                              <strong v-else>{{ product.price }}</strong>
                            </td>
                            <td>{{ form.products[index].total }}</td>
                            <td>
                              <a class="btn btn-danger btn-sm" @click="remove(index)"
                                ><i class="fa fa-trash"></i
                              ></a>
                            </td>
                          </tr>
                          <tr v-if="products.length > 0">
                            <td colspan="4"></td>
                            <td>Total Amount</td>
                            <td colspan="2">{{ form.total }}</td>
                          </tr>
                          <tr v-if="products.length > 0">
                            <td colspan="4"></td>
                            <td>Discount</td>
                            <td colspan="2">
                              <input
                                class="form-control"
                                @keyup="totalCalculation"
                                v-model="form.discount"
                                placeholder="0"
                              />
                            </td>
                          </tr>
                          <tr v-if="products.length > 0">
                            <td colspan="4"></td>
                            <td>Paid</td>
                            <td colspan="2">
                              <input
                                v-model="form.paid"
                                @keyup="totalCalculation"
                                class="form-control"
                                placeholder="0"
                              />
                            </td>
                          </tr>
                           <tr>
                            <td colspan="4"></td>
                            <td>Paid By</td>
                            <td colspan="2">
                              <div class="form-group">
                                <select class="form-control" v-model="form.paid_by">
                                    <option value="select one" disabled>select one</option>
                                    <option v-for="(balance,index) in balance" :key="index" :value="balance.id" > {{ balance.name }} </option>
                                  </select>
                                <has-error :form="form" field="paid_by"></has-error>
                              </div>
                            </td>
                          </tr>

                          <tr v-if="products.length > 0">
                            <td colspan="4"></td>
                            <td>Shipping_charge</td>
                            <td colspan="2">{{ form.shipping_cost }}</td>
                          </tr>
                          <tr v-if="products.length > 0">
                            <td colspan="4"></td>
                            <td>Amoutn due</td>
                           <td colspan="2">{{ form.due }}</td>
                          </tr>

                          <button
                            class="btn btn-success"
                            style="margin-top: 12px"
                            type="submit"
                            :disabled="form.busy"
                          >
                            Submit
                          </button>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </form>

      </section>
    </div>
  </div>
</template>


<script>
import Vue from "vue";
import { Form, HasError, AlertError } from "vform";
import datePicker from "vue-bootstrap-datetimepicker";
import Loading from "vue-loading-overlay";
import "vue-loading-overlay/dist/vue-loading.css";
Vue.use(Loading);
Vue.component(HasError.name, HasError);

export default {
  name: "Add",
  created() {
    this.others();
    this.balanceList() ;
  },
  data() {
    return {
      form: new Form({
        customer_mobile: "",
        customer_name: "",
        customer_address: "",
        city: "",
        courier: "",
        products: [],
        shipping_cost: 0,
        status: 2,
        courier: "",
       total:0,
        discount:0,
        paid:0,
        due: 0,
        order_type: 3,
        paid_by: "select one",
        sub_city:""
      }),
       balance:'',
      search_product_code: "",
      attribute_id: "",
      variant_id: "",
      product_code: "",
      city_id: "",
      courier_id: "",
      shipping_cost: "",
      products: [],
      product_attributes: null,
      product_variants: null,
      cities: null,
      couriers: null,
      product_quantity: 1,
      errors: [],
      product_per_page:10,
      base_link: this.$store.state.image_base_link,
      sub_cities:""
    };
  },

  //method initial for submit data
  methods: {

   getOrderStatistic(){
     axios.get('/api/get/order/statistic')
     .then((resp)=>{
          this.order_count = resp.data.order_count ;
     })
  },


  balanceList() {
      axios
        .get("/api/balance/list")
        .then((resp) => {
            this.balance = resp.data.balance;
        })
    },
    add() {
       if (typeof(this.form.paid_by)=='string') {
          alert('selecet any balance');
          return ;
      }
      //start progress bar when submit fomr
      this.$Progress.start();
      this.form
        .post("/create/order")
        .then((resp) => {
          console.log(resp);
          //only success resp
          if (resp.data.status == "SUCCESS") {
            //end progress bar when success resp
            this.$Progress.finish();

            this.$router.push({ name: "order" });
            this.$toasted.show(resp.data.message, {
              type: "success",
              position: "top-center",
              duration: 2000,
            });
            //other wise success, show a error
          } else {
            this.error = "Some thing want to wrong";
          }
        })
        .catch((error) => {
          this.errors = [];
          this.errors.push(error.response.data.errors);
          this.$Progress.finish();
        });
    },

    //method iniital for get other data to create order, like cit, courier and other.......
    others() {
      axios
        .get("/others")

        //success resp only
        .then((resp) => {
          if (resp.data.status == "SUCCESS") {
            this.cities = resp.data.cities;
            this.couriers = resp.data.couriers;
            this.loading = false;
          }
        })
        .catch((error) => {
          console.log(error);
        });
    },

    //method initial for search product
     searchProduct() {
      let length = this.product_code.length;
      console.log(length)
      //  alert(length)


      if (length==4) {
        this.$Progress.start();
        axios.get("/search/product/with/code/" + this.product_code)

          .then((resp) => {

            if (resp.data.status == "SUCCESS") {
                this.product_code="";
              let product = {
                id: "",
                price: "",
                quantity: 1,
                attribute_id: "",
                variant_id: "",
                total: "",
                stock:''
              };
              for (let i = 0; i < resp.data.product.length; i++) {
                // check the product stcok availity
                if (resp.data.product[i].stock <= 0) {
                  return Swal.fire({
                    type: "warning",
                    title: "Wopps....",
                    html: `${resp.data.product[i].name} - <strong> ${resp.data.product[i].product_code} </strong> in <b>stcok not available</b>.`,
                  });
                }

                this.products.push(resp.data.product[i]);
                product.id = resp.data.product[i].id;
                product.price = resp.data.product[i].price;
                product.total = resp.data.product[i].price;
                product.stock=resp.data.product[i].stock;
              //  console.log(resp.data.product)
               // this.suggested_products.data.unshift(resp.data.product[i])

              }
              this.form.products.push(product);
              this.totalCalculation();


            }
            //when not resp success
            else {
              this.$toasted.show(
                "Product not found with " + this.product_code,
                {
                  position: "top-center",
                  type: "danger",
                  duration: 2000,
                }
              );
            }
            this.$Progress.finish();
          })
          .catch((error) => {
            console.log(error);
            this.$Progress.finish();
          });
      }
    },

    //method initial search customer
    searchCustomer() {
      if (this.form.customer_mobile.length == 11) {
        axios
          .get(
            "/search/customer/with/phone/number/" + this.form.customer_mobile
          )
          .then((resp) => {
            //when com data from t resp
            if (resp.data) {
            if (resp.data.customer) {
                (this.form.customer_name = resp.data.customer.customer_name),
                  (this.form.customer_address = resp.data.customer.customer_address);
                this.form.city = resp.data.customer.city_id;
              }
              this.$toasted.show(resp.data.message, {
                type: "success",
                position: "top-center",
                duration: 4000,
              });
            }
          })
          .catch((error) => {
            //console.log(error);
          });
      }
    },

    //set product attribute
    attribute(index) {
      this.form.products[index].attribute_id = this.attribute_id;
    },
    //set product variant
    // variant(index) {
    //   this.form.products[index].variant_id = this.variant_id;
    // },
    //when chage qauntity
    quantity(index) {

      // if(parseInt(this.products[index].stock ) < parseInt(this.form.products[index].quantity)){
      //   alert(`max quantity ${this.form.products[index].stock}`)
      //   this.form.products[index].quantity=this.form.products[index].stock;
      //   return;
      // }
      this.form.products[index].total = parseInt(this.form.products[index].price) *parseInt( this.form.products[index].quantity);

      this.totalCalculation();
    },

    //total amount calculation
    totalCalculation() {
      let products = this.form.products;
      let total = 0;
      for (let i = 0; i < products.length; i++) {
        total +=parseInt(products[i].price)  * parseInt(products[i].quantity);
      }

      if(parseInt(this.form.paid)>parseInt(total)+parseInt(this.form.shipping_cost)){
        Swal.fire({
          type:'warning',
          text:`Paid amount ${this.form.paid} bigger this total amount ${total} ?????`
        })
          this.form.paid=total;
        return;
      }
      if(parseInt(this.form.discount) > parseInt(total)+parseInt(this.form.shipping_cost)){
        Swal.fire({
          type:'warning',
          text:`Discount amount ${this.form.discount} bigger this total amount ${total} ?????`
        })
        this.form.discount=total;
        return;
      }
       this.form.total = parseInt(total);


      this.form.due = this.form.total - parseInt(this.form.discount) -parseInt(this.form.paid) +parseInt(this.form.shipping_cost);

        total += parseInt(products[i].price) * parseInt(products[i].quantity);
      },

      //select city
    selectCity() {
      let id = this.form.city;
    this.cityWiseSubCity(id);
      let cities = this.cities;
      for (let i = 0; i < cities.length; i++) {
        if (cities[i].id == id) {
          this.form.shipping_cost = cities[i].delivery_charge;
        }
      }
      if(id==1){
        this.form.courier=5;
      }
      this.totalCalculation();
    },
     cityWiseSubCity(city_id){

      let loader = this.$loading.show({
        // Optional parameters
        container: this.fullPage ? null : this.$refs.formContainer,
        canCancel: true,
        onCancel: this.onCancel,
        loader: "bars",
        color: "#FF4D03",
        backgroundColor: "#222",
        width: 100,
        height: 100,
      });
      console.log(city_id)

        axios.get('/api/city/wise/sub/city/'+city_id)
        .then(resp=>{


              if(resp.data.length){
                this.sub_cities=resp.data;

              }else{
                this.form.sub_city="";
                this.sub_cities="";
                alert('No sub city under selected city')
              }
            loader.hide();

          console.log(resp)
        })
        .catch(e=>{
          console.log(e);
          loader.hide();
        })

     },

    remove(index) {
      // console.log(index);
      console.log(this.form.products[index]);
      this.form.products.splice(index, 1);
      this.products.splice(index, 1);
      this.totalCalculation();
    },
     search_suggested_product() {
      if (this.search_product_code.length >= 2) {
        axios
          .get(
            "/api/search/seggested/product/for/order/" +
              this.search_product_code
          )
          .then((resp) => {
            console.log(resp);
            if (resp.data.status == "OK") {
              this.suggested_products = resp.data.products;
            }
          });
      }
    },



    },


  computed: {},
  components: {
    datePicker,
  }
};
//Date picker
</script>

<style scoped>
.mb-2 {
  margin-bottom: 5px !important;
}

.autocomplete {
  max-height: 120px;
  overflow-y: scroll;
  position: absolute;
  width: 100%;
  z-index: 454;
}

.fa-search{
  height: 33px;
  width: 60px;
  margin-left: -25px;
}





.autocomplete li:hover {
  background: #222d32;
  color: #ffffff;
}
.suggest-product img {
    width: 120px;
    height: 120px;
}
.suggest-product {
   background: #ecf0f5;
    text-align: center;
    padding: 20px;
    box-shadow: 0px 0px 1px 2px #ddd
}
.add-item.text-center {
    background: #fff;
    width: block;
    padding: 6px 5px;
    border-radius: 6px;
    cursor: pointer;
    margin-bottom: 18px;
}
.form-group.product-search {
    width: 80%;
    left: 10%;
    position: relative;
}

</style>
