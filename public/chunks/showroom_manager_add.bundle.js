(window.webpackJsonp=window.webpackJsonp||[]).push([[194],{1342:function(o,t,s){"use strict";s.r(t);var a=s(2),r=s.n(a),e=s(0);s(15);function i(o){return(i="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(o){return typeof o}:function(o){return o&&"function"==typeof Symbol&&o.constructor===Symbol&&o!==Symbol.prototype?"symbol":typeof o})(o)}r.a.component(e.HasError.name,e.HasError);var n={created:function(){this.getShowroms()},data:function(){return{form:new e.Form({showroom_id:"select showroom",name:"",email:"",phone:"",address:"",image:"",password:""}),loading:!0,showrooms:"",preview_image:""}},methods:{getShowroms:function(){var o=this;axios.get("/api/showroom/list").then((function(t){"SUCCESS"==t.data.status&&(o.showrooms=t.data.showrooms)}))},addManager:function(){var o=this;i(this.form.showroom_id)!==i("string")?this.form.post("/api/showroom/manager/add",{transformRequest:[function(o,t){return objectToFormData(o)}]}).then((function(t){console.log(t),"OK"==t.data.success&&(o.$router.push({name:"showroom_manager"}),o.$toasted.show(t.data.message,{type:"success",showroom:"top-center",duration:4e3}))})):window.alert("please,select any showroom")},uploadImage:function(o){var t=o.target.files[0];this.form.image=t}},computed:{}},m=(s(839),s(1)),l=Object(m.a)(n,(function(){var o=this,t=o.$createElement,s=o._self._c||t;return s("div",[s("admin-main"),o._v(" "),s("div",{staticClass:"content-wrapper"},[s("section",{staticClass:"content-header"},[s("h1",[s("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"showroom_manager"}}},[s("i",{staticClass:"fa fa-arrow-left"})])],1),o._v(" "),o._m(0)]),o._v(" "),s("section",{staticClass:"content"},[s("div",{staticClass:"row justify-content-center"},[s("div",{staticClass:"col-lg-8 col-md-8 col-lg-offset-2"},[s("div",{staticClass:"box box-primary"},[o._m(1),o._v(" "),s("div",{staticClass:"box-body"},[s("form",{attrs:{enctype:"multipart/form-data"},on:{submit:function(t){return t.preventDefault(),o.addManager(t)},keydown:function(t){return o.form.onKeydown(t)}}},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-md-6"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:""}},[o._v("Showroom")]),o._v(" "),s("select",{directives:[{name:"model",rawName:"v-model",value:o.form.showroom_id,expression:"form.showroom_id"}],staticClass:"form-control",class:{"is-invalid":o.form.errors.has("showroom_id")},attrs:{name:"showroom_id"},on:{change:function(t){var s=Array.prototype.filter.call(t.target.options,(function(o){return o.selected})).map((function(o){return"_value"in o?o._value:o.value}));o.$set(o.form,"showroom_id",t.target.multiple?s:s[0])}}},[s("option",{attrs:{disabled:""}},[o._v("select showroom")]),o._v(" "),o._l(o.showrooms,(function(t,a){return s("option",{key:a,domProps:{value:t.id}},[o._v("\n                          "+o._s(t.name)+"\n                        ")])}))],2),o._v(" "),s("has-error",{attrs:{form:o.form,field:"showroom_id"}})],1)]),o._v(" "),s("div",{staticClass:"col-md-6"},[s("div",{staticClass:"form-group"},[s("label",[o._v("Name")]),o._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:o.form.name,expression:"form.name"}],staticClass:"form-control",class:{"is-invalid":o.form.errors.has("name")},attrs:{type:"text",name:"name",autofocus:"",autocomplete:"off",placeholder:"name"},domProps:{value:o.form.name},on:{input:function(t){t.target.composing||o.$set(o.form,"name",t.target.value)}}}),o._v(" "),s("has-error",{attrs:{form:o.form,field:"name"}})],1)])]),o._v(" "),s("div",{staticClass:"row"},[s("div",{staticClass:"col-md-6"},[s("div",{staticClass:"form-group"},[s("label",[o._v("Email")]),o._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:o.form.email,expression:"form.email"}],staticClass:"form-control",class:{"is-invalid":o.form.errors.has("email")},attrs:{type:"email",name:"email",autofocus:"",autocomplete:"off",placeholder:"email"},domProps:{value:o.form.email},on:{input:function(t){t.target.composing||o.$set(o.form,"email",t.target.value)}}}),o._v(" "),s("has-error",{attrs:{form:o.form,field:"email"}})],1)]),o._v(" "),s("div",{staticClass:"col-md-6"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:"phone"}},[o._v("Phone")]),o._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:o.form.phone,expression:"form.phone"}],staticClass:"form-control",class:{"is-invalid":o.form.errors.has("phone")},attrs:{type:"text",autocomplete:"off",autofocus:"",name:"phone",id:""},domProps:{value:o.form.phone},on:{input:function(t){t.target.composing||o.$set(o.form,"phone",t.target.value)}}}),o._v(" "),s("has-error",{attrs:{form:o.form,field:"phone"}})],1)])]),o._v(" "),s("div",{staticClass:"row"},[s("div",{staticClass:"col-md-6"},[s("div",{staticClass:"form-group"},[s("label",[o._v("Image")]),o._v(" "),s("input",{staticClass:"form-control",class:{"is-invalid":o.form.errors.has("image")},attrs:{type:"file",name:"image"},on:{change:o.uploadImage}}),o._v(" "),s("has-error",{attrs:{form:o.form,field:"image"}})],1)]),o._v(" "),s("div",{staticClass:"col-md-6"},[s("div",{staticClass:"for-group"},[s("label",{attrs:{for:"password"}},[o._v("Password")]),o._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:o.form.password,expression:"form.password"}],staticClass:"form-control",class:{"is-invalid":o.form.errors.has("password")},attrs:{type:"password",name:"password",placeholder:"password",required:""},domProps:{value:o.form.password},on:{input:function(t){t.target.composing||o.$set(o.form,"password",t.target.value)}}}),o._v(" "),s("has-error",{attrs:{form:o.form,field:"password"}})],1)])]),o._v(" "),s("div",{staticClass:"form-group"},[s("label",{attrs:{for:"address"}},[o._v("Address")]),o._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:o.form.address,expression:"form.address"}],staticClass:"form-control",class:{"is-invalid":o.form.errors.has("address")},attrs:{type:"text",autocomplete:"off",autofocus:"",name:"address"},domProps:{value:o.form.address},on:{input:function(t){t.target.composing||o.$set(o.form,"address",t.target.value)}}}),o._v(" "),s("has-error",{attrs:{form:o.form,field:"address"}})],1),o._v(" "),s("div",{staticClass:"form-group text-center"},[s("button",{staticClass:"btn btn-primary",attrs:{disabled:o.form.busy,type:"submit"}},[o.form.busy?s("i",{staticClass:"fa fa-spin fa-spinner"}):o._e(),o._v("Submit\n                  ")])])])])])])])])])],1)}),[function(){var o=this.$createElement,t=this._self._c||o;return t("ol",{staticClass:"breadcrumb"},[t("li",[t("a",{attrs:{href:"#"}},[t("i",{staticClass:"fa fa-dashboard"}),this._v("Manager")])]),this._v(" "),t("li",{staticClass:"active"},[this._v("Add")])])},function(){var o=this.$createElement,t=this._self._c||o;return t("div",{staticClass:"box-header with-border text-center"},[t("h3",{staticClass:"box-title"},[this._v("Add Showroom Manager")])])}],!1,null,"7145658c",null);t.default=l.exports},248:function(o,t,s){var a=s(840);"string"==typeof a&&(a=[[o.i,a,""]]);var r={hmr:!0,transform:void 0,insertInto:void 0};s(5)(a,r);a.locals&&(o.exports=a.locals)},839:function(o,t,s){"use strict";var a=s(248);s.n(a).a},840:function(o,t,s){(o.exports=s(4)(!1)).push([o.i,"\n.mb-2[data-v-7145658c] {\r\n  margin-bottom: 5px !important;\n}\r\n",""])}}]);