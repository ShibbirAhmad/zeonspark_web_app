 <template>
    <div>
        <admin-main></admin-main>
        <div class="content-wrapper">
            <section class="content-header">
                <h1>
                    <router-link :to="{name:'category_slider_add'}" class="btn btn-primary"><i class="fa fa-plus"></i></router-link>

                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
                    <li class="active">Category Slider</li>
                </ol>
            </section>
            <section class="content">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="box box-primary">
                                <div class="box-header with-border text-center">
                                   <h3 class="box-title"> Category Slider table</h3>
                                </div>
                                <div class="box-body">
                                    <table class="table table-striped text-center table-bordered table-hover ">
                                        <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Image</th>
                                            <th scope="col">Category</th>
                                            <th scope="col">Sub Category</th>
                                            <th scope="col">Sub Sub Category</th>
                                            <th scope="col">status</th>
                                            <th scope="col">action</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <h1 v-if="loading"><i class="fa fa-spin fa-spinner"></i></h1>
                                        <tr v-for="(slider,index) in sliders.data" :key="index" v-else>
                                            <td scope="row">{{index+1}}</td>
                                            <td>
                                                <div v-if="slider.image.length">
                                                   <img :src="basePath+slider.image"
                                                     style="width: 100px;" alt="slider Image">
                                                </div>
                                                <div v-else>
                                                    <img :src="basePath+slider.image"
                                                     style="width: 100px;" alt="slider Image">
                                                 </div>

                                            </td>
                                             <td>
                                                 <span v-if="slider.category" class="bage"> {{ slider.category.name }}  </span>
                                             </td>
                                               <td>
                                                 <span v-if="slider.sub_category" class="bage"> {{ slider.sub_category.name }}  </span>
                                             </td>
                                               <td>
                                                 <span v-if="slider.sub_sub_category" class="bage"> {{ slider.sub_sub_category.name }}  </span>
                                             </td>
                                            <td>
                                                <span v-if="slider.status==1" class="badge">Active</span>
                                                <span v-else class="badge">De-active</span>
                                            </td>
                                            <td>
                                                <router-link class="btn btn-sm btn-success" :to="{ name : 'category_slider_edit', params :{ id : slider.id }}"> <i class="fa fa-edit"> </i></router-link>
                                                <a class="btn btn-sm btn-danger" @click="destroy(slider)"><i class="fa fa-trash"></i></a>

                                                <a class="btn btn-sm btn-warning" title="De-active" @click="deActive(slider)"
                                                   v-if="slider.status==1"><i class="fa fa-ban"></i></a>
                                                <a class="btn btn-sm btn-primary" title="active" @click="active(slider)"
                                                   v-else><i
                                                    class="fa fa-check"></i></a>

                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="box-footer">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <pagination :data="sliders"
                                                        @pagination-change-page="getSlider">

                                            </pagination>

                                        </div>
                                        <div class="col-lg-6 mt-1" style="margin-top: 25px;text-align:right;">
                                            <p>Showing <strong>{{sliders.from}}</strong> to
                                                <strong>{{sliders.to}}</strong> of total
                                                <strong>{{sliders.total}}</strong> entries
                                            </p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>

</template>

<script>

    export default {
        created() {
            setTimeout(() => {
                this.getSlider();
            }, 500)
        },
        data() {
            return {
                sliders: {},
                loading: true,
                search: '',
                basePath:this.$store.state.image_base_link,
                page: 1,
            }
        },
        methods: {
            getSlider(page) {
                axios.get('/api/category/list/slider?page=' + page )
                    .then((resp) => {
                        console.log(resp);
                        if (resp.data.status == 'SUCCESS') {
                            this.sliders = resp.data.sliders;
                            this.loading = false
                        } else {
                            this.$toasted.show('something went wrong', {
                                type: "error",
                                position: 'top-center',
                                duration: 5000
                            });
                        }
                    })
                    .catch((error) => {
                        console.log(error)
                        this.$toasted.show(error.response.data.message, {
                            type: "error",
                            position: 'top-center',
                            duration: 4000
                        });
                    })
            },

            active(slider) {
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't active this!",
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes!'
                }).then((result) => {
                    if (result.value) {

                        axios.get('/api/category/active/slider/' + slider.id)
                            .then((resp) => {
                                if (resp.data.status == 'SUCCESS') {
                                    this.getSlider();
                                    this.$toasted.show(resp.data.message, {
                                        position: 'top-center',
                                        type: 'success',
                                        duration: 4000
                                    });
                                } else {
                                    this.$toasted.show('something went to wrong', {
                                        position: 'top-center',
                                        type: 'error',
                                        duration: 4000
                                    });
                                }

                            })

                    } else {
                        this.$toasted.show('Ok ! no action here', {
                            position: 'top-center',
                            type: 'info',
                            duration: 3000
                        });
                    }
                })
            },
            deActive(slider) {
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't de-active this!",
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes!'
                }).then((result) => {
                    if (result.value) {

                        axios.get('/api/category/deActive/slider/' + slider.id)
                            .then((resp) => {
                                if (resp.data.status == 'SUCCESS') {
                                    this.getSlider();
                                    this.$toasted.show(resp.data.message, {
                                        position: 'top-center',
                                        type: 'success',
                                        duration: 4000
                                    });
                                } else {
                                    this.$toasted.show('something went to wrong', {
                                        position: 'top-center',
                                        type: 'error',
                                        duration: 4000
                                    });
                                }

                            })
                    } else {
                        this.$toasted.show('Ok ! no action here', {
                            position: 'top-center',
                            type: 'info',
                            duration: 3000
                        });
                    }
                })
            },
            destroy(slider) {
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't delete this slider!",
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes!'
                }).then((result) => {
                    if (result.value) {

                        axios.get('/api/category/delete/slider/' + slider.id)
                            .then((resp) => {
                                //console.log(resp)
                                if (resp.data.status == 'SUCCESS') {
                                    this.getSlider();
                                    this.$toasted.show(resp.data.message, {
                                        position: 'top-center',
                                        type: 'success',
                                        duration: 4000
                                    });
                                } else {
                                    this.$toasted.show('something went to wrong', {
                                        position: 'top-center',
                                        type: 'error',
                                        duration: 4000
                                    });
                                }

                            })
                            .catch((error) => {
                                console.log(error)
                                this.$toasted.show('something went to wrong', {
                                    position: 'top-center',
                                    type: 'error',
                                    duration: 4000
                                });
                            })


                    } else {
                        this.$toasted.show('Ok ! no action here', {
                            position: 'top-center',
                            type: 'info',
                            duration: 3000
                        });
                    }
                })
            },

            


        }
    }

</script>

<style >

</style>
