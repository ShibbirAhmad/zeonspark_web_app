(window.webpackJsonp=window.webpackJsonp||[]).push([[36],{1317:function(a,t,o){"use strict";o.r(t);var s=o(2),r=o.n(s),e=o(0);r.a.component(e.HasError.name,e.HasError);var i={name:"Add",created:function(){var a=this;setTimeout((function(){a.loading=!1}),500)},data:function(){return{form:new e.Form({name:"",email:"",password:"",image:""}),loading:!0,error:""}},methods:{add:function(){var a=this;console.log("add"),this.form.post("/add/admin",{transformRequest:[function(a,t){return objectToFormData(a)}],onUploadProgress:function(a){console.log(a)}}).then((function(t){console.log(t),"SUCCESS"==t.data.status?(a.$router.push({name:"admin"}),a.$toasted.show(t.data.message,{type:"success",position:"top-right",duration:4e3})):a.error="some thing want to wrong"})).catch((function(t){console.log(t),a.error="some thing want to wrong"}))},uploadImage:function(a){var t=a.target.files[0];this.form.image=t},read:function(a){var t=this,o=new FileReader;o.readAsDataURL(a),o.onload=function(a){t.form.image=a.target.result}}},computed:{}},n=(o(803),o(1)),m=Object(n.a)(i,(function(){var a=this,t=a.$createElement,o=a._self._c||t;return o("div",[o("admin-main"),a._v(" "),o("div",{staticClass:"content-wrapper"},[o("section",{staticClass:"content-header"},[o("h1",[o("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"admin"}}},[o("i",{staticClass:"fa fa-arrow-right"})])],1),a._v(" "),a._m(0)]),a._v(" "),o("section",{staticClass:"content"},[o("div",{staticClass:"row justify-content-center"},[o("div",{staticClass:"col-lg-6 col-lg-offset-2"},[o("div",{staticClass:"box box-primary"},[a._m(1),a._v(" "),o("div",{staticClass:"box-body"},[a.loading?o("h1",[o("i",{staticClass:"fa fa-spinner fa-spin"})]):o("form",{attrs:{enctype:"multipart/form-data"},on:{submit:function(t){return t.preventDefault(),a.add(t)},keydown:function(t){return a.form.onKeydown(t)}}},[a.error?o("div",{staticClass:"alert-danger alert"},[a._v("\n                                    "+a._s(a.error)+"\n                                ")]):a._e(),a._v(" "),o("div",{staticClass:"form-group"},[o("label",[a._v("Name")]),a._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:a.form.name,expression:"form.name"}],staticClass:"form-control",class:{"is-invalid":a.form.errors.has("name")},attrs:{type:"text",name:"name",autofocus:"",autocomplete:"off",placeholder:"name"},domProps:{value:a.form.name},on:{input:function(t){t.target.composing||a.$set(a.form,"name",t.target.value)}}}),a._v(" "),o("has-error",{attrs:{form:a.form,field:"name"}})],1),a._v(" "),o("div",{staticClass:"form-group"},[o("label",[a._v("Email")]),a._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:a.form.email,expression:"form.email"}],staticClass:"form-control",class:{"is-invalid":a.form.errors.has("email")},attrs:{type:"email",name:"email",autofocus:"",autocomplete:"off",placeholder:"email"},domProps:{value:a.form.email},on:{input:function(t){t.target.composing||a.$set(a.form,"email",t.target.value)}}}),a._v(" "),o("has-error",{attrs:{form:a.form,field:"email"}})],1),a._v(" "),o("div",{staticClass:"form-group"},[o("label",[a._v("Password")]),a._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:a.form.password,expression:"form.password"}],staticClass:"form-control",class:{"is-invalid":a.form.errors.has("password")},attrs:{type:"password",name:"password",autofocus:"",autocomplete:"off",placeholder:"password"},domProps:{value:a.form.password},on:{input:function(t){t.target.composing||a.$set(a.form,"password",t.target.value)}}}),a._v(" "),o("has-error",{attrs:{form:a.form,field:"password"}})],1),a._v(" "),o("div",{staticClass:"form-group"},[o("label",[a._v("Image")]),a._v(" "),o("input",{staticClass:"form-control",class:{"is-invalid":a.form.errors.has("image")},attrs:{type:"file",name:"image"},on:{change:a.uploadImage}}),a._v(" "),o("has-error",{attrs:{form:a.form,field:"image"}})],1),a._v(" "),o("br"),a._v(" "),o("button",{staticClass:"btn btn-primary",attrs:{disabled:a.form.busy,type:"submit"}},[a.form.busy?o("i",{staticClass:"fa fa-spin fa-spinner"}):a._e(),a._v("Submit\n                                ")])])])])])])])])],1)}),[function(){var a=this.$createElement,t=this._self._c||a;return t("ol",{staticClass:"breadcrumb"},[t("li",[t("a",{attrs:{href:"#"}},[t("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),t("li",{staticClass:"active"},[this._v("Category")])])},function(){var a=this.$createElement,t=this._self._c||a;return t("div",{staticClass:"box-header with-border text-center"},[t("h3",{staticClass:"box-title"},[this._v("Add Admin")])])}],!1,null,"f6ad468a",null);t.default=m.exports},230:function(a,t,o){var s=o(804);"string"==typeof s&&(s=[[a.i,s,""]]);var r={hmr:!0,transform:void 0,insertInto:void 0};o(5)(s,r);s.locals&&(a.exports=s.locals)},803:function(a,t,o){"use strict";var s=o(230);o.n(s).a},804:function(a,t,o){(a.exports=o(4)(!1)).push([a.i,"\n.mb-2[data-v-f6ad468a] {\n    margin-bottom: 5px !important;\n}\n",""])}}]);