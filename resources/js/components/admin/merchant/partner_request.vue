<template>
  <div>
    <admin-main></admin-main>
    <div class="content-wrapper">
      <section class="content-header">
        <h1>
          <a  @click="back" class="btn btn-primary"
            ><i class="fa fa-arrow-left"></i
          ></a>

        </h1>
        <ol class="breadcrumb">
          <li>
            <a href="#"><i class="fa fa-dashboard"></i>Dashboard</a>
          </li>
          <li class="active">partner</li>
        </ol>
      </section>

      <section class="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-11">
              <div class="box box-primary">
                <div class="box-header with-border text-cetner">
                              <h3 class="box-title"> Partner Reqesuts </h3>
                </div>

                <div class="box-body">
                  <table class="table table-hover table-bordered table-striped text-center">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">phone</th>
                        <th scope="col">City</th>
                        <th scope="col">Country</th>
                        <th scope="col">Address</th>
                        <th scope="col">Product Details</th>
                      </tr>
                    </thead>
                    <tbody>
                      <h1 class="text-center" v-if="loading">
                        <i class="fa fa-spin fa-spinner"></i>
                      </h1>
                      <tr
                        v-for="(partner, index) in partnerList.data"
                        :key="index"
                      >
                        <td>{{ index }}</td>
                        <td>{{ partner.name }}</td>
                        <td>{{ partner.email }}</td>
                        <td>{{ partner.phone }}</td>
                        <td>{{ partner.city }}</td>
                        <td>{{ partner.country }}</td>
                        <td> <p v-html="partner.address" > </p> </td>
                        <td> <p v-html="partner.product_details" > </p> </td>


                      </tr>
                    </tbody>
                  </table>
                  <div class="row">
                    <div class="col-md-6">
                      <pagination
                        :data="partnerList"
                        :limit="3"
                        @pagination-change-page="getpartnerList"
                      >
                        <span slot="prev-nav">&lt; Previous</span>
                        <span slot="next-nav">Next &gt;</span>
                      </pagination>
                    </div>
                    <div
                      class="col-md-6"
                      style="margin-top: 25px; text-align: right"
                    >
                      <p>
                        showing <strong>{{ partnerList.from }} </strong> to
                        <strong>{{ partnerList.from }} </strong> of total
                        entities {{ partnerList.total }}
                      </p>
                    </div>
                  </div>
                </div>
                <div class="box-footer"></div>
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
  mounted() {
    setTimeout(() => {
      this.loading = false;
    }, 500);
    this.getpartnerList();
  },

  data() {
    return {
      partnerList: {},
      loading: true,
      item: 10,
      basePath: this.$store.getters.image_base_link,
      search : '',
    };
  },

  methods: {

    back(){
      return window.history.back();
    },

    getpartnerList(page = 1) {
      axios
        .get("/api/partner/request/list?page="+page)
        .then((resp) => {
          console.log(resp);
          if (resp.data.status == "OK") {
            this.partnerList = resp.data.partners;
          }
        })
    },



  },
};
</script>



<style scoped>
.box-primary {
  overflow-x: scroll;
}
</style>
