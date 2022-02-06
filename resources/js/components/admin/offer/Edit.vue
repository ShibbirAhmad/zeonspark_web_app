<template>
  <div>
    <admin-main></admin-main>
    <div class="content-wrapper">
      <section class="content-header">
        <h1>
          <router-link :to="{name:'offer_banner'}" class="btn btn-primary">
            <i class="fa fa-arrow-left"></i>
          </router-link>
        </h1>
        <ol class="breadcrumb">
          <li>
            <a href="#">
              <i class="fa fa-dashboard"></i>Dashboard
            </a>
          </li>
          <li class="active">Baner</li>
        </ol>
      </section>
      <section class="content">
        <div class="row justify-content-center">
          <div class="col-lg-6 col-lg-offset-2">
            <div class="box box-primary">
              <div class="box-header with-border text-center">
                <h3 class="box-title">
                  Edit Offer Banner
                  <small>(Image size must be 390*180px)</small>
                </h3>
              </div>
              <div class="box-body">
                <h1 v-if="loading">
                  <i class="fa fa-spinner fa-spin"></i>
                </h1>
                <form
                  v-else
                  @submit.prevent="update"
                  @keydown="form.onKeydown($event)"
                  enctype="multipart/form-data"
                >
                  <div class="alert-danger alert" v-if="error">{{ error }}</div>
                  <div class="form-group">
                    <label>Banner Image</label>
                    <input
                      type="file"
                      name="image"
                      class="form-control"
                      @change="uploadImage"
                      :class="{ 'is-invalid': form.errors.has('image') }"
                    />
                    <has-error :form="form" field="image"></has-error>
                  </div>
                 <div class="form-group">
                    <label>url</label>
                    <input
                      v-model="form.url"
                      type="text"
                      name="url"
                      class="form-control"
                      :class="{  'is-invalid': form.errors.has('url') }"
                       required
                    />
                    <has-error :form="form" field="url"></has-error>
                  </div>
                   <!-- 
                   <div class="form-group">
                    <label>Quate</label>
                    <input
                      v-model="form.quate"
                      type="text"
                      class="form-control"
                       required
                    />
                  </div>
                    <div class="form-group">
                     <label>Short Description</label>
                    <input
                      v-model="form.short_description"
                      type="text"
                      class="form-control"
                       required
                    />
                  </div> -->
                   <div class="form-group text-center">
                     <button :disabled="form.busy || disabled" type="submit" class="btn btn-primary">
                    <i class="fa fa-spin fa-spinner" v-if="form.busy"></i>Save
                  </button>
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

Vue.component(HasError.name, HasError);
export default {
  created() {
    this.getOfferBanner();
    setTimeout(() => {
      this.loading = false;
    }, 500);
  },
  data() {
    return {
      form: new Form({
        image: "",
        url: "",
        // quate: "",
        // short_description: "",
      }),
      loading: true,
      error: "",
      disabled: false,
    };
  },

  methods: {

    getOfferBanner() {
       axios.get('/api/banner/offer/item/'+this.$route.params.id)
       .then((resp) => {
          this.form.url = resp.data.offer.url;
          // this.form.quate = resp.data.offer.quate;
          // this.form.short_description = resp.data.offer.short_description;

        })
     },

    update() {
      this.form
        .post("/api/banner/offer/edit/"+this.$route.params.id, {
          transformRequest: [
            function (data, headers) {
              return objectToFormData(data);
            },
          ],
        })
        .then((resp) => {
          // console.log(resp)
          if (resp.data.status == "OK") {
            this.$router.push({ name: "offer_banner" });
            this.$toasted.show(resp.data.message, {
              type: "success",
              position: "top-center",
              duration: 4000,
            });
          } else {
            this.error = "something  went to wrong";
          }
        })

    },
    uploadImage(e) {
      const file = e.target.files[0];

      ///let image file size check
      let reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onload = (evt) => {
        let img = new Image();
        img.onload = () => {
          if (img.width == 390 && img.height == 180) {
            this.setImage(file);
            return;
          } else {
            this.disabled = true;
            alert(
              "Image size need 390*180px.But Upload imaze size" +
                img.width +
                "*" +
                img.height +
                "px"
            );
            return;
          }
        };
        img.src = evt.target.result;
      };
    },
    setImage(file) {
      this.disabled = false;
      this.form.image = file;
    },
  },
};
</script>

<style scoped>
.mb-2 {
  margin-bottom: 5px !important;
}
</style>
