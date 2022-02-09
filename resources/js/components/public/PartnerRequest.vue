<template>
  <div class="wrapper-wide">
    <frontend-header></frontend-header>
    <div id="container">
      <div class="container">
        <div class="row">
          <!--Middle Part Start-->
          <div id="content" class="col-sm-12">
            <div class="row">
              <div class="col lg-12 col-md-12 col-sm-12 text-center">
                <h4 class="heading"><span> BE A PARTNER OF ZEONSPARK  </span></h4>
              </div>
            </div>

            <div class="row">
              <div class="col-sm-12">
                <div class="row">
                  <div class="col-lg-2 col-md-2 col-sm-2"></div>

                  <div class="col-lg-8 col-md-8 col-sm-10 box shadow bg-white">
                    <div class="text-center">
                      <h5 class="heading">
                        send request, our  will response as soon as possible.
                      </h5>
                    </div>
                    <form @submit.prevent="sendMessage()" method="post">
                      <div class="form-group">
                        <label for="name">Name</label>
                        <input required class="form-control" type="text" v-model="name" />
                      </div>

                      <div class="form-group">
                        <label  for="email">Email</label>
                        <input required class="form-control" type="emial" v-model="email" />
                      </div>

                      <div class="form-group">
                        <label for="phone">Phone</label>
                        <input  required class="form-control" type="text" v-model="phone" />
                      </div>


                     <div class="form-group">
                        <label for="city">City </label>
                        <input required class="form-control" type="text" v-model="city" />
                      </div>

                      <div class="form-group">
                        <label for="country">Country </label>
                        <input required class="form-control" type="text" v-model="country" />
                      </div>

                      <div class="form-group">
                        <label for="address">Full  Address</label>
                        <textarea
                          required
                          v-model="address"
                          class="form-control"
                          rows="2"
                        ></textarea>
                      </div>


                      <div class="form-group">
                        <label for="product_details">Product Details</label>
                        <textarea
                          required
                          v-model="product_details"
                          class="form-control"
                          rows="3"
                        ></textarea>
                      </div>

                      <div class="form-group text-center">
                      <input type="submit" class="btn btn-lg submit_style" value="Submit Reqest" />
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!--Middle Part End -->
        </div>
      </div>
    </div>

    <frontend-footer></frontend-footer>
  </div>
</template>
<script>

export default {

  data() {
    return {

      name: "",
      email: "",
      address: "",
      phone:"",
      product_details:"",
      city:"",
      country:"",
    };
  },
  methods: {

    sendMessage() {
      axios
        .post("/_public/api/partner/request", {
          name: this.name,
          email: this.email,
          phone: this.phone,
          city:   this.city,
          country: this.country,
          address: this.address,
          product_details: this.product_details,
        })
        .then((resp) => {
          if (resp.data.success == "OK") {
            Swal.fire({
              type: "success",
              text: "Thanks for your partner request, we will reply as soon as possible",
              confirm: true,
              duration: 4000,
              position: "top-center",
            });
            this.name = "";
            this.email = "";
            this.city = "";
            this.phone = "";
            this.country = "";
            this.product_details = "";
            this.address = "";
          } else {
            Swal.fire({
              type: "error",
              text: "something went wrong. please, try again ",
              position: "top-center",
            });
          }
        });
    },
  },

};
</script>

<style scoped>
.submit_style {
  margin-bottom: 20px;
  width: 132px;
  
  background: #ff4d03;
  border: dashed 1px;
  color: #fff;
  font-size: 16px;
}
.address_container {
  margin-top: 30px;
  margin-bottom: 50px;
}
@media screen and (max-width: 450px) {
  .address_container {
    margin-top: 30px;
    margin-left: 10px;
    margin-right: 10px;
    margin-bottom: 50px;
  }
  .contact_row {
    margin-top: -15px;
  }
  p {
    position: relative;
    font-size: 13px;
    line-height: 15px;
  }
  .box {
    margin: 10px;
  }
}
.address_container {
    padding: 10px;
}
.address_container i {padding-right: 15px;color: #ff4d03;}
</style>