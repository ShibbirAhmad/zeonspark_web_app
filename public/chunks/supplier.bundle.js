(window.webpackJsonp=window.webpackJsonp||[]).push([[212],{1225:function(t,s,e){"use strict";e.r(s);var a={created:function(){this.supplierList()},data:function(){return{suppliers:{},loading:!0,basePath:"storage/",search:"",item:""}},methods:{supplierList:function(){var t=this,s=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;axios.get("/list/supplier?page="+s,{params:{type:1}}).then((function(s){console.log(s),"SUCCESS"==s.data.status&&(t.suppliers=s.data.suppliers,t.loading=!1)})).catch((function(t){console.log(t)}))},searchSupplier:function(){var t=this,s=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;axios.get("/api/search/supplier/"+this.search+"?page="+s).then((function(s){console.log(s),"OK"==s.data.status?t.suppliers=s.data.suppliers:t.supplierList()})).catch()},deActive:function(t){var s=this;Swal.fire({title:"Are you sure?",text:"You won't de-active this!",type:"warning",showCancelButton:!0,confirmButtonColor:"#3085d6",cancelButtonColor:"#d33",confirmButtonText:"Yes!"}).then((function(e){e.value?axios.get("/deActive/supplier/"+t.id).then((function(t){"SUCCESS"==t.data.status?(s.supplierList(),s.$toasted.show(t.data.message,{position:"top-center",type:"success",duration:4e3})):s.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})).catch((function(t){s.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})):s.$toasted.show("OK ! no action here",{position:"top-center",type:"info",duration:3e3})}))},active:function(t){var s=this;Swal.fire({title:"Are you sure?",text:"You won't active this!",type:"warning",showCancelButton:!0,confirmButtonColor:"#3085d6",cancelButtonColor:"#d33",confirmButtonText:"Yes!"}).then((function(e){e.value?axios.get("/active/supplier/"+t.id).then((function(t){"SUCCESS"==t.data.status?(s.supplierList(),s.$toasted.show(t.data.message,{position:"top-center",type:"success",duration:4e3})):s.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})).catch((function(t){s.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})):s.$toasted.show("Ok ! no action here",{position:"top-center",type:"info",duration:3e3})}))},exportSupplier:function(){window.open("/api/export/supplier","_balnk")}}},i=e(1),o=Object(i.a)(a,(function(){var t=this,s=t.$createElement,e=t._self._c||s;return e("div",[e("admin-main"),t._v(" "),e("div",{staticClass:"content-wrapper"},[e("section",{staticClass:"content-header"},[e("h1",[e("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"supllierAdd"}}},[e("i",{staticClass:"fa fa-plus"})]),t._v(" "),e("button",{staticClass:"btn  btn-success",on:{click:t.exportSupplier}},[e("i",{staticClass:"fa fa-download"}),t._v(" Export Suppliers ")])],1),t._v(" "),t._m(0)]),t._v(" "),e("section",{staticClass:"content"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row justify-content-center"},[e("div",{staticClass:"col-lg-11"},[e("div",{staticClass:"box box-primary"},[e("div",{staticClass:"box-header with-border"},[e("div",{staticClass:"row mt-2"},[t._m(1),t._v(" "),e("div",{staticClass:"col-md-4"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.search,expression:"search"}],staticClass:"form-control",attrs:{type:"text",placeholder:"name, address or phone "},domProps:{value:t.search},on:{keyup:t.searchSupplier,input:function(s){s.target.composing||(t.search=s.target.value)}}})]),t._v(" "),e("div",{staticClass:"col-lg-2"},[e("select",{directives:[{name:"model",rawName:"v-model",value:t.item,expression:"item"}],staticClass:"form-control",attrs:{id:""},on:{change:[function(s){var e=Array.prototype.filter.call(s.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.item=s.target.multiple?e:e[0]},t.supplierList]}},[e("option",{attrs:{value:"10"}},[t._v("10")]),t._v(" "),e("option",{attrs:{value:"20"}},[t._v("20")]),t._v(" "),e("option",{attrs:{value:"30"}},[t._v("30")]),t._v(" "),e("option",{attrs:{value:"40"}},[t._v("40")]),t._v(" "),e("option",{attrs:{value:"50"}},[t._v("50")])])])])]),t._v(" "),e("div",{staticClass:"box-body"},[e("table",{staticClass:"table table-striped text-center table-hover table-bordered"},[t._m(2),t._v(" "),e("tbody",[t.loading?e("h1",{staticClass:"text-center"},[e("i",{staticClass:"fa fa-spin fa-spinner"})]):t._e(),t._v(" "),t._l(t.suppliers.data,(function(s,a){return e("tr",{key:a},[e("td",{attrs:{scope:"row"}},[t._v(t._s(a+1))]),t._v(" "),e("td",[t._v(t._s(s.name))]),t._v(" "),e("td",[e("router-link",{attrs:{to:{name:"SupplierAmount",params:{id:s.id}}}},[t._v(" "+t._s(s.company_name)+" ")])],1),t._v(" "),e("td",[t._v(t._s(s.phone))]),t._v(" "),e("td",[t._v(t._s(s.address))]),t._v(" "),e("td",[1==s.status?e("span",{staticClass:"badge"},[t._v("Active")]):e("span",{staticClass:"badge text-bold"},[t._v("De-Active")])]),t._v(" "),e("td",[e("router-link",{staticClass:"btn btn-success btn-sm",attrs:{to:{name:"supplierEdit",params:{id:s.id}}}},[e("i",{staticClass:"fa fa-edit"})]),t._v(" "),1==s.status?e("a",{staticClass:"btn btn-sm btn-warning",attrs:{title:"De-active"},on:{click:function(e){return t.deActive(s)}}},[e("i",{staticClass:"fa fa-ban"})]):e("a",{staticClass:"btn btn-sm btn-primary",attrs:{title:"active"},on:{click:function(e){return t.active(s)}}},[e("i",{staticClass:"fa fa-check"})])],1)])}))],2)])]),t._v(" "),e("div",{staticClass:"box-footer"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-6"},[e("pagination",{attrs:{data:t.suppliers},on:{"pagination-change-page":t.supplierList}})],1),t._v(" "),e("div",{staticClass:"col-lg-6 mt-1",staticStyle:{"margin-top":"25px","text-align":"right"}},[e("p",[t._v("\n                      Showing "),e("strong",[t._v(t._s(t.suppliers.from))]),t._v(" to\n                      "),e("strong",[t._v(t._s(t.suppliers.to))]),t._v(" of total\n                      "),e("strong",[t._v(t._s(t.suppliers.total))]),t._v(" entries\n                    ")])])])])])])])])])])],1)}),[function(){var t=this.$createElement,s=this._self._c||t;return s("ol",{staticClass:"breadcrumb"},[s("li",[s("a",{attrs:{href:"#"}},[s("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),s("li",{staticClass:"active"},[this._v("Suppliers")])])},function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"col-md-6"},[s("h3",{staticClass:"box-title"},[this._v("Suppliers table")])])},function(){var t=this,s=t.$createElement,e=t._self._c||s;return e("thead",[e("tr",[e("th",{attrs:{scope:"col"}},[t._v("#")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Name")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("company_name")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("phone")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("address")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("status")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Action")])])])}],!1,null,"89ffea66",null);s.default=o.exports}}]);