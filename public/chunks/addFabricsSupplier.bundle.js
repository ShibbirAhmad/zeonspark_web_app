(window.webpackJsonp=window.webpackJsonp||[]).push([[22],{1226:function(t,a,e){"use strict";e.r(a);var o=e(2),r=e.n(o),n=e(0);r.a.component(n.HasError.name,n.HasError);var s={name:"Add",created:function(){},data:function(){return{form:new n.Form({name:"",company_name:"",address:"",phone:"",opening_balance:"",type:2}),loading:!1,error:""}},methods:{add:function(){var t=this;this.form.post("/supplier/add",{transformRequest:[function(t,a){return objectToFormData(t)}],onUploadProgress:function(t){console.log(t)}}).then((function(a){console.log(a),"SUCCESS"==a.data.status?(t.$router.push({name:"FabricsSupplier"}),t.$toasted.show(a.data.message,{type:"success",position:"top-center",duration:4e3})):t.error="some thing want to wrong"})).catch((function(a){t.error="some thing want to wrong"}))}}},i=(e(667),e(1)),m=Object(i.a)(s,(function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",[e("admin-main"),t._v(" "),e("div",{staticClass:"content-wrapper"},[e("section",{staticClass:"content-header"},[e("h1",[e("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"FabricsSupplier"}}},[e("i",{staticClass:"fa fa-arrow-right"})])],1),t._v(" "),t._m(0)]),t._v(" "),e("section",{staticClass:"content"},[e("div",{staticClass:"row justify-content-center"},[e("div",{staticClass:"col-lg-6 col-lg-offset-2"},[e("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),e("div",{staticClass:"box-body"},[t.loading?e("h1",[e("i",{staticClass:"fa fa-spinner fa-spin"})]):e("form",{attrs:{enctype:"multipart/form-data"},on:{submit:function(a){return a.preventDefault(),t.add(a)},keydown:function(a){return t.form.onKeydown(a)}}},[t.error?e("div",{staticClass:"alert-danger alert"},[t._v("\n                                    "+t._s(t.error)+"\n                                ")]):t._e(),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.company_name,expression:"form.company_name"}],attrs:{type:"hidden",name:"name"},domProps:{value:t.form.company_name},on:{input:function(a){a.target.composing||t.$set(t.form,"company_name",a.target.value)}}}),t._v(" "),e("div",{staticClass:"form-group"},[e("label",[t._v("Company_name")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.company_name,expression:"form.company_name"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("company_name")},attrs:{type:"text",name:"company_name",autocomplete:"off",placeholder:"company_name"},domProps:{value:t.form.company_name},on:{input:function(a){a.target.composing||t.$set(t.form,"company_name",a.target.value)}}}),t._v(" "),e("has-error",{attrs:{form:t.form,field:"company_name"}})],1),t._v(" "),e("div",{staticClass:"form-group"},[e("label",[t._v("Phone")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.phone,expression:"form.phone"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("phone")},attrs:{type:"text",minlength:"11",maxlength:"11",name:"phone",autofocus:"",autocomplete:"off",placeholder:"phone"},domProps:{value:t.form.phone},on:{input:function(a){a.target.composing||t.$set(t.form,"phone",a.target.value)}}}),t._v(" "),e("has-error",{attrs:{form:t.form,field:"phone"}})],1),t._v(" "),e("div",{staticClass:"form-group"},[e("label",[t._v("address")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.address,expression:"form.address"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("address")},attrs:{type:"text",placeholder:"address",name:"address",autocomplete:"off"},domProps:{value:t.form.address},on:{input:function(a){a.target.composing||t.$set(t.form,"address",a.target.value)}}}),t._v(" "),e("has-error",{attrs:{form:t.form,field:"address"}})],1),t._v(" "),e("div",{staticClass:"form-group"},[e("label",[t._v("Opening Balance")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.opening_balance,expression:"form.opening_balance"}],staticClass:"form-control",attrs:{type:"text",placeholder:"supplier opening balance",autocomplete:"off"},domProps:{value:t.form.opening_balance},on:{input:function(a){a.target.composing||t.$set(t.form,"opening_balance",a.target.value)}}})]),t._v(" "),e("div",{staticClass:"form-group text-center"},[e("button",{staticClass:"btn btn-primary",attrs:{disabled:t.form.busy,type:"submit"}},[t.form.busy?e("i",{staticClass:"fa fa-spin fa-spinner"}):t._e(),t._v("Submit\n                                ")])])])])])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("Merchant")])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"box-header with-border text-center"},[a("h3",{staticClass:"box-title"},[this._v("Add Fabrics Supplier")])])}],!1,null,"2155d2b2",null);a.default=m.exports},162:function(t,a,e){var o=e(668);"string"==typeof o&&(o=[[t.i,o,""]]);var r={hmr:!0,transform:void 0,insertInto:void 0};e(5)(o,r);o.locals&&(t.exports=o.locals)},667:function(t,a,e){"use strict";var o=e(162);e.n(o).a},668:function(t,a,e){(t.exports=e(4)(!1)).push([t.i,"\n.mb-2[data-v-2155d2b2] {\n    margin-bottom: 5px !important;\n}\n",""])}}]);