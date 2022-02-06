<template>
  <div class="wrapper-wide">
    <loading
      :active.sync="isLoading"
      :can-cancel="true"
      :is-full-page="fullPage"
    ></loading>

    <frontend-header></frontend-header>

    <div id="container">
      <div class="container ">
        <!-- Breadcrumb End-->
        <div class="row" v-if="cart.total > 0">
          <!--Middle Part Start-->
          <div id="content">
            <div class="row">
              <div class="col-md-12 col-lg-12 col-xs-12 text-center">
                <img
                  class="checkout_logo"
                  :src="base_url + general_setting.logo"
                />
                <h3>One Step Checkout</h3>
                <p>
                  Please enter your details below to complete your purchase.
                </p>
              </div>
            </div>

            <div class="row shipping_place_row">
              <div class="col-md-4 col-xs-12text-right">
                <h4>
                  <input
                    type="checkbox"
                    @click="shippingToMyAddress"
                    v-model="ship_to_my_address"
                  />
                  Ship to My address
                </h4>
              </div>

              <div class="col-md-4 col-xs-12text-center">
                <h4>
                  <input
                    type="checkbox"
                    @click="shippingToDefirentAddress"
                    v-model="ship_to_different_address"
                  />
                  Ship to different address
                </h4>
              </div>

              <div class="col-md-4 col-xs-12">
                <h4>
                  <input
                    type="checkbox"
                    @click="shippingFromOffice"
                    v-model="office_pickup"
                  />
                  Office Pickup
                </h4>
              </div>
            </div>

            <form @submit.prevent="chekout">
              <div class="row order_info_row">
                <div
                  style="z-index: 999999"
                  class="col-lg-4 col-md-4 col-sm-12 col-xs-12"
                >
                  <div class="order_box_header">
                    <h4>
                      <span> <i class="fa fa-home"></i> </span> CUSTOMER ADDRESS
                    </h4>
                  </div>
                  <div class="custom-box">
                    <div class="form-grop">
                      <label class="control-label" for="input-email"
                        >Name<b class="text-danger">*</b>
                      </label>
                      <input
                        type="text"
                        name="name"
                        class="form-control"
                        placeholder="আপনার নাম"
                        :class="{ 'is-invalid': form.errors.has('name') }"
                        v-model="form.name"
                        required
                      />
                      <has-error :form="form" field="name"></has-error>
                    </div>
                    <br />
                    <div class="form-grop">
                      <label class="control-label" for="mobile_no"
                        >Mobile Number<b class="text-danger">*</b></label
                      >
                      <input
                        type="text"
                        name="mobile_no"
                        placeholder=" মোবাইল নাম্বার "
                        required
                        class="form-control"
                        maxlength="11"
                        minlength="11"
                        :class="{ 'is-invalid': form.errors.has('mobile_no') }"
                        v-model="form.mobile_no"
                      />
                      <has-error :form="form" field="mobile_no"></has-error>
                    </div>
                    <br />
                    <div class="form-grop">
                      <label class="form-label" for="email">Email</label>
                      <input
                        type="email"
                        name="email"
                        placeholder="example@gmail.com"
                        class="form-control"
                        :class="{ 'is-invalid': form.errors.has('email') }"
                        v-model="form.email"
                      />
                      <has-error :form="form" field="email"></has-error>
                    </div>
                    <br />
                    <div class="form-group">
                      <div class="row">
                        <div class="col-md-6 col-xs-12">
                          <label class="control-label" for="city"
                            >District<b class="text-danger">*</b></label
                          >
                          <input
                            type="text"
                            v-model="form.city"
                            placeholder="জেলা"
                            class="form-control"
                            name="city"
                          />
                          <has-error :form="form" field="city"></has-error>
                        </div>
                        <div class="col-md-6 col-xs-12">
                          <label class="control-label" for="thana"
                            >Upozila</label
                          >
                          <input
                            type="text"
                            v-model="form.thana"
                            placeholder="থানা"
                            class="form-control"
                            name="thana"
                          />
                          <has-error :form="form" field="thana"></has-error>
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label" for="input-password"
                        >Address<b class="text-danger">*</b></label
                      >
                      <textarea
                        name="address"
                        placeholder=" সম্পূর্ণ ঠিকানা "
                        class="form-control"
                        :class="{ 'is-invalid': form.errors.has('address') }"
                        v-model="form.address"
                        @keyup="validation"
                        required
                      ></textarea>
                      <has-error :form="form" field="address"></has-error>
                    </div>

                    <div class="form-group">
                      <label class="control-label" for="comment">Note</label>
                      <textarea
                        name="note"
                        rows="3"
                        class="form-control"
                        :class="{ 'is-invalid': form.errors.has('note') }"
                        v-model="form.note"
                      ></textarea>
                    </div>

                    <div class="form-group">
                      <label for="create_account">
                        <input
                          type="checkbox"
                          name="create_account"
                          v-model="form.create_account"
                        />
                        Create account
                      </label>
                    </div>

                    <div
                      v-if="form.create_account == true"
                      class="create_account"
                    >
                      <div class="row">
                        <div class="col-md-6 col-xs-12">
                          <label for="password"
                            >Password<b class="text-danger">*</b></label
                          >
                          <input
                            type="password"
                            name="password"
                            class="form-control"
                            autocomplete="off"
                            v-model="form.password"
                          />
                        </div>
                        <div class="col-md-6 col-xs-12">
                          <label for="confirm_password"
                            >Confirm Password<b class="text-danger">*</b></label
                          >
                          <input
                            type="password"
                            name="confirm_password"
                            class="form-control"
                            autocomplete="off"
                            v-model="form.confirm_password"
                          />
                        </div>
                      </div>
                    </div>

                    <div
                      v-if="form.billing_address == true"
                      id="billing_section"
                    >
                      <div class="order_box_header">
                        <h4>
                          <span> <i class="fa fa-home"></i> </span> SHIPPING
                          ADDRESS
                        </h4>
                      </div>

                      <div class="form-grop">
                        <label class="control-label" for="input-email"
                          >Receiver Name<b class="text-danger">*</b>
                        </label>
                        <input
                          type="text"
                          name="shipping_name"
                          class="form-control"
                          placeholder="সম্পূর্ণ নাম"
                          :class="{
                            'is-invalid': form.errors.has('shipping_name'),
                          }"
                          v-model="form.shipping_name"
                        />
                        <has-error
                          :form="form"
                          field="shipping_name"
                        ></has-error>
                      </div>
                      <br />
                      <div class="form-grop">
                        <label class="control-label" for="mobile_no"
                          >Receiver Mobile Number<b class="text-danger"
                            >*</b
                          ></label
                        >
                        <input
                          type="text"
                          name="shipping_mobile_no"
                          placeholder=" মোবাইল নাম্বার "
                          class="form-control"
                          maxlength="11"
                          minlength="11"
                          :class="{
                            'is-invalid': form.errors.has('shipping_mobile_no'),
                          }"
                          v-model="form.shipping_mobile_no"
                        />
                        <has-error
                          :form="form"
                          field="shipping_mobile_no"
                        ></has-error>
                      </div>
                      <div class="form-group">
                        <div class="row">
                          <div class="col-md-6 col-xs-12">
                            <label class="control-label" for="shipping_city"
                              >Receiver District<b class="text-danger"
                                >*</b
                              ></label
                            >
                            <input
                              type="text"
                              v-model="form.shipping_city"
                              placeholder="জেলা"
                              class="form-control"
                              name="shipping_city"
                            />
                            <has-error
                              :form="form"
                              field="shipping_city"
                            ></has-error>
                          </div>
                          <div class="col-md-6 col-xs-12">
                            <label class="control-label" for="shipping_thana"
                              >Receiver Upozila</label
                            >
                            <input
                              type="text"
                              v-model="form.shipping_thana"
                              placeholder="থানা"
                              class="form-control"
                              name="shipping_thana"
                            />
                            <has-error
                              :form="form"
                              field="shipping_thana"
                            ></has-error>
                          </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label" for="shipping_address"
                          >Receiver Address<b class="text-danger">*</b></label
                        >
                        <textarea
                          name="shipping_address"
                          placeholder=" সম্পূর্ণ ঠিকানা "
                          class="form-control"
                          :class="{
                            'is-invalid': form.errors.has('shipping_address'),
                          }"
                          v-model="form.shipping_address"
                          required
                        ></textarea>
                        <has-error
                          :form="form"
                          field="shipping_address"
                        ></has-error>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-lg-8  col-md-8 col-sm-12">
                  <div class="row">
                    <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                      <div class="order_box_header">
                        <h4>
                          <span> <i class="fa fa-truck"></i> </span> SHIPPING
                          METHODS
                        </h4>
                      </div>
                      <div class="custom-box">
                        <div class="form-group">
                          <ul class="shipping_list">
                            <li>
                              <input
                                @change="selectShippingMethod"
                                id="Inside Dhaka"
                                type="radio"
                                v-model="form.shipping_method"
                                name="shipping_method"
                                value="Inside Dhaka"
                              />
                                <label for="Inside Dhaka">Inside Dhaka</label>  
                              <h4>&#2547;80</h4>
                            </li>

                            <li>
                              <input
                                @change="selectShippingMethod"
                                id="Dhaka Sub Area"
                                type="radio"
                                v-model="form.shipping_method"
                                name="shipping_method"
                                value="Dhaka Sub Area"
                              />
                               
                              <label for="Dhaka Sub Area"
                                >Dhaka Sub Area <br /><small
                                  >(Savar, Ashulia, Gazipur, kerangonj)</small
                                >
                              </label>
                              <h4>&#2547;120</h4>
                            </li>

                            <li>
                              <input
                                @change="selectShippingMethod"
                                id="Outside Dhaka"
                                type="radio"
                                v-model="form.shipping_method"
                                name="shipping_method"
                                value="Outside Dhaka"
                              />
                                <label for="Outside Dhaka">Outside Dhaka</label>
                              <h4>&#2547;150</h4>
                            </li>

                            <li>
                              <input
                                @change="selectShippingMethod"
                                id="Emergency Delivery"
                                type="radio"
                                v-model="form.shipping_method"
                                name="shipping_method"
                                value="Emergency Delivery"
                              />
                               
                              <label for="Emergency Delivery"
                                >Emergency Delivery<sup
                                  >Inside Dhaka</sup
                                ></label
                              >
                              <h4>&#2547;200</h4>
                            </li>

                            <li>
                              <input
                                @change="selectShippingMethod"
                                id="Office Pickup "
                                type="radio"
                                v-model="form.shipping_method"
                                name="shipping_method"
                                value="Office Pickup"
                              />
                               
                              <label for="Office Pickup ">Office Pickup </label>
                              <h4>&#2547;0.0</h4>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                      <div class="order_box_header">
                        <h4>
                          <span> <i class="fa fa-credit-card"></i> </span>
                          PAYMENT METHODS
                        </h4>
                      </div>
                      <div class="custom-box">
                        <div class="form-group">
                          <div class="row">
                            <div
                              style="margin-bottom: 20px"
                              class="col-md-12 col-xs-12"
                            >
                               
                              <input
                                type="radio"
                                id="Cash On Delivery"
                                v-model="form.payment_method"
                                name="payment_method"
                                value="Cash On Delivery"
                              />
                               
                              <label for="Cash On Delivery"
                                >Cash On Delivery</label
                              >
                            </div>
                            <div class="col-md-12 col-xs-12">
                               
                              <input
                                type="radio"
                                id="Online Payment"
                                v-model="form.payment_method"
                                name="payment_method"
                                value="Online Payment"
                              />
                               
                              <label for="Online Payment">Online Payment</label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                      <div class="order_box_header">
                        <h4>
                          <span> <i class="fa fa-list-alt"></i> </span> ORDER
                          SUMMARY
                        </h4>
                      </div>

                      <div class="custom-box">
                        <div class="cart_highlight">
                          <table class="table table-hover table-striped">
                            <thead>
                              <tr>
                                <th>PRODUCT</th>
                                <th>QUANTITY</th>
                                <th>SUBTOTAL</th>
                                <th>ACTION</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr
                                v-for="(
                                  cart_content, index
                                ) in cartContents.content"
                                :key="index"
                              >
                                <td>
                                  <div class="checkout_cart_product">
                                    <img
                                      :src="
                                        base_url +
                                        cart_content.options.image[0]
                                          .product_image
                                      "
                                    />
                                    <p>
                                      {{
                                        cart_content.name
                                          .substring(0, 30)
                                          .concat("...")
                                      }}
                                    </p>
                                  </div>
                                </td>
                                <td>
                                  <ul style="text-decoration: none">
                                    <li
                                      class="q-i-d"
                                      @click="increamentQuantity(cart_content)"
                                    >
                                      <i class="fa fa-angle-up"></i>
                                    </li>
                                    <li>{{ cart_content.qty }}</li>
                                    <li
                                      class="q-i-d"
                                      @click="decreamentQuantity(cart_content)"
                                    >
                                      <i class="fa fa-angle-down"></i>
                                    </li>
                                  </ul>
                                </td>
                                <td>
                                  <p class="checkout_cart_subtotal">
                                    &#2547;{{
                                      cart_content.price * cart_content.qty
                                    }}
                                  </p>
                                </td>
                                <td>
                                  <h4
                                    class="text-danger checkout_cart_remove"
                                    @click="cartRemove(cart_content)"
                                  >
                                    X
                                  </h4>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>

                        <div class="cart-total">
                          <table class="table">
                            <tbody>
                              <tr>
                                <td>Sub Total</td>
                                <td colspan="4"></td>
                                <td>
                                  :
                                  <span>&#2547;{{ form.total }}</span>
                                </td>
                              </tr>

                              <tr v-if="form.coupon_discount > 0">
                                <td>Discount</td>
                                <td colspan="4"></td>
                                <td>
                                  :
                                  <span v-if="form.coupon_discount"
                                    >&#2547;{{ form.coupon_discount }}</span
                                  >
                                </td>
                              </tr>

                              <tr>
                                <td>Shipping Charge</td>
                                <td colspan="4"></td>
                                <td>
                                  :
                                  <span>&#2547;{{ form.shipping_cost }}</span>
                                </td>
                              </tr>

                              <tr>
                                <td>Total</td>
                                <td colspan="4"></td>
                                <td>
                                  :
                                  <span
                                    >&#2547;{{
                                      parseInt(
                                        form.total.replace(",", "") -
                                          parseInt(form.coupon_discount)
                                      ) + parseInt(form.shipping_cost)
                                    }}</span
                                  >
                                </td>
                              </tr>
                              <tr>
                                <td>Payable Amount</td>
                                <td colspan="4"></td>
                                <td>
                                  :
                                  <span
                                    >&#2547;{{
                                      parseInt(
                                        form.total.replace(",", "") -
                                          parseInt(form.coupon_discount)
                                      ) + parseInt(form.shipping_cost)
                                    }}</span
                                  >
                                </td>
                              </tr>
                            </tbody>
                          </table>
                        </div>
                        <br />
                        <div class="coupon">
                          <label for="coupon">
                            <strong>Apply Coupon</strong>
                          </label>
                          <div style="display: flex">
                            <input
                              id="coupon_code"
                              style="width: 60%"
                              placeholder="use coupon or promo code"
                              v-model="coupon_code"
                              type="text"
                              class="form-control"
                            />
                            <button
                              :disabled="coupon_code.length <= 0"
                              class="btn btn-primary"
                              @click.prevent="applyCoupon"
                              style="border-radius: 0px"
                            >
                              Apply
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12">
                  <div class="form-group">
                    <button
                      class="btn order_place_btn btn-primary"
                      type="submit"
                      :disabled="form.busy || disabled"
                    >
                      <i class="fa fa-spinner fa-spin" v-if="form.busy"></i
                      >PLACE ORDER
                    </button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="row" v-else>
          <div class="empty-cart">
            <h4 class="text-uppercase">your cart is empty</h4>
            <img
              class="empty_cart_icon"
              src="https://mohasagor.com/public/storage//images/static/cartEmpty.jpg"
            />
            <br />
            <a href="/" class="home_btn"> Home Page</a>
          </div>
        </div>
      </div>
    </div>
    <frontend-footer></frontend-footer>
  </div>
</template>
<script>
import Loading from "vue-loading-overlay";
import "vue-loading-overlay/dist/vue-loading.css";
import { Form, HasError } from "vform";

export default {
  created() {
    this.user();
    this.getCartContent();
    this.$store.dispatch("getCartContent");
    this.$store.dispatch("general_setting");
    setTimeout(() => {
      this.isLoading = false;
      this.validation();
    }, 1500);
  },
  data() {
    return {
      form: new Form({
        email: "",
        mobile_no: "",
        name: "",
        address: "",
        city: "",
        thana: "",
        shipping_mobile_no: "",
        shipping_name: "",
        shipping_address: "",
        shipping_city: "",
        shipping_thana: "",
        total: "",
        cart: "",
        note: "",
        payment_method: "Cash On Delivery",
        shipping_method: "Inside Dhaka",
        shipping_cost: 80,
        coupon_discount: 0,
        coupon_type: "",
        coupon_id: "",
        email: "",
        create_account: false,
        billing_address: false,
        password: "",
        confirm_password: "",
      }),
      isLoading: true,
      fullPage: true,
      cities: "",
      cart_content: {},
      product_discount: 0,
      ship_to_my_address: true,
      ship_to_different_address: false,
      office_pickup: false,
      cart: {
        total: 0,
      },
      disabled: true,
      coupon_code: "",
      coupon: false,
      base_url: this.$store.state.image_base_link,
    };
  },
  methods: {
    chekout() {
      if (this.form.create_account == true) {
        if (this.form.password.length < 1) {
          alert("password is required");
          return;
        }

        if (this.form.confirm_password.length < 1) {
          alert("confirm password is required");
          return;
        }

        if (this.form.password != this.form.confirm_password) {
          alert("password isn't matched");
          return;
        }
      }

      if (this.form.billing_address == true) {
        if (
          this.form.shipping_mobile_no.length < 1 ||
          this.form.shipping_name.length < 1 ||
          this.form.shipping_address.length < 1 ||
          this.form.shipping_city.length < 1
        ) {
          alert("shipping information is required");
          return;
        }
      }

      this.form
        .post("/_public/checkout")
        .then((resp) => {
          console.log(resp);
          if (resp.data.status == "SUCCESS") {
            window.open("/user/Checkout/success", "_self");
          } else {
            this.$toasted.show("something went to wrong", {
              type: "error",
              position: "top-center",
              duration: 2000,
            });
          }
        })
        .catch((error) => {
          console.log(error);
          this.$toasted.show("something went to wrong", {
            type: "error",
            position: "top-center",
            duration: 2000,
          });
        });
    },

    user() {
      axios.get("/_public/userToCheck").then((resp) => {
        //   console.log(resp);
        if (resp.data.status == "AUTHORIZED") {
          this.form.mobile_no = resp.data.user.mobile_no;
          this.form.name = resp.data.user.name;
          this.form.address = resp.data.user.address;
          this.form.email = resp.data.user.email;
          this.form.city = resp.data.user.city;
        }
      });
    },

    selectShippingMethod() {
      if (this.form.shipping_method == "Inside Dhaka") {
        this.form.shipping_cost = 80;
      } else if (this.form.shipping_method == "Dhaka Sub Area") {
        this.form.shipping_cost = 120;
      } else if (this.form.shipping_method == "Outside Dhaka") {
        this.form.shipping_cost = 150;
      } else if (this.form.shipping_method == "Emergency Delivery") {
        this.form.shipping_cost = 200;
      } else if (this.form.shipping_method == "Office Pickup") {
        this.form.shipping_cost = 0;
      }
    },

    shippingToMyAddress() {
      this.ship_to_my_address = true;
      this.ship_to_different_address = false;
      this.office_pickup = false;
      this.form.billing_address = false;
      this.form.shipping_method = "Inside Dhaka";
      this.form.shipping_cost = 80;
    },

    shippingToDefirentAddress() {
      this.ship_to_different_address = true;
      this.ship_to_my_address = false;
      this.form.billing_address = true;
      this.office_pickup = false;
      this.form.shipping_method = "Outside Dhaka";
      this.form.shipping_cost = 150;
    },

    shippingFromOffice() {
      this.office_pickup = true;
      this.ship_to_my_address = false;
      this.ship_to_different_address = false;
      this.form.billing_address = false;
      this.form.shipping_method = "Office Pickup";
      this.form.shipping_cost = 0;
      this.form.shipping_mobile_no = "";
      this.form.shipping_name = "";
      this.form.shipping_address = "";
      this.form.shipping_city = "";
    },

    getCartContent() {
      axios.get("/_public/cartToContent").then((resp) => {
        // console.log(resp.data)
        this.cart.total = resp.data.cart_total;
        this.form.total = resp.data.cart_total;
      });
    },

    increamentQuantity(cartContent) {
      let quantity = parseInt(cartContent.qty) + parseInt(1);
      axios
        .get("/_public/cartToUpdate", {
          params: {
            qty: quantity,
            rowId: cartContent.rowId,
          },
        })
        .then((resp) => {
          console.log(resp);
          if (resp.data.status == "SUCCESS") {
            this.$store.dispatch("getCartContent");
            this.getCartContent();
          }
        })
        .catch((error) => {
          console.log(error);
        });
    },
    decreamentQuantity(cartContent) {
      if (cartContent.qty == 1) {
        alert("Qauntity shoud be at least 1");
        return;
      }

      let quantity = parseInt(cartContent.qty) - parseInt(1);
      axios
        .get("/_public/cartToUpdate", {
          params: {
            qty: quantity,
            rowId: cartContent.rowId,
          },
        })
        .then((resp) => {
          if (resp.data.status == "SUCCESS") {
            this.$store.dispatch("getCartContent");
            this.getCartContent();
          }
        })
        .catch((error) => {
          console.log(error);
        });
    },
    cartRemove(cartContent) {
      if (confirm("are you sure to remove?")) {
        axios
          .get("/_public/cartToDestroy", {
            params: {
              rowId: cartContent.rowId,
            },
          })
          .then((resp) => {
            console.log(resp);
            if (resp.data.status == "SUCCESS") {
              this.$store.dispatch("getCartContent");
              location.reload();
            }
          });
      }
    },

    validation() {
      if (
        this.form.address.length < 3 ||
        this.form.city.length < 1 ||
        this.form.total.length < 1 ||
        this.form.city < 1
      ) {
        this.disabled = true;
        return;
      }

      this.disabled = false;
    },

    applyCoupon() {
      if (this.coupon_code.length <= 0) {
        alert("Coupon Code Is Empty");
        document.getElementById("coupon_code").focus();
        return;
      }

      axios
        .get("/_public/apply/coupon/code", {
          params: {
            coupoon_code: this.coupon_code,
          },
        })
        .then((resp) => {
          if (resp.data.success == "OK") {
            console.log(resp);

            let discount = 0;
            let coupon = resp.data.coupon;
            let total = this.form.total;
            if (coupon.discount_type == "percentage") {
              discount =
                (parseInt(total) / parseInt(100)) *
                parseInt(coupon.discount_amount);
            } else {
              discount = parseInt(coupon.discount_amount);
            }

            this.form.coupon_discount = discount.toFixed(2);
            this.form.coupon_id = coupon.id;

            this.$toasted.show(resp.data.message, {
              type: "success",
              position: "top-center",
              duration: 2000,
            });
            this.coupon_code = "";
          } else {
            this.$toasted.show(resp.data, {
              type: "error",
              position: "top-center",
              duration: 2000,
            });
          }
        })
        .catch((e) => {
          this.$toasted.show("something went to wrong ", {
            type: "error",
            position: "top-center",
            duration: 2000,
          });
        });
    },
  },
  components: {
    Loading,
    HasError,
  },
  computed: {
    general_setting() {
      return this.$store.getters.general_setting;
    },
    cartContents() {
      return this.$store.getters.cartContent;
    },
  },
};
</script>

<style >
.swal2-popup {
  display: none;
  position: relative;
  box-sizing: border-box;
  grid-template-columns: minmax(0, 100%);
  width: 50em !important;
  max-width: 100%;
  padding: 0 0 1.25em;
  border: none;
  border-radius: 5px;
  color: #545454;
  font-family: inherit;
  font-size: 1rem;
}

.extra_d {
  cursor: pointer;
  font-size: 16px;
}

.extra_d a {
  height: 31px;
  position: absolute;
  margin: -8px 10px;
  border-radius: 5px;
  width: 34%;
}

.extra_d i {
  font-size: 25px;
  position: absolute;
  margin: -3px 10px;
}

.empty-cart {
  width: 50%;
  background: #fff;
  text-align: center;
  margin-left: 25%;
  padding: 50px 50px;
  box-shadow: 3px 3px 3px #ddd;
}

.home_btn {
  background: #ff4d03;
  color: #fff;
  padding: 12px 15px;
  border-radius: 5px;
}

.empty_cart_icon {
  margin-bottom: 50px;
  margin-top: 50px;
}

@media screen and (max-width: 768px) {
  .empty-cart {
    width: 100%;
    height: 430px;
    background: #fff;
    text-align: center;
    margin-left: 1%;
    padding: 10px 10px;
    box-shadow: 3px 3px 3px #ddd;
  }

  .empty_cart_icon {
    margin-bottom: 30px;
    margin-top: 5px;
  }

  .extra_d a {
    height: 32px;
    position: relative;
    margin: 10px 0px;
    border-radius: 5px;
    width: 72%;
  }
}
</style>