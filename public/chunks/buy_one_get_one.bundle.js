(window.webpackJsonp=window.webpackJsonp||[]).push([[54],{1337:function(t,a,e){"use strict";e.r(a);var n=e(2),r=e.n(n),o=e(0);r.a.component(o.HasError.name,o.HasError);var s={name:"subCategory",created:function(){this.getBuyOne()},data:function(){return{form:new o.Form({id:"",banner:"",product_code:""}),error:"",loading:!0,base_url:this.$store.state.image_base_link,banner:this.$store.state.image_base_link+"images/no_image.jpg"}},methods:{getBuyOne:function(){var t=this;axios.get("/api/get/buy/one/get/one/offer").then((function(a){console.log(a),"OK"==a.data.status&&(t.form.id=a.data.campaign.id,t.form.product_code=a.data.campaign.product_code,t.form.banner=a.data.campaign.banner,t.loading=!1,t.form.banner&&(t.banner=t.base_url+t.form.banner))}))},updateCampaign:function(){var t=this;this.form.post("/api/edit/buy/one/get/one/offer/"+this.form.id,{transformRequest:[function(t,a){return objectToFormData(t)}]}).then((function(a){console.log(a),"SUCCESS"==a.data.status?(t.$toasted.show(a.data.message,{type:"success",position:"top-center",duration:4e3}),t.getBuyOne()):t.error="some thing want to wrong"}))},uploadbanner:function(t){var a=this,e=t.target.files[0];if(e.type.match("image.*")){var n=new FileReader;n.readAsDataURL(e),n.onload=function(t){var n=new Image;n.onload=function(){console.log(n.width,n.height),a.setbanner(e,t)},n.src=t.target.result}}else Swal.fire({type:"warning",text:"this is not any kind of image"})},setbanner:function(t,a){this.disabled=!1,this.form.banner=t,this.banner=a.target.result},clickImage:function(){document.getElementById("uploadLogo").click()}}},i=(e(831),e(1)),c=Object(i.a)(s,(function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",[e("admin-main"),t._v(" "),e("div",{staticClass:"content-wrapper"},[t._m(0),t._v(" "),e("section",{staticClass:"content"},[e("div",{staticClass:"row justify-content-center"},[e("div",{staticClass:"col-lg-11 col-lg-offset-2"},[e("div",{staticClass:"box box_container box-primary"},[t._m(1),t._v(" "),e("div",{staticClass:"box-body"},[t.error?e("div",{staticClass:"alert-danger alert"},[t._v(t._s(t.error))]):t._e(),t._v(" "),e("br"),t._v(" "),e("form",{attrs:{enctype:"multipart/form-data"},on:{submit:function(a){return a.preventDefault(),t.updateCampaign(a)},keydown:function(a){return t.form.onKeydown(a)}}},[e("div",{staticClass:"form-group"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-1"}),t._v(" "),t._m(2),t._v(" "),e("div",{staticClass:"col-md-9 code_input"},[e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.product_code,expression:"form.product_code"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("product_code")},attrs:{type:"text",name:"product_code"},domProps:{value:t.form.product_code},on:{input:function(a){a.target.composing||t.$set(t.form,"product_code",a.target.value)}}}),t._v(" "),e("has-error",{attrs:{form:t.form,field:"product_code"}})],1)])]),t._v(" "),e("div",{staticClass:"form-group text-center"},[e("label",{attrs:{for:"banner"}},[t._v("Upload Banner ")]),t._v(" "),e("img",{attrs:{id:"campaignBackground",src:t.banner},on:{click:t.clickImage}}),t._v(" "),e("input",{staticClass:"form-control",attrs:{id:"uploadLogo",type:"file",name:"banner"},on:{change:t.uploadbanner}})]),t._v(" "),e("div",{staticClass:"form-group text-center"},[e("button",{staticClass:"btn btn-primary",attrs:{disabled:t.form.busy,type:"submit"}},[t.form.busy?e("i",{staticClass:"fa fa-spin fa-spinner"}):t._e(),t._v("Submit\n                  ")])])])])])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("section",{staticClass:"content-header"},[a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard ")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("campaign")])])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"box-header text-center with-border"},[a("h3",{staticClass:"box-title"},[this._v("Buy For Get-One Offer")])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"col-md-2 text-center"},[a("h4",[a("label",{attrs:{for:"product_code"}},[this._v(" Product_Code ")])])])}],!1,null,"6efd22a2",null);a.default=c.exports},244:function(t,a,e){var n=e(832);"string"==typeof n&&(n=[[t.i,n,""]]);var r={hmr:!0,transform:void 0,insertInto:void 0};e(5)(n,r);n.locals&&(t.exports=n.locals)},831:function(t,a,e){"use strict";var n=e(244);e.n(n).a},832:function(t,a,e){(t.exports=e(4)(!1)).push([t.i,"\n.box_container[data-v-6efd22a2] {\r\n  margin-left: -14%;\r\n  margin-top: 2%;\n}\n.code_input[data-v-6efd22a2] {\r\n  width: 73%;\n}\n#uploadLogo[data-v-6efd22a2] {\r\n  display: none;\n}\n#campaignBackground[data-v-6efd22a2] {\r\n  border: 1px solid #ddd;\r\n  padding: 5px;\r\n  cursor: pointer;\r\n  margin-left: 25px;\r\n  width: 95%;\r\n  height: 300px;\n}\r\n",""])}}]);