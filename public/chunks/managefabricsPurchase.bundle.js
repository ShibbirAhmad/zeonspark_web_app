(window.webpackJsonp=window.webpackJsonp||[]).push([[118],{1271:function(t,a,s){"use strict";s.r(a);var e={components:{Index:s(16).default},created:function(){this.purchaseList()},data:function(){return{purchases:{},loading:!0,item:"10",basePath:this.$store.getters.image_base_link}},methods:{purchaseList:function(){var t=this,a=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;axios.get("/api/list/purchase?page="+a,{params:{item:this.item,status:2}}).then((function(a){console.log(a),"SUCCESS"==a.data.status?(t.purchases=a.data.purchases,t.loading=!1):t.$toasted.show("some thing want to wrong",{type:"error",position:"top-center",duration:5e3})})).catch((function(a){t.$toasted.show("some thing want to wrong",{type:"error",position:"top-center",duration:4e3})}))},memoUpload:function(t){var a=this;Swal.fire({title:"Upload a file",input:"file"}).then((function(s){if(s.value){var e=new FormData;e.append("file",s.value),e.append("id",t),axios.post("/api/purchase/memo/upload",e).then((function(t){"ok"==t.data?a.$toasted.show("file was uploaded",{type:"success",position:"top-center",duration:3e3}):a.$toasted.show("Error Found",{type:"error",position:"top-center",duration:3e3})}))}}))},formatDate:function(t){var a=t.split("-");return"".concat(a[2],"-").concat(a[1],"-").concat(a[0])}}},i=s(1),o=Object(i.a)(e,(function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("div",[s("admin-main"),t._v(" "),s("div",{staticClass:"content-wrapper"},[s("section",{staticClass:"content-header"},[s("h1",[s("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"AddPurchaseFabrics"}}},[s("i",{staticClass:"fa fa-plus"})])],1),t._v(" "),t._m(0)]),t._v(" "),s("section",{staticClass:"content"},[s("div",{staticClass:"container"},[s("div",{staticClass:"row justify-content-center"},[s("div",{staticClass:"col-lg-8 col-lg-offset-1"},[s("div",{staticClass:"box box-primary"},[s("div",{staticClass:"box-header with-border"},[s("div",{staticClass:"row"},[t._m(1),t._v(" "),s("div",{staticClass:"col-lg-4"}),t._v(" "),s("div",{staticClass:"col-lg-2"},[s("select",{directives:[{name:"model",rawName:"v-model",value:t.item,expression:"item"}],staticClass:"form-control",on:{change:[function(a){var s=Array.prototype.filter.call(a.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.item=a.target.multiple?s:s[0]},t.purchaseList]}},[s("option",{attrs:{value:"10"}},[t._v("10")]),t._v(" "),s("option",{attrs:{value:"20"}},[t._v("20")]),t._v(" "),s("option",{attrs:{value:"30"}},[t._v("30")])])])])]),t._v(" "),s("div",{staticClass:"box-body"},[s("table",{staticClass:"table"},[t._m(2),t._v(" "),s("tbody",[t.loading?s("h1",[s("i",{staticClass:"fa fa-spin fa-spinner"})]):t._l(t.purchases.data,(function(a,e){return s("tr",{key:a.id},[s("td",{attrs:{scope:"row"}},[t._v(t._s(e+1))]),t._v(" "),s("td",[t._v(t._s(t.formatDate(a.purchase_date)))]),t._v(" "),s("td",[t._v(t._s(a.supplier.company_name))]),t._v(" "),s("td",[t._v(t._s(a.invoice_no))]),t._v(" "),s("td",[t._v("\n                        "+t._s(a.total)+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(a.paid)+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(parseInt(a.total)-parseInt(a.paid))+"\n                      ")]),t._v(" "),s("td",[a.file?s("a",{staticClass:"btn btn-sn btn-success",attrs:{href:t.basePath+a.file,download:""}},[s("i",{staticClass:"fa fa-file"})]):s("a",{staticClass:"btn btn-sn btn-success",attrs:{href:"#"},on:{click:function(s){return s.preventDefault(),t.memoUpload(a.id)}}},[s("i",{staticClass:"fa fa-file"})])])])}))],2)])]),t._v(" "),s("div",{staticClass:"box-footer"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-lg-6"},[s("pagination",{attrs:{data:t.purchases},on:{"pagination-change-page":t.purchaseList}})],1),t._v(" "),s("div",{staticClass:"col-lg-6 mt-1",staticStyle:{"margin-top":"25px","text-align":"right"}},[s("p",[t._v("\n                      Showing "),s("strong",[t._v(t._s(t.purchases.from))]),t._v(" to\n                      "),s("strong",[t._v(t._s(t.purchases.to))]),t._v(" of total\n                      "),s("strong",[t._v(t._s(t.purchases.total))]),t._v(" entries\n                    ")])])])])])])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("Purchase")])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"col-lg-6"},[a("h3",{staticClass:"box-title"},[this._v("Fabrics Purchase")])])},function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("thead",[s("tr",[s("th",{attrs:{scope:"col"}},[t._v("#")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Date")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Supplier")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Invoice_no")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Total_amount")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Paid Amount")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Due Amount")]),t._v(" "),s("th",[t._v("Memo")])])])}],!1,null,"324babfe",null);a.default=o.exports}}]);