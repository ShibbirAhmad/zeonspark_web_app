(window.webpackJsonp=window.webpackJsonp||[]).push([[170],{1268:function(t,a,e){"use strict";e.r(a);var s={components:{Index:e(16).default},created:function(){this.purchaseList()},data:function(){return{purchases:{},loading:!0,item:"10",purchase_type:2,start_date:"",end_date:"",data_search:"",basePath:this.$store.getters.image_base_link,options:{format:"YYYY-MM-DD",useCurrent:!1}}},methods:{purchaseSearch:function(){var t=this,a=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;this.data_search.length>1?(this.loading=!0,axios.get("/api/purchase/search/data/"+this.data_search+"?page="+a).then((function(a){"OK"==a.data.status&&(t.purchases=a.data.purchases,t.loading=!1)})).catch((function(t){console.log(t),alert("some thing went wrong")}))):this.purchaseList()},purchaseList:function(){var t=this,a=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;axios.get("/api/list/purchase?page="+a,{params:{item:this.item,status:1}}).then((function(a){console.log(a),"SUCCESS"==a.data.status?(t.purchases=a.data.purchases,t.loading=!1):t.$toasted.show("some thing went to wrong",{type:"error",position:"top-center",duration:5e3})})).catch((function(a){t.$toasted.show("some thing went to wrong",{type:"error",position:"top-center",duration:4e3})}))},filterCompanypurchase:function(){var t=this,a=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;axios.get("/api/purchase/date/wise/filter?page="+a,{params:{start_date:this.start_date,end_date:this.end_date,item:this.item}}).then((function(a){console.log(a),"OK"==a.data.status&&(t.purchases=a.data.purchases)})).catch((function(t){console.log(t)}))},memoUpload:function(t){var a=this;Swal.fire({title:"Upload a file",input:"file"}).then((function(e){if(e.value){var s=new FormData;s.append("file",e.value),s.append("id",t),axios.post("/api/purchase/memo/upload",s).then((function(t){"ok"==t.data?a.$toasted.show("file was uploaded",{type:"success",position:"top-center",duration:3e3}):a.$toasted.show("Error Found",{type:"error",position:"top-center",duration:3e3})}))}}))},formatDate:function(t){var a=t.split("-");return"".concat(a[2],"-").concat(a[1],"-").concat(a[0])}},watch:{start_date:function(t){t.length>1&&this.filterCompanypurchase()},end_date:function(t){t.length>1&&this.filterCompanypurchase()}}},o=e(1),i=Object(o.a)(s,(function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",[e("admin-main"),t._v(" "),e("div",{staticClass:"content-wrapper"},[e("section",{staticClass:"content-header"},[e("h1",[e("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"addPurchase"}}},[e("i",{staticClass:"fa fa-plus"})])],1),t._v(" "),t._m(0)]),t._v(" "),e("section",{staticClass:"content"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row justify-content-center"},[e("div",{staticClass:"col-lg-8 col-lg-offset-1"},[e("div",{staticClass:"box box-primary"},[e("div",{staticClass:"box-header with-border"},[e("h3",{staticClass:"box-title"},[t._v("Purchase table")]),t._v(" "),e("div",{staticClass:"row",staticStyle:{"margin-top":"10px"}},[e("div",{staticClass:"col-lg-4"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.data_search,expression:"data_search"}],staticClass:"form-control",attrs:{placeholder:"enter invoice_no "},domProps:{value:t.data_search},on:{keyup:t.purchaseSearch,input:function(a){a.target.composing||(t.data_search=a.target.value)}}})]),t._v(" "),e("div",{staticClass:"col-lg-6"},[e("form",{on:{submit:function(a){return a.preventDefault(),t.filterPurchase(a)}}},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-5"},[e("date-picker",{attrs:{autocomplete:"off",placeholder:"start-date",config:t.options},model:{value:t.start_date,callback:function(a){t.start_date=a},expression:"start_date"}})],1),t._v(" "),e("div",{staticClass:"col-lg-5",staticStyle:{"margin-left":"-20px"}},[e("date-picker",{attrs:{autocomplete:"off",placeholder:"end-date",config:t.options},model:{value:t.end_date,callback:function(a){t.end_date=a},expression:"end_date"}})],1)])])]),t._v(" "),e("div",{staticClass:"col-lg-2"},[e("select",{directives:[{name:"model",rawName:"v-model",value:t.item,expression:"item"}],staticClass:"form-control",on:{change:[function(a){var e=Array.prototype.filter.call(a.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.item=a.target.multiple?e:e[0]},t.purchaseList]}},[e("option",{attrs:{value:"10"}},[t._v("10")]),t._v(" "),e("option",{attrs:{value:"20"}},[t._v("20")]),t._v(" "),e("option",{attrs:{value:"30"}},[t._v("30")]),t._v(" "),e("option",{attrs:{value:"40"}},[t._v("40")]),t._v(" "),e("option",{attrs:{value:"50"}},[t._v("50")])])])])]),t._v(" "),e("div",{staticClass:"box-body"},[e("table",{staticClass:"table"},[t._m(1),t._v(" "),e("tbody",[t.loading?e("h1",[e("i",{staticClass:"fa fa-spin fa-spinner"})]):t._l(t.purchases.data,(function(a,s){return e("tr",{key:a.id},[e("td",{attrs:{scope:"row"}},[t._v(t._s(s+1))]),t._v(" "),e("td",[t._v(t._s(t.formatDate(a.purchase_date)))]),t._v(" "),e("td",[t._v(t._s(a.supplier.company_name))]),t._v(" "),e("td",[t._v(t._s(a.invoice_no))]),t._v(" "),e("td",[t._v("\n                        "+t._s(a.total)+"\n                      ")]),t._v(" "),e("td",[e("router-link",{staticClass:"btn btn-primary btn-sm",attrs:{to:{name:"purchaseView",params:{id:a.id}}}},[e("i",{staticClass:"fa fa-eye"})])],1)])}))],2)])]),t._v(" "),e("div",{staticClass:"box-footer"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-6"},[e("pagination",{attrs:{data:t.purchases,limit:3},on:{"pagination-change-page":t.purchaseList}})],1),t._v(" "),e("div",{staticClass:"col-lg-6 mt-1",staticStyle:{"margin-top":"25px","text-align":"right"}},[e("p",[t._v("\n                      Showing "),e("strong",[t._v(t._s(t.purchases.from))]),t._v(" to\n                      "),e("strong",[t._v(t._s(t.purchases.to))]),t._v(" of total\n                      "),e("strong",[t._v(t._s(t.purchases.total))]),t._v(" entries\n                    ")])])])])])])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("Purchase")])])},function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("thead",[e("tr",[e("th",{attrs:{scope:"col"}},[t._v("#")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Date")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Supplier")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Invoice No")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Total Amount")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Action")])])])}],!1,null,"7e4f609c",null);a.default=i.exports}}]);