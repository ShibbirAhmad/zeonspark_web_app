(window.webpackJsonp=window.webpackJsonp||[]).push([[186],{1333:function(t,e,s){"use strict";s.r(e);var r=s(2),i=s.n(r),a=s(0),o=s(17),n=s.n(o);i.a.component(a.HasError.name,a.HasError);var c={name:"service",created:function(){this.getServiceInformation()},data:function(){return{form:new a.Form({id:"",fast_delivery:"",secure_payment:"",stiching:"",best_prices:""}),editor:n.a,editorConfig:{},error:"",loading:!0}},methods:{getServiceInformation:function(){var t=this;axios.get("/api/get/service/information").then((function(e){console.log(e),"OK"==e.data.status&&(t.form.id=e.data.service.id,t.form.fast_delivery=e.data.service.fast_delivery,t.form.secure_payment=e.data.service.secure_payment,t.form.best_prices=e.data.service.best_prices,t.form.stiching=e.data.service.stiching,t.loading=!1)}))},updateServiceInformation:function(){var t=this;this.form.post("/api/edit/service/info/"+this.form.id,{transformRequest:[function(t,e){return objectToFormData(t)}]}).then((function(e){console.log(e),"SUCCESS"==e.data.status?(t.$toasted.show(e.data.message,{type:"success",position:"top-center",duration:4e3}),t.getServiceInformation()):t.error="something  went to wrong"})).catch((function(e){t.error=e.response.data.errors,t.$toasted.show("something  went to wrong",{type:"error",position:"top-center",duration:5e3})}))}}},l=s(1),f=Object(l.a)(c,(function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("admin-main"),t._v(" "),s("div",{staticClass:"content-wrapper"},[t._m(0),t._v(" "),s("section",{staticClass:"content"},[s("div",{staticClass:"row justify-content-center"},[s("br"),t._v(" "),s("br"),t._v(" "),s("div",{staticClass:"col-lg-11"},[s("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),s("div",{staticClass:"box-body"},[t.error?s("div",{staticClass:"alert-danger alert"},[t._v(t._s(t.error))]):t._e(),t._v(" "),s("form",{attrs:{enctype:"multipart/form-data"},on:{submit:function(e){return e.preventDefault(),t.updateServiceInformation(e)},keydown:function(e){return t.form.onKeydown(e)}}},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-lg-12"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:"invoice"}},[t._v(" Fast Delivery Info ")]),t._v(" "),s("ckeditor",{class:{"is-invalid":t.form.errors.has("fast_delivery")},attrs:{editor:t.editor,name:"fast_delivery",config:t.editorConfig},model:{value:t.form.fast_delivery,callback:function(e){t.$set(t.form,"fast_delivery",e)},expression:"form.fast_delivery"}})],1)]),t._v(" "),s("br"),t._v(" "),s("div",{staticClass:"col-lg-12"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:"invoice"}},[t._v(" Best Prices Info. ")]),t._v(" "),s("ckeditor",{class:{"is-invalid":t.form.errors.has("best_prices")},attrs:{editor:t.editor,name:"best_prices",config:t.editorConfig},model:{value:t.form.best_prices,callback:function(e){t.$set(t.form,"best_prices",e)},expression:"form.best_prices"}})],1)]),t._v(" "),s("br"),t._v(" "),s("div",{staticClass:"col-lg-12"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:"invoice"}},[t._v(" Secure Payment Details ")]),t._v(" "),s("ckeditor",{class:{"is-invalid":t.form.errors.has("secure_payment")},attrs:{editor:t.editor,name:"secure_payment",config:t.editorConfig},model:{value:t.form.secure_payment,callback:function(e){t.$set(t.form,"secure_payment",e)},expression:"form.secure_payment"}})],1)]),t._v(" "),s("div",{staticClass:"col-lg-12"},[s("div",{staticClass:"form-group"},[s("label",{attrs:{for:"invoice"}},[t._v(" Stitching Service ")]),t._v(" "),s("ckeditor",{class:{"is-invalid":t.form.errors.has("stiching")},attrs:{editor:t.editor,name:"stiching",config:t.editorConfig},model:{value:t.form.stiching,callback:function(e){t.$set(t.form,"stiching",e)},expression:"form.stiching"}})],1),t._v(" "),s("div",{staticClass:"form-group text-center"},[s("button",{staticClass:"btn btn-primary",attrs:{disabled:t.form.busy,type:"submit"}},[t.form.busy?s("i",{staticClass:"fa fa-spin fa-spinner"}):t._e(),t._v("Submit\n                      ")])])])])])])])])])])])],1)}),[function(){var t=this.$createElement,e=this._self._c||t;return e("section",{staticClass:"content-header"},[e("ol",{staticClass:"breadcrumb"},[e("li",[e("a",{attrs:{href:"#"}},[e("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard ")])]),this._v(" "),e("li",{staticClass:"active"},[this._v("service")])])])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"box-header text-center with-border"},[e("h3",{staticClass:"box-title"},[this._v(" Service Information  ")])])}],!1,null,null,null);e.default=f.exports}}]);