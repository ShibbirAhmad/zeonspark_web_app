<template>
    <div>
        <admin-main></admin-main>
        <div class="content-wrapper">
            <section class="content-header">
                <h1>
                    <router-link :to="{name:'FabricsSupplier'}" class="btn btn-primary"><i class="fa fa-arrow-right"></i></router-link>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
                    <li class="active">Merchant</li>
                </ol>
            </section>
            <section class="content">
                <div class="row justify-content-center">
                    <div class="col-lg-6 col-lg-offset-2">
                        <div class="box box-primary">
                            <div class="box-header with-border text-center">
                                <h3 class="box-title">Add Fabrics Supplier</h3>
                            </div>
                            <div class="box-body">
                                <h1 v-if="loading"><i class="fa fa-spinner fa-spin"></i></h1>
                                <form v-else @submit.prevent="add" @keydown="form.onKeydown($event)"
                                      enctype="multipart/form-data">

                                    <div class="alert-danger alert" v-if="error">
                                        {{error}}
                                    </div>
                                    <!-- <div class="form-group">
                                        <label>Name</label>
                                        <input v-model="form.name" type="text" name="name"
                                               class="form-control" :class="{ 'is-invalid': form.errors.has('name') }"
                                               autofocus autocomplete="off" placeholder="name" >
                                        <has-error :form="form" field="name"></has-error>

                                    </div> -->
                                     <input v-model="form.company_name" type="hidden" name="name"  >
                                    <div class="form-group">
                                        <label>Company_name</label>
                                        <input v-model="form.company_name" type="text" name="company_name"
                                               class="form-control" :class="{ 'is-invalid': form.errors.has('company_name') }"
                                                 autocomplete="off" placeholder="company_name">
                                        <has-error :form="form" field="company_name"></has-error>

                                    </div>
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input v-model="form.phone" type="text"  minlength="11" maxlength="11" name="phone"
                                               class="form-control"
                                               :class="{ 'is-invalid': form.errors.has('phone') }"
                                               autofocus autocomplete="off" placeholder="phone">
                                        <has-error :form="form" field="phone"></has-error>

                                    </div>
                                    <div class="form-group">
                                        <label>address</label>
                                        <input class="form-control" v-model="form.address" :class="{ 'is-invalid': form.errors.has('address') }"
                                               type="text" placeholder="address" name="address" autocomplete="off">
                                        <has-error :form="form" field="address"></has-error>
                                    </div>
                                    <div class="form-group">
                                        <label>Opening Balance</label>
                                        <input class="form-control" v-model="form.opening_balance"
                                               type="text" placeholder="supplier opening balance"  autocomplete="off">
                                    </div>
                                   <div class="form-group text-center">
                                        <button :disabled="form.busy" type="submit" class="btn btn-primary"><i
                                        class="fa fa-spin fa-spinner" v-if="form.busy"></i>Submit
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
    import Vue from 'vue'
    import {Form, HasError, AlertError} from 'vform'

    Vue.component(HasError.name, HasError)
    export default {
        name: "Add",
        created() {

        },
        data() {
            return {
                form: new Form({
                    name: "",
                    company_name: '',
                    address: '',
                    phone: "",
                    opening_balance:'',
                    type:2

                }),

                loading: false,
                error: ''
            }
        },

        methods: {

            add() {

                this.form.post('/supplier/add', {
                    transformRequest: [function (data, headers) {
                        return objectToFormData(data)
                    }],
                    onUploadProgress: e => {
                        // Do whatever you want with the progress event
                        console.log(e)
                    }
                })
                    .then((resp) => {
                       console.log(resp)
                        if (resp.data.status == 'SUCCESS') {
                            this.$router.push({name: 'FabricsSupplier'});
                            this.$toasted.show(resp.data.message, {
                                type: "success",
                                position: 'top-center',
                                duration: 4000
                            });
                        } else {
                            this.error = 'some thing want to wrong';
                        }

                    })
                    .catch((error) => {
                      //  console.log(error)
                        this.error = 'some thing want to wrong';
                    })
            },
      },

    }
</script>

<style scoped>
    .mb-2 {
        margin-bottom: 5px !important;
    }
</style>
