(window.webpackJsonp=window.webpackJsonp||[]).push([[98],{1264:function(t,a,s){"use strict";s.r(a);var r=s(2),e=s.n(r),o=s(0);e.a.component(o.HasError.name,o.HasError);var n={name:"Edit",created:function(){var t=this;this.getFactory(),setTimeout((function(){t.loading=!1}),500)},data:function(){return{form:new o.Form({name:"",address:""}),loading:!0,error:""}},methods:{getFactory:function(){var t=this;axios.get("/api/edit/factory/"+this.$route.params.id).then((function(a){"SUCCESS"==a.data.status?(t.form.name=a.data.factory.name,t.form.address=a.data.factory.address):t.$toasted.show("some thing want to wrong",{type:"error",position:"top-center",duration:5e3})}))},update:function(){var t=this;this.form.post("/api/update/factory/"+this.$route.params.id,{transformRequest:[function(t,a){return objectToFormData(t)}],onUploadProgress:function(t){console.log(t)}}).then((function(a){console.log(a),"SUCCESS"==a.data.status?(t.$router.push({name:"factory_list"}),t.$toasted.show(a.data.message,{type:"success",position:"top-center",duration:4e3})):t.error="some thing want to wrong"})).catch((function(a){console.log(a),t.error="some thing want to wrong"}))}}},i=s(1),c=Object(i.a)(n,(function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("div",[s("admin-main"),t._v(" "),s("div",{staticClass:"content-wrapper"},[s("section",{staticClass:"content-header"},[s("h1",[s("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"factory_list"}}},[s("i",{staticClass:"fa fa-arrow-right"})])],1),t._v(" "),t._m(0)]),t._v(" "),s("section",{staticClass:"content"},[s("div",{staticClass:"row justify-content-center"},[s("div",{staticClass:"col-lg-6 col-lg-offset-2"},[s("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),s("div",{staticClass:"box-body"},[t.loading?s("h1",[s("i",{staticClass:"fa fa-spinner fa-spin"})]):s("form",{attrs:{enctype:"multipart/form-data"},on:{submit:function(a){return a.preventDefault(),t.update(a)},keydown:function(a){return t.form.onKeydown(a)}}},[t.error?s("div",{staticClass:"alert-danger alert"},[t._v("\n                  "+t._s(t.error)+"\n                ")]):t._e(),t._v(" "),s("div",{staticClass:"form-group"},[s("label",[t._v("Name")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.name,expression:"form.name"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("name")},attrs:{type:"text",name:"name"},domProps:{value:t.form.name},on:{input:function(a){a.target.composing||t.$set(t.form,"name",a.target.value)}}}),t._v(" "),s("has-error",{attrs:{form:t.form,field:"name"}})],1),t._v(" "),s("br"),t._v(" "),s("div",{staticClass:"form-group"},[s("label",[t._v("Address")]),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.form.address,expression:"form.address"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("address")},attrs:{type:"text",name:"address",placeholder:"factory address "},domProps:{value:t.form.address},on:{input:function(a){a.target.composing||t.$set(t.form,"address",a.target.value)}}}),t._v(" "),s("has-error",{attrs:{form:t.form,field:"address"}})],1),t._v(" "),s("button",{staticClass:"btn btn-primary",attrs:{disabled:t.form.busy,type:"submit"}},[t.form.busy?s("i",{staticClass:"fa fa-spin fa-spinner"}):t._e(),t._v("Submit\n                ")])])])])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("Edit factory")])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"box-header with-border"},[a("h3",{staticClass:"box-title"},[this._v("Edit factory")])])}],!1,null,null,null);a.default=c.exports}}]);