<template>
  <div>
    <admin-main></admin-main>
    <div class="content-wrapper">
      <section class="content-header">
        <h1>
          <router-link :to="{ name: 'company' }" class="btn btn-primary"
            ><i class="fa fa-arrow-left"></i
          ></router-link>
        </h1>
        <ol class="breadcrumb">
          <li>
            <a href="#"><i class="fa fa-dashboard"></i>Dashboard</a>
          </li>
          <li class="active">Company</li>
        </ol>
      </section>
      <section class="content">
        <div class="row justify-content-center">
          <div class="col-lg-6 col-lg-offset-2">
            <div class="box box-primary">
              <div class="box-header with-border text-center ">
                <h3 class="box-title">Edit Company</h3>
              </div>
              <div class="box-body">
                <h1 v-if="loading"><i class="fa fa-spinner fa-spin"></i></h1>
                <form
                  v-else
                  @submit.prevent="add"
                  @keydown="form.onKeydown($event)"
                  enctype="multipart/form-data"
                >
                  <div class="alert-danger alert" v-if="error">
                    {{ error }}
                  </div>
                  <div class="form-group">
                    <label>Name</label>
                    <input
                      v-model="form.name"
                      type="text"
                      name="name"
                      class="form-control"
                      :class="{ 'is-invalid': form.errors.has('name') }"
                      autofocus
                      autocomplete="off"
                      placeholder="Ex:Daraz"
                    />
                    <has-error :form="form" field="name"></has-error>
                  </div>

                            <div class="form-group">
                    <label>Phone</label>
                    <input
                      v-model="form.phone"
                      type="text"
                      required
                      :class="{'is-invalid':form.errors.has('phone') }"
                      maxlength="11"
                      placeholder="01xxxxxxxxx"
                       class="form-control"
                    />
                    <has-error :form="form" field="phone"> </has-error>
                  </div>

                   <div class="form-group">
                    <label>Address</label>
                    <input
                      v-model="form.address"
                      type="text"
                      required
                       class="form-control"
                      placeholder="Dhaka"
                    />
                  </div>
                   <div class="form-group text-center">

                   <button
                    :disabled="form.busy"
                    type="submit"
                    class="btn btn-primary" >
                    <i class="fa fa-spin fa-spinner" v-if="form.busy"></i>Submit
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
  name: "Add",
  created() {
      this.edit()
  },
  data() {
    return {
      form: new Form({
        name: "",
        phone: "",
        address: "",
      }),
      loading: true,
      error: "",
    };
  },

  methods: {
    add() {
      this.form
        .post("/company/update/"+this.$route.params.id)
        .then((resp) => {
          console.log(resp);
          if (resp.data.status == "SUCCESS") {
            this.$router.push({ name: "company" });
            this.$toasted.show(resp.data.message, {
              type: "success",
              position: "top-center",
              duration: 2000,
            });
          } else {
            this.error = "some thing went to wrong";
          }
        })

    },

    edit(){
        axios.get('/company/edit/'+this.$route.params.id)
        .then(resp=>{
                this.form.name=resp.data.name;
                this.form.phone=resp.data.phone;
                this.form.address=resp.data.address;
                this.loading=false;
        })
    }
  },
};
</script>

<style scoped>
.mb-2 {
  margin-bottom: 5px !important;
}
</style>
