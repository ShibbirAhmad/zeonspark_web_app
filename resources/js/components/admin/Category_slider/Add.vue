<template>
  <div>
    <admin-main></admin-main>
    <div class="content-wrapper">
      <section class="content-header">
        <h1>
          <router-link :to="{name:'category_slider'}" class="btn btn-primary">
            <i class="fa fa-arrow-left"></i>
          </router-link>
        </h1>
        <ol class="breadcrumb">
          <li>
            <a href="#">
              <i class="fa fa-dashboard"></i>Dashboard
            </a>
          </li>
          <li class="active">Category slider </li>
        </ol>
      </section>
      <section class="content">
        <div class="row justify-content-center">
          <div class="col-lg-6 col-lg-offset-2">
            <div class="box box-primary">
              <div class="box-header with-border">
                <h3 class="box-title">
                  Add category or subCategory slider
                  <small>({{ image_size_text }})</small>
                </h3>
              </div>
              <div class="box-body">
                <div class="alert-danger alert" v-if="error">{{error}}</div>

                <h1 v-if="loading">
                  <i class="fa fa-spin fa-spinner"></i>
                </h1>

                <form
                  @submit.prevent="add"
                  v-else
                  @keydown="form.onKeydown($event)"
                  enctype="multipart/form-data"
                >
                  <div class="row">
                    <div class="col-lg-12">
                      <div class="form-group">
                        <label for="url">url</label>
                        <input type="text" class="form-control "
                         v-model="form.url" :class="{'is-invalid': form.errors.has('url') }"
                          name="url"
                          required
                          placeholder="https://example.com"
                          >
                        <has-error  :form="form" field="url" > </has-error>
                      </div>


                      <div class="form-group" >
                    <label>Category</label>
                    <select class="form-control" v-model="form.category_id">
                      <option value="" selected disabled>Select  Category</option>
                      <option  v-for="catgeory in categories" :key="catgeory.id" :value="catgeory.id">
                        {{ catgeory.name }}
                      </option>
                    </select>
                  </div>
                  <div class="form-group" >
                    <label>Sub Category</label>
                    <select class="form-control" v-model="form.sub_category_id">
                      <option value="" selected disabled>Select  Sub Category</option>
                      <option  v-for="sub_catgeory in sub_categories" :key="sub_catgeory.id" :value="sub_catgeory.id">
                        {{ sub_catgeory.name }}
                      </option>
                    </select>
                  </div>
                  <div class="form-group" >
                    <label>Sub Sub Category</label>
                    <select class="form-control" v-model="form.sub_sub_category_id">
                      <option value="" selected disabled>Select Sub Sub Category</option>
                      <option  v-for="sub_sub_catgeory in sub_sub_categories" :key="sub_sub_catgeory.id" :value="sub_sub_catgeory.id">
                        {{ sub_sub_catgeory.name }}
                      </option>
                    </select>
                  </div>

                      <div class="preview-image">
                        <img v-if="form.preview_image.length" class="img-responsive" :src="form.preview_image" alt="slider" />
                        <img v-else class="img-responsive" :src="'/images/noimage.png'" style="width:508px;height:150px;" />
                      </div>
                      <div class="form-group">
                        <label for="file" class="selectFile">select a file</label>
                        <input
                          style="display: none;"
                          class="form-control"
                          id="file"
                          :class="{ 'is-invalid': form.errors.has('image') }"
                          type="file"
                          @change="uploadImage"
                          name="image"
                        />
                        <has-error :form="form" field="image"></has-error>
                      </div>
                    </div>
                  </div>


                  <br />
                  <button
                    :disabled="form.busy || disabled"
                    type="submit"
                    class="btn btn-primary btn-block"
                  >
                    <i class="fa fa-spin fa-spinner" v-if="form.busy"></i>Submit
                  </button>
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
  name: "subCategory",
  created() {

    this.getData();

  },
  data() {
    return {
      form: new Form({
        image: "",
        preview_image: "",
        url: "",
        category_id:"",
        sub_category_id:"",
        sub_sub_category_id:""

      }),
      error: "",
      loading: true,
      disabled: true,
      image_width: 1184,
      image_height: 250,
      imagae_size:550,
      image_size_text: "Image size must be 1184*350px",
      categories:"",
      sub_categories:"",
      sub_sub_categories:""
    };
  },

  methods: {
    add() {
      this.form
        .post("/api/category/slider/add", {
          transformRequest: [
            function (data, headers) {
              return objectToFormData(data);
            },
          ],
        })
        .then((resp) => {
          console.log(resp)
          if (resp.data.status == "SUCCESS") {
            this.$router.push({ name: "category_slider" });
            this.$toasted.show(resp.data.message, {
              type: "success",
              position: "top-center",
              duration: 4000,
            });
          } else {
            this.error = "something went to wrong";
          }
        })
        .catch((error) => {
          this.error = error.response.data.errors;
          this.$toasted.show("something went to wrong", {
            type: "error",
            position: "top-center",
            duration: 5000,
          });
        });
    },
    uploadImage(e) {
      const file = e.target.files[0];
     if (!file.type.match("image.*")) {
         Swal.fire({
          type:'warning',
          text:'this is not any kind of image',
        });
        return;
      }
       if(file.size/1024>this.imagae_size){
        Swal.fire({
          type:'warning',
          text:`File size can not be bigger then ${this.imagae_size}KB.Reference file size is'+file.size/1024 +'KB`,
        });
        return;
      }
 ///let image file size check
      let reader = new FileReader();
      reader.readAsDataURL(file);
      reader.onload = (evt) => {
        let img = new Image();
        img.onload = () => {
          console.log(img.width, img.height);
          if (
            img.width == this.image_width &&
            img.height == this.image_height
          ) {
            this.setImage(file, evt);
            return;
          } else {
            this.disabled = true;

            Swal.fire({
              type:'error',
              text:  "Image size need " + this.image_width +"*" + this.image_height +  "px. But Upload imaze size " + img.width+ "*" +
                img.height +
                "px"
            })
            return;
          }
        };
        img.src = evt.target.result;
      };
    },
    setImage(file, evt) {
      console.log(file);
      this.disabled = false;
      this.form.image = file;
      this.form.preview_image = evt.target.result;
    },

    getData(){
      axios.get('/others')
      .then(resp=>{
        console.log(resp)
        this.categories=resp.data.categories;
        this.sub_categories=resp.data.subCategories;
        this.sub_sub_categories=resp.data.subSubCategories;
        this.loading=false;

      })
      .catch(e=>{
        console.log(e)
      })
    }

  },

};
</script>

<style scoped>
.mb-2 {
  margin-bottom: 5px !important;
}
label.selectFile {
  width: 150px;
  background: #fff;
  color: #222d32;
  padding: 10px 10px;
  text-align: center;
  font-size: 20px;
  border-radius: 5px;
  margin-top: 15px;
  cursor: pointer;
  border: 1px solid #222d32;
}
</style>
