(window.webpackJsonp=window.webpackJsonp||[]).push([[174],{1362:function(t,e,r){"use strict";r.r(e);var a=r(2),o=r.n(a),s=r(0);o.a.component(s.HasError.name,s.HasError);var i={name:"Add",created:function(){this.cDate(),this.getPrintedProducts()},data:function(){return{form:new s.Form({invoice_no:"",product_name:"select product",company_id:this.$route.params.id,date:"",qty:""}),printed_list:"",loading:!0,error:"",options:{format:"YYYY-MM-DD",useCurrent:!1}}},methods:{getPrintedProducts:function(){var t=this;axios.get("/api/get/printed/products/"+this.$route.params.id).then((function(e){console.log(e),t.printed_list=e.data}))},receivePrint:function(){var t=this;this.form.post("/api/receive/printed/product/"+this.$route.params.id).then((function(e){console.log(e),"OK"==e.data.status?(t.$router.push({name:"print_house_details",params:{id:t.$route.params.id}}),t.$toasted.show(e.data.message,{type:"success",position:"top-right",duration:4e3})):t.error="some thing want to wrong"}))},cDate:function(){var t=new Date,e=t.getMonth()+1,r=t.getDate(),a=t.getFullYear()+"-"+((""+e).length<2?"0":"")+e+"-"+((""+r).length<2?"0":"")+r;this.form.date=a,this.loading=!1}}},n=(r(873),r(1)),c=Object(n.a)(i,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",[r("admin-main"),t._v(" "),r("div",{staticClass:"content-wrapper"},[r("section",{staticClass:"content-header"},[r("h1",[r("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"print_house_details",params:{id:t.$route.params.id}}}},[r("i",{staticClass:"fa fa-arrow-left"})])],1),t._v(" "),t._m(0)]),t._v(" "),r("section",{staticClass:"content"},[r("div",{staticClass:"row justify-content-center"},[r("div",{staticClass:"col-lg-6 col-lg-offset-2"},[r("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),r("div",{staticClass:"box-body"},[t.loading?r("h1",[r("i",{staticClass:"fa fa-spinner fa-spin"})]):r("form",{attrs:{enctype:"multipart/form-data"},on:{submit:function(e){return e.preventDefault(),t.receivePrint(e)},keydown:function(e){return t.form.onKeydown(e)}}},[t.error?r("div",{staticClass:"alert-danger alert"},[t._v("\n                  "+t._s(t.error)+"\n                ")]):t._e(),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-md-6"},[r("div",{staticClass:"form-group"},[r("label",[t._v("Date")]),t._v(" "),r("date-picker",{class:{"is-invalid":t.form.errors.has("date")},attrs:{autocomplete:"off",config:t.options},model:{value:t.form.date,callback:function(e){t.$set(t.form,"date",e)},expression:"form.date"}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"date"}})],1)]),t._v(" "),r("div",{staticClass:"col-md-6"},[r("div",{staticClass:"form-group"},[r("label",[t._v(" Invoice")]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.invoice_no,expression:"form.invoice_no"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("invoice_no")},attrs:{type:"text",name:"invoice_no",placeholder:"invoice no"},domProps:{value:t.form.invoice_no},on:{input:function(e){e.target.composing||t.$set(t.form,"invoice_no",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"invoice_no"}})],1)])]),t._v(" "),r("div",{staticClass:"form-group"},[r("select",{directives:[{name:"model",rawName:"v-model",value:t.form.product_name,expression:"form.product_name"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("product_name")},on:{change:function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form,"product_name",e.target.multiple?r:r[0])}}},[r("option",{attrs:{disabled:"",value:"select product"}},[t._v(" select product ")]),t._v(" "),t._l(t.printed_list,(function(e,a){return r("option",{key:a,domProps:{value:a}},[t._v(" \n            \n                        "+t._s(a)+" \n                        ")])}))],2),t._v(" "),r("has-error",{attrs:{form:t.form,field:"product_name"}})],1),t._v(" "),r("div",{staticClass:"form-group"},[r("label",[t._v(" Delivered Quantity ")]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.form.qty,expression:"form.qty"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("qty")},attrs:{type:"text",name:"qty",autocomplete:"off",placeholder:"5000"},domProps:{value:t.form.qty},on:{input:function(e){e.target.composing||t.$set(t.form,"qty",e.target.value)}}}),t._v(" "),r("has-error",{attrs:{form:t.form,field:"qty"}})],1),t._v(" "),r("div",{staticClass:"form-group text-center"},[r("button",{staticClass:"btn btn-primary",attrs:{disabled:t.form.busy,type:"submit"}},[t.form.busy?r("i",{staticClass:"fa fa-spin fa-spinner"}):t._e(),t._v("Submit\n                  ")])])])])])])])])])],1)}),[function(){var t=this.$createElement,e=this._self._c||t;return e("ol",{staticClass:"breadcrumb"},[e("li",[e("a",{attrs:{href:"#"}},[e("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),e("li",{staticClass:"active"},[this._v("Print")])])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"box-header with-border text-center"},[e("h3",{staticClass:"box-title"},[this._v("Receive Printed Product")])])}],!1,null,"f3833c2e",null);e.default=c.exports},265:function(t,e,r){var a=r(874);"string"==typeof a&&(a=[[t.i,a,""]]);var o={hmr:!0,transform:void 0,insertInto:void 0};r(5)(a,o);a.locals&&(t.exports=a.locals)},873:function(t,e,r){"use strict";var a=r(265);r.n(a).a},874:function(t,e,r){(t.exports=r(4)(!1)).push([t.i,"\n.mb-2[data-v-f3833c2e] {\r\n  margin-bottom: 5px !important;\n}\r\n",""])}}]);