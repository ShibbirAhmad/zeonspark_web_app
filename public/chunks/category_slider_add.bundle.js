(window.webpackJsonp=window.webpackJsonp||[]).push([[59],{1203:function(e,t,a){"use strict";a.r(t);var r=a(2),s=a.n(r),i=a(0);s.a.component(i.HasError.name,i.HasError);var o={name:"subCategory",created:function(){this.getData()},data:function(){return{form:new i.Form({image:"",preview_image:"",url:"",category_id:"",sub_category_id:"",sub_sub_category_id:""}),error:"",loading:!0,disabled:!0,image_width:1184,image_height:250,imagae_size:550,image_size_text:"Image size must be 1184*350px",categories:"",sub_categories:"",sub_sub_categories:""}},methods:{add:function(){var e=this;this.form.post("/api/category/slider/add",{transformRequest:[function(e,t){return objectToFormData(e)}]}).then((function(t){console.log(t),"SUCCESS"==t.data.status?(e.$router.push({name:"category_slider"}),e.$toasted.show(t.data.message,{type:"success",position:"top-center",duration:4e3})):e.error="something went to wrong"})).catch((function(t){e.error=t.response.data.errors,e.$toasted.show("something went to wrong",{type:"error",position:"top-center",duration:5e3})}))},uploadImage:function(e){var t=this,a=e.target.files[0];if(a.type.match("image.*"))if(a.size/1024>this.imagae_size)Swal.fire({type:"warning",text:"File size can not be bigger then ".concat(this.imagae_size,"KB.Reference file size is'+file.size/1024 +'KB")});else{var r=new FileReader;r.readAsDataURL(a),r.onload=function(e){var r=new Image;r.onload=function(){return console.log(r.width,r.height),r.width==t.image_width&&r.height==t.image_height?void t.setImage(a,e):(t.disabled=!0,void Swal.fire({type:"error",text:"Image size need "+t.image_width+"*"+t.image_height+"px. But Upload imaze size "+r.width+"*"+r.height+"px"}))},r.src=e.target.result}}else Swal.fire({type:"warning",text:"this is not any kind of image"})},setImage:function(e,t){console.log(e),this.disabled=!1,this.form.image=e,this.form.preview_image=t.target.result},getData:function(){var e=this;axios.get("/others").then((function(t){console.log(t),e.categories=t.data.categories,e.sub_categories=t.data.subCategories,e.sub_sub_categories=t.data.subSubCategories,e.loading=!1})).catch((function(e){console.log(e)}))}}},n=(a(631),a(1)),l=Object(n.a)(o,(function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",[a("admin-main"),e._v(" "),a("div",{staticClass:"content-wrapper"},[a("section",{staticClass:"content-header"},[a("h1",[a("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"category_slider"}}},[a("i",{staticClass:"fa fa-arrow-left"})])],1),e._v(" "),e._m(0)]),e._v(" "),a("section",{staticClass:"content"},[a("div",{staticClass:"row justify-content-center"},[a("div",{staticClass:"col-lg-6 col-lg-offset-2"},[a("div",{staticClass:"box box-primary"},[a("div",{staticClass:"box-header with-border"},[a("h3",{staticClass:"box-title"},[e._v("\n                Add category or subCategory slider\n                "),a("small",[e._v("("+e._s(e.image_size_text)+")")])])]),e._v(" "),a("div",{staticClass:"box-body"},[e.error?a("div",{staticClass:"alert-danger alert"},[e._v(e._s(e.error))]):e._e(),e._v(" "),e.loading?a("h1",[a("i",{staticClass:"fa fa-spin fa-spinner"})]):a("form",{attrs:{enctype:"multipart/form-data"},on:{submit:function(t){return t.preventDefault(),e.add(t)},keydown:function(t){return e.form.onKeydown(t)}}},[a("div",{staticClass:"row"},[a("div",{staticClass:"col-lg-12"},[a("div",{staticClass:"form-group"},[a("label",{attrs:{for:"url"}},[e._v("url")]),e._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:e.form.url,expression:"form.url"}],staticClass:"form-control ",class:{"is-invalid":e.form.errors.has("url")},attrs:{type:"text",name:"url",required:"",placeholder:"https://example.com"},domProps:{value:e.form.url},on:{input:function(t){t.target.composing||e.$set(e.form,"url",t.target.value)}}}),e._v(" "),a("has-error",{attrs:{form:e.form,field:"url"}})],1),e._v(" "),a("div",{staticClass:"form-group"},[a("label",[e._v("Category")]),e._v(" "),a("select",{directives:[{name:"model",rawName:"v-model",value:e.form.category_id,expression:"form.category_id"}],staticClass:"form-control",on:{change:function(t){var a=Array.prototype.filter.call(t.target.options,(function(e){return e.selected})).map((function(e){return"_value"in e?e._value:e.value}));e.$set(e.form,"category_id",t.target.multiple?a:a[0])}}},[a("option",{attrs:{value:"",selected:"",disabled:""}},[e._v("Select  Category")]),e._v(" "),e._l(e.categories,(function(t){return a("option",{key:t.id,domProps:{value:t.id}},[e._v("\n                      "+e._s(t.name)+"\n                    ")])}))],2)]),e._v(" "),a("div",{staticClass:"form-group"},[a("label",[e._v("Sub Category")]),e._v(" "),a("select",{directives:[{name:"model",rawName:"v-model",value:e.form.sub_category_id,expression:"form.sub_category_id"}],staticClass:"form-control",on:{change:function(t){var a=Array.prototype.filter.call(t.target.options,(function(e){return e.selected})).map((function(e){return"_value"in e?e._value:e.value}));e.$set(e.form,"sub_category_id",t.target.multiple?a:a[0])}}},[a("option",{attrs:{value:"",selected:"",disabled:""}},[e._v("Select  Sub Category")]),e._v(" "),e._l(e.sub_categories,(function(t){return a("option",{key:t.id,domProps:{value:t.id}},[e._v("\n                      "+e._s(t.name)+"\n                    ")])}))],2)]),e._v(" "),a("div",{staticClass:"form-group"},[a("label",[e._v("Sub Sub Category")]),e._v(" "),a("select",{directives:[{name:"model",rawName:"v-model",value:e.form.sub_sub_category_id,expression:"form.sub_sub_category_id"}],staticClass:"form-control",on:{change:function(t){var a=Array.prototype.filter.call(t.target.options,(function(e){return e.selected})).map((function(e){return"_value"in e?e._value:e.value}));e.$set(e.form,"sub_sub_category_id",t.target.multiple?a:a[0])}}},[a("option",{attrs:{value:"",selected:"",disabled:""}},[e._v("Select Sub Sub Category")]),e._v(" "),e._l(e.sub_sub_categories,(function(t){return a("option",{key:t.id,domProps:{value:t.id}},[e._v("\n                      "+e._s(t.name)+"\n                    ")])}))],2)]),e._v(" "),a("div",{staticClass:"preview-image"},[e.form.preview_image.length?a("img",{staticClass:"img-responsive",attrs:{src:e.form.preview_image,alt:"slider"}}):a("img",{staticClass:"img-responsive",staticStyle:{width:"508px",height:"150px"},attrs:{src:"/images/noimage.png"}})]),e._v(" "),a("div",{staticClass:"form-group"},[a("label",{staticClass:"selectFile",attrs:{for:"file"}},[e._v("select a file")]),e._v(" "),a("input",{staticClass:"form-control",class:{"is-invalid":e.form.errors.has("image")},staticStyle:{display:"none"},attrs:{id:"file",type:"file",name:"image"},on:{change:e.uploadImage}}),e._v(" "),a("has-error",{attrs:{form:e.form,field:"image"}})],1)])]),e._v(" "),a("br"),e._v(" "),a("button",{staticClass:"btn btn-primary btn-block",attrs:{disabled:e.form.busy||e.disabled,type:"submit"}},[e.form.busy?a("i",{staticClass:"fa fa-spin fa-spinner"}):e._e(),e._v("Submit\n                ")])])])])])])])])],1)}),[function(){var e=this.$createElement,t=this._self._c||e;return t("ol",{staticClass:"breadcrumb"},[t("li",[t("a",{attrs:{href:"#"}},[t("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard\n          ")])]),this._v(" "),t("li",{staticClass:"active"},[this._v("Category slider ")])])}],!1,null,"640521c7",null);t.default=l.exports},144:function(e,t,a){var r=a(632);"string"==typeof r&&(r=[[e.i,r,""]]);var s={hmr:!0,transform:void 0,insertInto:void 0};a(5)(r,s);r.locals&&(e.exports=r.locals)},631:function(e,t,a){"use strict";var r=a(144);a.n(r).a},632:function(e,t,a){(e.exports=a(4)(!1)).push([e.i,"\n.mb-2[data-v-640521c7] {\r\n  margin-bottom: 5px !important;\n}\nlabel.selectFile[data-v-640521c7] {\r\n  width: 150px;\r\n  background: #fff;\r\n  color: #222d32;\r\n  padding: 10px 10px;\r\n  text-align: center;\r\n  font-size: 20px;\r\n  border-radius: 5px;\r\n  margin-top: 15px;\r\n  cursor: pointer;\r\n  border: 1px solid #222d32;\n}\r\n",""])}}]);