<template>
  <div>
    <admin-main></admin-main>
    <div class="content-wrapper">
      <section class="content-header">
        <ol class="breadcrumb">
          <li>
            <a href="#"> <i class="fa fa-dashboard"></i>Dashboard </a>
          </li>
          <li class="active">service</li>
        </ol>
      </section>
      <section class="content">
        <div class="row justify-content-center">
          <br>
          <br>
          <div class="col-lg-11">
            <div class="box box-primary">
              <div class="box-header text-center with-border">
                <h3 class="box-title"> Service Information  </h3>
              </div>
              <div class="box-body">
                <div class="alert-danger alert" v-if="error">{{ error }}</div>

                <form
                  @submit.prevent="updateServiceInformation"
                  @keydown="form.onKeydown($event)"
                  enctype="multipart/form-data"
                >
                 <div class="row">
                    <div class="col-lg-12">

                      <div class="form-group">
                        <label for="invoice"> Fast Delivery Info </label>
                        <ckeditor
                          :editor="editor"
                          name="fast_delivery"
                          :class="{
                            'is-invalid': form.errors.has('fast_delivery'),
                          }"
                          v-model="form.fast_delivery"
                          :config="editorConfig"
                        ></ckeditor>
                      </div>

                    </div>

                      <br/>
                  <div class="col-lg-12">

                      <div class="form-group">
                        <label for="invoice"> Best Prices Info. </label>
                        <ckeditor
                          :editor="editor"
                          name="best_prices"
                          :class="{
                            'is-invalid': form.errors.has('best_prices'),
                          }"
                          v-model="form.best_prices"
                          :config="editorConfig"
                        ></ckeditor>

                      </div>

                 </div>


                      <br/>
                  <div class="col-lg-12">

                      <div class="form-group">
                        <label for="invoice"> Secure Payment Details </label>
                        <ckeditor
                          :editor="editor"
                          name="secure_payment"
                          :class="{
                            'is-invalid': form.errors.has('secure_payment'),
                          }"
                          v-model="form.secure_payment"
                          :config="editorConfig"
                        ></ckeditor>

                      </div>

                 </div>

               <div class="col-lg-12">

                      <div class="form-group">
                        <label for="invoice"> Stitching Service </label>
                        <ckeditor
                          :editor="editor"
                          name="stiching"
                          :class="{
                            'is-invalid': form.errors.has('stiching'),
                          }"
                          v-model="form.stiching"
                          :config="editorConfig"
                        ></ckeditor>

                      </div>

                      <div class="form-group text-center">
                        <button
                          :disabled="form.busy"
                          type="submit"
                          class="btn btn-primary"
                        >
                          <i class="fa fa-spin fa-spinner" v-if="form.busy"></i
                          >Submit
                        </button>
                      </div>
                 </div>

                  </div>

                </form>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</template>


<script>
import Vue from "vue";
import { Form, HasError, AlertError } from "vform";
import ClassicEditor from "@ckeditor/ckeditor5-build-classic";

Vue.component(HasError.name, HasError);
export default {
  name: "service",
  created() {
    this.getServiceInformation();
  },
  data() {
    return {
      form: new Form({
        id:"",
        fast_delivery:"",
        secure_payment:"",
        stiching:"",
        best_prices:"",
      }),
      editor: ClassicEditor,
      editorConfig: {},
      error: "",
      loading: true,
    };
  },

  methods: {
    getServiceInformation() {
      axios.get("/api/get/service/information")
      .then((resp) => {
        console.log(resp);
        if (resp.data.status == "OK") {
          this.form.id = resp.data.service.id;
          this.form.fast_delivery = resp.data.service.fast_delivery;
          this.form.secure_payment = resp.data.service.secure_payment;
          this.form.best_prices = resp.data.service.best_prices;
          this.form.stiching = resp.data.service.stiching;
          this.loading=false;
        }
      });
    },

    updateServiceInformation() {
      this.form
        .post("/api/edit/service/info/"+this.form.id, {
          transformRequest: [
            function (data, headers) {
              return objectToFormData(data);
            },
          ],
        })
        .then((resp) => {
          console.log(resp);
          if (resp.data.status == "SUCCESS") {
            this.$toasted.show(resp.data.message, {
              type: "success",
              position: "top-center",
              duration: 4000,
            });
            this.getServiceInformation();
          } else {
            this.error = "something  went to wrong";
          }
        })
        .catch((error) => {
          this.error = error.response.data.errors;
          this.$toasted.show("something  went to wrong", {
            type: "error",
            position: "top-center",
            duration: 5000,
          });
        });
    },
  },
};
</script>
