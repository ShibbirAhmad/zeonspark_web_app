<template>
  <div>
    <admin-main></admin-main>
    <div class="content-wrapper">
      <section class="content-header">
        <h1>
          <router-link :to="{ name: 'order' }" class="btn btn-primary">
            <i class="fa fa-arrow-right"></i>
          </router-link>
        </h1>
        <ol class="breadcrumb">
          <li>
            <a href="#"> <i class="fa fa-dashboard"></i>Dashboard </a>
          </li>
          <li class="active">Order</li>
        </ol>
      </section>
      <section class="content">
        <form @submit.prevent="searchProduct" id="ProductSearch"></form>
        <h1 v-if="loading">
          <i class="fa fa-spin fa-spinner"></i>
        </h1>

        <form v-else @submit.prevent="add" @keydown="form.onKeydown($event)">
          <div class="row justify-content-center">
            <div
              class="alert alert-danger alert-dismissible"
              v-if="error"
              role="alert"
            >
              {{ error }}
              <span
                aria-hidden="true"
                class="close"
                data-dismiss="alert"
                style="color: #fff"
                aria-label="Close"
                >&times;</span
              >
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
                      autofocus
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
                      autofocus
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
                      autofocus
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
                    <label for="note">Order Note</label>
                    <input
                      type="text"
                      name="note"
                      class="form-control"
                      v-model="form.note"
                    />
                  </div>

                  <div class="form-group">
                    <label>City</label>
                    <input
                      type="text"
                      class="form-control"
                      v-model="city_name"
                      @keyup="citySearch"
                      autocomplete="off"
                    />
                    <ul id="city_name_container" class="list-group">
                      <li
                        style="cursor: pointer"
                        v-for="(city, index) in cities"
                        @click="selectCity(city)"
                        :key="index"
                        class="list-group-item city_name"
                      >
                        {{ city.name }}
                      </li>
                    </ul>
                  </div>

                  <div class="form-group">
                    <label>Sub City</label>
                    <select
                      class="form-control"
                      name="sub_city"
                      :class="{ 'is-invalid': form.errors.has('sub_city') }"
                      v-model="form.sub_city"
                    >
                      <option disabled value="">select sub city</option>
                      <option
                        v-if="sub_cities.length > 0"
                        v-for="sub_city in sub_cities"
                        :key="sub_city.id"
                        :value="sub_city.name"
                      >
                        {{ sub_city.name }}
                      </option>
                    </select>
                    <has-error :form="form" field="sub_city"></has-error>
                  </div>

                  <div class="form-group">
                    <label>Shipping Charge</label>
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
                      <option value="3">Confirmed</option>
                      <option value="2">Pending</option>
                    </select>
                  </div>
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
                    <label>Product</label>
                    <input
                      type="text"
                      name="name"
                      class="form-control"
                      autofocus
                      autocomplete="off"
                      placeholder="Enter Product Code"
                      v-model="product_code"
                      form="ProductSearch"
                    />
                  </div>

                  <div class="row">
                    <div class="col-lg-12">
                      <table class="table">
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
                            <td>{{ index + 1 }}</td>
                            <td>
                              {{ product.name + "-" + product.product_code }}
                              <input type="hidden" :value="product.id" />
                            </td>
                            <!-- <td>
                              <select
                                class="form-control"
                                v-model="form.products[index].attribute_id"
                              >
                                <option value>select attribute</option>
                                <option
                                  v-if="product.attributes"
                                  v-for="(
                                    product_attribute, index
                                  ) in product.attributes"
                                  :key="index"
                                  :value="product_attribute.attribute.id"
                                >
                                  {{ product_attribute.attribute.name }}
                                </option>
                              </select>
                            </td> -->
                            <td>
                              <select
                                class="form-control"
                                v-model="form.products[index].variant_id"
                              >
                                <option value>select attribute</option>
                                <option
                                  v-if="product.variants"
                                  v-for="(
                                    product_variant, index
                                  ) in product.variants"
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
                                style="width: 50px"
                              />
                              <span class="badge badge-danger">{{
                                product.stock
                              }}</span>
                            </td>
                            <td>
                              <input
                                v-model="form.products[index].price"
                                @keyup="totalCalculation && quantity(index)"
                                v-if="form.order_type == 3"
                              />
                              <strong v-else>{{ product.price }}</strong>
                            </td>
                            <td>{{ form.products[index].total }}</td>
                            <td>
                              <a
                                class="btn btn-danger btn-sm"
                                @click="remove(index)"
                                ><i class="fa fa-trash"></i
                              ></a>
                            </td>
                          </tr>
                          <tr v-if="products.length > 0">
                            <td colspan="4"></td>
                            <td>Sub Total</td>
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
                              />
                            </td>
                          </tr>
                          <tr v-if="products.length > 0">
                            <td colspan="4"></td>
                            <td>Advance Payment</td>
                            <td colspan="2">
                              <input
                                v-model="form.paid"
                                @keyup="totalCalculation"
                                class="form-control"
                              />
                            </td>
                          </tr>
                          <tr>
                            <td colspan="4"></td>

                            <td>Paid By</td>
                            <td colspan="2">
                              <div class="form-group">
                                <select
                                  class="form-control"
                                  v-model="form.paid_by"
                                >
                                  <option value="select one" disabled>
                                    select one
                                  </option>
                                  <option
                                    v-for="(balance, index) in balance"
                                    :key="index"
                                    :value="balance.id"
                                  >
                                    {{ balance.name }}
                                  </option>
                                </select>
                                <has-error
                                  :form="form"
                                  field="paid_by"
                                ></has-error>
                              </div>
                            </td>
                          </tr>
                          <tr v-if="products.length > 0">
                            <td colspan="4"></td>
                            <td>Shipping Charge</td>
                            <td colspan="2">{{ form.shipping_cost }}</td>
                          </tr>
                          <tr v-if="products.length > 0">
                            <td colspan="4"></td>
                            <td>Additional Charge</td>
                            <td colspan="2">
                              <input
                                class="form-control"
                                @keyup="totalCalculation"
                                v-model="form.additional_charge"
                              />
                            </td>
                          </tr>
                          <tr v-if="products.length > 0">
                            <td colspan="4"></td>
                            <td>Payable Amount</td>
                            <td colspan="2">{{ form.due }}</td>
                          </tr>
                          <button
                            class="btn btn-success"
                            style="margin-top: 12px"
                            type="submit"
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

Vue.component(HasError.name, HasError);

export default {
  name: "edit_order",
  created() {
    setTimeout(() => {
      this.others();
    }, 2000);
    this.edit();
    this.balanceList();
  },
  data() {
    return {
      form: new Form({
        customer_mobile: "",
        customer_name: "",
        customer_address: "",
        city: "",
        note: "",
        courier: "",
        products: [],
        shipping_cost: 0,
        courier: "",
        total: 0,
        discount: 0,
        paid: 0,
        paid_by: "select one",
        due: 0,
        order_type: "",
        sub_city: "",
        status: "",
        additional_charge: 0,
      }),
      balance: "",
      attribute_id: "",
      variant_id: "",
      product_code: "",
      city_id: "",
      courier_id: "",
      shipping_cost: "",
      additional_charge: "",
      products: [],
      product_attributes: null,
      product_variants: null,
      cities: null,
      our_cities: null,
      couriers: null,
      product_quantity: 1,
      error: "",
      loading: true,
      sub_cities: "",
      city_name: "",
    };
  },

  methods: {
    balanceList() {
      axios.get("/api/balance/list").then((resp) => {
        this.balance = resp.data.balance;
      });
    },

    citySearch() {
      if (this.city_name.length > 0) {
        axios.get("/api/search/city/" + this.city_name).then((resp) => {
          console.log(resp);
          if (resp.data.cities.data.length > 0) {
            document.getElementById("city_name_container").style.display =
              "block";
            this.cities = resp.data.cities.data;
          }
        });
      }
    },

    //method initial for get data
    edit() {
      axios.get("/order/view/" + this.$route.params.id).then((resp) => {
        console.log(resp);
        if (resp.data.status == "SUCCESS") {
          let order = resp.data.order;
          this.form.customer_mobile = order.customer_phone;
          this.form.customer_name = order.customer_name;
          this.form.customer_address = order.customer_address;
          this.form.city = order.city_id;
          this.form.shipping_cost = order.shipping_cost;
          this.form.additional_charge = order.additional_charge;
          this.form.courier = order.courier_id;
          this.form.paid = order.paid;
          this.form.discount = order.discount;
          this.form.status = order.status;
          this.form.note = order.note;
          this.form.total = order.total;
          this.form.order_type = order.order_type;
          this.form.due =
            parseInt(order.total) -
            (parseInt(order.paid) + parseInt(order.discount)) +
            parseInt(order.shipping_cost) +
            parseInt(order.additional_charge);

          if (order.paid_by) {
            this.form.paid_by = order.paid_by;
          }

          //problem is there product attribute

          let products = [];
          for (let i = 0; i < resp.data.items.length; i++) {
            products[i] = {
              product_id: resp.data.items[i].product.id,
              name: resp.data.items[i].product.name, //product name
              product_code: resp.data.items[i].product_code,
              quantity: resp.data.items[i].quantity,
              price: resp.data.items[i].price,
              variants: resp.data.items[i].product.product_variant,
            };
            this.products.push(products[i]);
            this.form.products.push(products[i]);
            this.form.products[i].total = resp.data.items[i].total;
            this.form.products[i].variant_id = resp.data.items[i].variant_id;
            this.form.products[i].attribute_id =
              resp.data.items[i].attribute_id;
          }

          this.cityWiseSubCity();
          this.form.sub_city = order.sub_city_id;
          this.loading = false;
        }
      });
    },
    //method initial for submit data
    add() {
      if (this.form.paid > 0 && this.form.paid_by == "select one") {
        alert("selecet any balance");
        return;
      }
      this.form
        .post("/update/order/" + this.$route.params.id)
        .then((resp) => {
          console.log(resp);
          if (resp.data.status == "SUCCESS") {
            this.$router.push({ name: "order" });
            this.$toasted.show(resp.data.message, {
              type: "success",
              position: "top-center",
              duration: 2000,
            });
            //other wise success, show a error
          } else {
            this.$toasted.show(resp.data, {
              type: "error",
              position: "top-center",
              duration: 4000,
            });
          }
        })
        .catch((error) => {
          this.error =
            "Missing submit information. please check all field below and try again";
        });
    },

    //method iniital for get other data to create order, like cit, courier and other.......
    others() {
      axios
        .get("/others")
        //success resp only
        .then((resp) => {
          if (resp.data.status == "SUCCESS") {
            resp.data.cities.forEach((element) => {
              if (this.form.city == element.id) {
                this.city_name = element.name;
              }
            });

            this.couriers = resp.data.couriers;
          }
        })
        .catch((error) => {
          console.log(error);
        });
    },

    //method initial for search product

    searchProduct() {
      let length = this.product_code.length;
      //  alert(length)
      if (length == 4) {
        axios
          .get("/search/product/with/code/" + this.product_code)

          .then((resp) => {
            //when resp success
            if (resp.data.status == "SUCCESS") {
              let product = {
                product_id: "",
                price: "",
                quantity: 1,
                attribute_id: "",
                variant_id: "",
                total: "",
              };
              for (let i = 0; i < resp.data.product.length; i++) {
                //check the product stcok availity

                this.products.push(resp.data.product[i]);
                product.product_id = resp.data.product[i].id;
                product.price = resp.data.product[i].price;
                product.total = resp.data.product[i].price;
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
          })
          .catch((error) => {
            console.log(error);
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
                (this.form.customer_name = resp.data.customer.name),
                  (this.form.customer_address = resp.data.customer.address);
                this.form.city = resp.data.customer.city_id;
              }
              this.$toasted.show(resp.data.message, {
                type: "error",
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
    variant(index) {
      this.form.products[index].variant_id = this.variant_id;
    },
    //when chage qauntity
    quantity(index) {
      this.form.products[index].total =
        this.form.products[index].price * this.form.products[index].quantity;

      this.totalCalculation();
    },

    //total amount calculation
    totalCalculation() {
      let products = this.form.products;
      let total = 0;
      for (let i = 0; i < products.length; i++) {
        total += parseInt(products[i].price) * parseInt(products[i].quantity);
      }
      this.form.total = parseInt(total);
      this.form.due =
        (parseInt(this.form.total) +
        parseInt(this.form.shipping_cost) +
        parseInt(this.form.additional_charge) ) -
        (parseInt(this.form.discount) + parseInt(this.form.paid));
    },

    selectCity(city) {
      document.getElementById("city_name_container").style.display = "none";
      this.city_name = city.name;
      this.form.city = city.name;
      this.cityWiseSubCity(city.id);
      this.form.shipping_cost = city.delivery_charge;
      this.totalCalculation();
    },

    remove(index) {
      // console.log(index);
      console.log(this.form.products[index]);
      this.form.products.splice(index, 1);
      this.products.splice(index, 1);
      this.totalCalculation();
    },

    cityWiseSubCity(id) {
      axios.get("/api/city/wise/sub/city/" + id).then((resp) => {
        this.form.sub_city = "";
        if (resp.data.length) {
          this.sub_cities = resp.data;
        } else {
          this.form.sub_city = "";
          this.sub_cities = "";
        }
      });
    },
  },
  computed: {},
  components: {
    datePicker,
  },
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

.autocomplete li:hover {
  background: #222d32;
  color: #ffffff;
}

.city_name_container {
  display: none;
}
</style>
