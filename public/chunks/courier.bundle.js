(window.webpackJsonp=window.webpackJsonp||[]).push([[82],{1256:function(t,s,a){"use strict";a.r(s);var e={created:function(){var t=this;setTimeout((function(){t.courierList()}),500)},data:function(){return{couriers:{},loading:!0,basePath:"storage/",search_data:""}},methods:{courierList:function(){var t=this;axios.get("/list/courier").then((function(s){"SUCCESS"==s.data.status&&(t.couriers=s.data.couriers,t.loading=!1)})).catch((function(t){console.log(t)}))},searchCourier:function(){var t=this;this.search_data.length>=3?axios.get("/api/search/courier/"+this.search_data).then((function(s){t.couriers=s.data.couriers})):this.courierList()},deActive:function(t){var s=this;Swal.fire({title:"Are you sure?",text:"You won't de-active this!",icon:"warning",showCancelButton:!0,confirmButtonColor:"#3085d6",cancelButtonColor:"#d33",confirmButtonText:"Yes!"}).then((function(a){a.value?axios.get("/deActive/courier/"+t.id).then((function(t){"SUCCESS"==t.data.status?(s.courierList(),s.$toasted.show(t.data.message,{position:"top-center",type:"success",duration:4e3})):s.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})).catch((function(t){s.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})):s.$toasted.show("OK ! no action here",{position:"top-center",type:"info",duration:3e3})}))},active:function(t){var s=this;Swal.fire({title:"Are you sure?",text:"You won't active this!",icon:"warning",showCancelButton:!0,confirmButtonColor:"#3085d6",cancelButtonColor:"#d33",confirmButtonText:"Yes!"}).then((function(a){a.value?axios.get("/active/courier/"+t.id).then((function(t){"SUCCESS"==t.data.status?(s.courierList(),s.$toasted.show(t.data.message,{position:"top-center",type:"success",duration:4e3})):s.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})).catch((function(t){s.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})):s.$toasted.show("Ok ! no action here",{position:"top-center",type:"info",duration:3e3})}))},getPagination:function(){var t=this,s=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;this.loading=!0,axios.get("/list/courier?page="+s).then((function(s){t.loading=!1,t.couriers=s.data.couriers}))}},computed:{}},i=a(1),o=Object(i.a)(e,(function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",[a("admin-main"),t._v(" "),a("div",{staticClass:"content-wrapper"},[a("section",{staticClass:"content-header"},[a("h1",[a("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"courierAdd"}}},[a("i",{staticClass:"fa fa-plus"})])],1),t._v(" "),t._m(0)]),t._v(" "),a("section",{staticClass:"content"},[a("div",{staticClass:"container"},[a("div",{staticClass:"row justify-content-center"},[a("div",{staticClass:"col-lg-8 col-lg-offset-1"},[a("div",{staticClass:"box box-primary"},[a("div",{staticClass:"box-header with-border"},[a("div",{staticClass:"row"},[t._m(1),t._v(" "),a("div",{staticClass:"col-md-6"},[a("input",{directives:[{name:"model",rawName:"v-model",value:t.search_data,expression:"search_data"}],staticClass:"form-control",attrs:{type:"text",placeholder:"search here"},domProps:{value:t.search_data},on:{keyup:t.searchCourier,input:function(s){s.target.composing||(t.search_data=s.target.value)}}})])])]),t._v(" "),a("div",{staticClass:"box-body"},[a("table",{staticClass:"table"},[t._m(2),t._v(" "),a("tbody",[t.loading?a("h1",{staticClass:"text-center"},[a("i",{staticClass:"fa fa-spin fa-spinner"})]):t._e(),t._v(" "),t._l(t.couriers.data,(function(s,e){return a("tr",[a("td",{attrs:{scope:"row"}},[t._v(t._s(e+1))]),t._v(" "),a("td",[t._v(t._s(s.name))]),t._v(" "),a("td",[1==s.status?a("span",{staticClass:"badge"},[t._v("Active")]):a("span",{staticClass:"badge text-bold"},[t._v("De-Active")])]),t._v(" "),a("td",[a("router-link",{staticClass:"btn btn-success btn-sm",attrs:{to:{name:"editCourier",params:{id:s.id}}}},[a("i",{staticClass:"fa fa-edit"})]),t._v(" "),1==s.status?a("a",{staticClass:"btn btn-warning",attrs:{title:"De-active"},on:{click:function(a){return t.deActive(s)}}},[a("i",{staticClass:"fa fa-ban"})]):a("a",{staticClass:"btn btn-primary",attrs:{title:"active"},on:{click:function(a){return t.active(s)}}},[a("i",{staticClass:"fa fa-check"})])],1)])}))],2)])]),t._v(" "),a("div",{staticClass:"box-footer"},[a("div",{staticClass:"row"},[a("div",{staticClass:"col-lg-6"},[a("pagination",{attrs:{data:t.couriers},on:{"pagination-change-page":t.getPagination}})],1),t._v(" "),a("div",{staticClass:"col-lg-6 mt-1",staticStyle:{"margin-top":"25px","text-align":"right"}},[a("p",[t._v("\n                      Showing "),a("strong",[t._v(t._s(t.couriers.from))]),t._v(" to\n                      "),a("strong",[t._v(t._s(t.couriers.to))]),t._v(" of total\n                      "),a("strong",[t._v(t._s(t.couriers.total))]),t._v(" entries\n                    ")])])])])])])])])])])],1)}),[function(){var t=this.$createElement,s=this._self._c||t;return s("ol",{staticClass:"breadcrumb"},[s("li",[s("a",{attrs:{href:"#"}},[s("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),s("li",{staticClass:"active"},[this._v("Courier")])])},function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"col-md-6"},[s("h3",{staticClass:"box-title"},[this._v("Courier table")])])},function(){var t=this.$createElement,s=this._self._c||t;return s("thead",[s("tr",[s("th",{attrs:{scope:"col"}},[this._v("#")]),this._v(" "),s("th",{attrs:{scope:"col"}},[this._v("Name")]),this._v(" "),s("th",{attrs:{scope:"col"}},[this._v("status")]),this._v(" "),s("th",{attrs:{scope:"col"}},[this._v("Action")])])])}],!1,null,"3fc9ccac",null);s.default=o.exports}}]);