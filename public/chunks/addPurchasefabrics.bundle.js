(window.webpackJsonp=window.webpackJsonp||[]).push([[26],{1270:function(t,a,e){"use strict";e.r(a);var i=e(2),s=e.n(i),o=e(0),n=e(15),r=e.n(n);s.a.component(o.HasError.name,o.HasError);var l={name:"Add",created:function(){this.pDate(),this.supplierList(),this.balanceList()},data:function(){return{purchase_date:"",error:"",loading:!0,status:2,options:{format:"YYYY-MM-DD",useCurrent:!1},supplier_id:"",suppliers:"",invoice_no:"",submitValidation:!0,total:0,paid:0,due:0,paid_by:"select one",balance:"",memo:""}},methods:{balanceList:function(){var t=this;axios.get("/api/balance/list").then((function(a){t.balance=a.data.balance}))},add:function(){var t=this;"string"!=typeof this.form.paid_by?(this.$Progress.start(),axios.post("/add/purchase",{purchase_date:this.purchase_date,supplier_id:this.supplier_id,total:this.total,paid:this.paid,invoice_no:this.invoice_no,status:this.status,paid_by:this.paid_by,memo:this.memo}).then((function(a){t.$Progress.finish(),console.log(a),"SUCCESS"==a.data.status?(console.log(a),t.$router.push({name:"ManagePurchaseFabrics"}),t.$toasted.show(a.data.message,{type:"success",position:"top-center",duration:4e3})):t.error="dont saved data. please try again"})).catch((function(a){t.$Progress.finish(),console.log(a),t.error="some thing want to wrong"}))):alert("selecet any balance")},supplierList:function(){var t=this;axios.get("/others",{params:{type:2}}).then((function(a){console.log(a),"SUCCESS"==a.data.status&&(t.suppliers=a.data.suppliers,t.loading=!1)})).catch((function(t){console.log(t)}))},dueAmount:function(){this.due=parseInt(this.total)-parseInt(this.paid),this.validation()},validation:function(){this.invoice_no.length>0&&this.supplier_id&&this.total>0?this.submitValidation=!1:this.submitValidation=!0},uploadImage:function(t){var a=this,e=t.target.files[0];if(!e.type.match("image.*"))return Swal.fire({type:"warning",text:"this is not any kind of image"}),this.memo="",void this.validation();var i=new FileReader;i.onload=function(t){a.memo=t.target.result,a.validation()},i.readAsDataURL(e)},pDate:function(){var t=new Date,a=t.getMonth()+1,e=t.getDate(),i=t.getFullYear()+"-"+((""+a).length<2?"0":"")+a+"-"+((""+e).length<2?"0":"")+e;this.purchase_date=i}},computed:{},components:{datePicker:r.a}},c=(e(721),e(1)),u=Object(c.a)(l,(function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",[e("admin-main"),t._v(" "),e("div",{staticClass:"content-wrapper"},[e("section",{staticClass:"content-header"},[e("h1",[e("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"ManagePurchaseFabrics"}}},[e("i",{staticClass:"fa fa-arrow-right"})])],1),t._v(" "),t._m(0)]),t._v(" "),e("section",{staticClass:"content"},[e("div",{staticClass:"row justify-content-center"},[e("div",{staticClass:"col-lg-10 col-lg-offset-1"},[e("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),e("div",{staticClass:"box-body"},[t.loading?e("h1",[e("i",{staticClass:"fa fa-spin fa-spinner"})]):e("div",[t.error?e("div",{staticClass:"alert-danger alert"},[t._v(t._s(t.error))]):t._e(),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-3"},[e("div",{staticClass:"form-group"},[e("label",[t._v("Purchase_date")]),t._v(" "),e("date-picker",{attrs:{autocomplete:"off",config:t.options},model:{value:t.purchase_date,callback:function(a){t.purchase_date=a},expression:"purchase_date"}})],1)]),t._v(" "),e("div",{staticClass:"col-lg-3"},[e("div",{staticClass:"form-group"},[e("label",[t._v("Invoice_no")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.invoice_no,expression:"invoice_no"}],staticClass:"form-control",attrs:{placeholder:"invoice",autofocus:""},domProps:{value:t.invoice_no},on:{keyup:t.validation,input:function(a){a.target.composing||(t.invoice_no=a.target.value)}}})])]),t._v(" "),e("div",{staticClass:"col-lg-3"},[e("div",{staticClass:"form-group"},[e("label",[t._v("Supplier")]),t._v(" "),e("select",{directives:[{name:"model",rawName:"v-model",value:t.supplier_id,expression:"supplier_id"}],staticClass:"form-control",attrs:{name:"supplier"},on:{change:[function(a){var e=Array.prototype.filter.call(a.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.supplier_id=a.target.multiple?e:e[0]},t.validation]}},[e("option",{attrs:{value:""}},[t._v("Select Supplier")]),t._v(" "),t._l(t.suppliers,(function(a){return e("option",{key:a.id,domProps:{value:a.id}},[t._v(t._s(a.company_name))])}))],2)])]),t._v(" "),e("div",{staticClass:"col-lg-3"},[e("div",{staticClass:"form-group"},[e("label",[t._v("Document/Memo")]),t._v(" "),e("input",{staticClass:"form-control",attrs:{type:"file",name:"document"},on:{change:t.uploadImage}})])]),t._v(" "),e("div",{staticClass:"col-lg-3"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v("Total Amount")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.total,expression:"total"}],staticClass:"form-control",attrs:{type:"text"},domProps:{value:t.total},on:{keyup:t.dueAmount,input:function(a){a.target.composing||(t.total=a.target.value)}}})])]),t._v(" "),e("div",{staticClass:"col-lg-3"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v("Paid")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.paid,expression:"paid"}],staticClass:"form-control",attrs:{type:"text"},domProps:{value:t.paid},on:{keyup:t.dueAmount,input:function(a){a.target.composing||(t.paid=a.target.value)}}})])]),t._v(" "),e("div",{staticClass:"col-lg-3"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v("Due Amout")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.due,expression:"due"}],staticClass:"form-control",attrs:{type:"text",readonly:""},domProps:{value:t.due},on:{input:function(a){a.target.composing||(t.due=a.target.value)}}})])]),t._v(" "),e("div",{staticClass:"col-lg-3"},[e("div",{staticClass:"form-group"},[e("label",{attrs:{for:""}},[t._v("Paid By")]),t._v(" "),e("select",{directives:[{name:"model",rawName:"v-model",value:t.paid_by,expression:"paid_by"}],staticClass:"form-control",attrs:{name:"debit_from"},on:{change:function(a){var e=Array.prototype.filter.call(a.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.paid_by=a.target.multiple?e:e[0]}}},[e("option",{attrs:{value:"select one",disabled:""}},[t._v("select one")]),t._v(" "),t._l(t.balance,(function(a,i){return e("option",{key:i,domProps:{value:a.id}},[t._v(" "+t._s(a.name)+" ")])}))],2)])])])]),t._v(" "),e("br"),t._v(" "),e("button",{staticClass:"btn btn-primary",attrs:{disabled:t.submitValidation,type:"submit"},on:{click:function(a){return t.add()}}},[t._v("Submit")])])])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard\n          ")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("Purchase")])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"box-header with-border"},[a("h3",{staticClass:"box-title"},[this._v("Add Purchase")])])}],!1,null,"243be4c4",null);a.default=u.exports},189:function(t,a,e){var i=e(722);"string"==typeof i&&(i=[[t.i,i,""]]);var s={hmr:!0,transform:void 0,insertInto:void 0};e(5)(i,s);i.locals&&(t.exports=i.locals)},721:function(t,a,e){"use strict";var i=e(189);e.n(i).a},722:function(t,a,e){(t.exports=e(4)(!1)).push([t.i,"\n.mb-2[data-v-243be4c4] {\r\n  margin-bottom: 5px !important;\n}\n.autocomplete[data-v-243be4c4] {\r\n  max-height: 120px;\r\n  overflow-y: scroll;\r\n  position: absolute;\r\n  width: 100%;\r\n  z-index: 454;\n}\n.autocomplete li[data-v-243be4c4]:hover {\r\n  background: #222d32;\r\n  color: #ffffff;\n}\r\n",""])}}]);