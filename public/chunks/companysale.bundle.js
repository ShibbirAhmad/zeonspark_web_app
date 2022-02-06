(window.webpackJsonp=window.webpackJsonp||[]).push([[75],{1288:function(t,a,e){"use strict";e.r(a);var s=e(2),n=e.n(s),o=e(0);e(15);n.a.component(o.HasError.name,o.HasError);var r={created:function(){this.companyList(),this.balanceList()},data:function(){return{companies:{},loading:!0,form:new o.Form({date:"",company_id:"",balance_id:"select one",comment:"",amount:""}),balance:"",options:{format:"YYYY-MM-DD",useCurrent:!0}}},methods:{balanceList:function(){var t=this;axios.get("/api/balance/list").then((function(a){t.balance=a.data.balance}))},getPayment:function(){var t=this;"string"!=typeof this.form.balance_id?this.form.post("/api/get/company/sale/payment",{transformRequest:[function(t,a){return objectToFormData(t)}]}).then((function(a){console.log(a),"OK"==a.data.status&&(t.$toasted.show(a.data.message,{type:"success",position:"top-center",duration:4e3}),t.form.date="",t.form.amount="",t.form.comment="",t.$modal.hide("payment_modal"),t.companyList())})):alert("selecet any balance")},companyList:function(){var t=this;axios.get("/company").then((function(a){console.log(a),"SUCCESS"==a.data.status&&(t.companies=a.data.companies,t.loading=!1)}))},totalPurchase:function(t){var a=0;return t.forEach((function(t){a+=t.total})),a},totalPaid:function(t){var a=0,e=0;return t.payments.forEach((function(t){a+=t.amount})),t.sales.forEach((function(t){e+=t.paid})),parseInt(e)+parseInt(a)},dueStillNow:function(t){var a=0,e=0;return t.payments.forEach((function(t){a+=t.amount})),t.sales.forEach((function(t){e+=t.total-t.paid})),e-a},showModal:function(t){this.form.company_id=t,this.$modal.show("payment_modal")}},components:{HasError:o.HasError}},i=e(1),c=Object(i.a)(r,(function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",[e("admin-main"),t._v(" "),e("div",{staticClass:"content-wrapper"},[e("section",{staticClass:"content-header"},[e("h1",[e("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"AddCompanySale"}}},[e("i",{staticClass:"fa fa-plus"})])],1),t._v(" "),t._m(0)]),t._v(" "),e("section",{staticClass:"content"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-11"},[e("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),e("div",{staticClass:"box-body"},[e("table",{staticClass:"\n                    table\n                    text-center\n                    table-hover table-striped table-bordered\n                  "},[t._m(2),t._v(" "),e("tbody",[t.loading?e("h1",{staticClass:"text-center"},[e("i",{staticClass:"fa fa-spin fa-spinner"})]):t._e(),t._v(" "),t._l(t.companies,(function(a,s){return e("tr",{key:s},[e("td",{attrs:{scope:"row"}},[t._v(t._s(s+1))]),t._v(" "),e("td",[e("router-link",{staticStyle:{color:"blue !important","font-size":"14px"},attrs:{to:{name:"company_sale_details",params:{id:a.id}}}},[t._v("\n                          "+t._s(a.name)+"\n                        ")])],1),t._v(" "),e("td",[t._v(t._s(a.phone))]),t._v(" "),e("td",[t._v(t._s(a.address))]),t._v(" "),e("td",[t._v("\n                        total sale\n                        "),e("span",{staticClass:"badge badge-danger"},[t._v("\n                          ৳ "+t._s(t.totalPurchase(a.sales))+"\n                        ")]),t._v("  ||\n\n                        due\n                        "),e("span",{staticClass:"badge badge-warning s_d_n"},[t._v("\n                          ৳ "+t._s(t.dueStillNow(a))+"\n                        ")])]),t._v(" "),e("td",[e("span",{staticClass:"badge badge-success"},[t._v(" ৳ "+t._s(t.totalPaid(a))+" ")])]),t._v(" "),e("td",[e("button",{staticClass:"btn btn-success btn-sm",on:{click:function(e){return t.showModal(a.id)}}},[t._v("\n                          get paid\n                        ")]),t._v(" "),e("router-link",{staticClass:"btn btn-primary btn-sm",attrs:{to:{name:"company_payment_details",params:{id:a.id}}}},[t._v("\n                          Payment Details\n                        ")])],1)])}))],2)])])])])])])])]),t._v(" "),e("modal",{attrs:{name:"payment_modal",width:400,height:370}},[e("form",{on:{submit:function(a){return a.preventDefault(),t.getPayment(a)}}},[e("div",{staticClass:"card",staticStyle:{padding:"20px"}},[e("div",{staticClass:"card-body"},[e("div",{staticClass:"form-group"},[e("label",[t._v("Date")]),t._v(" "),e("date-picker",{class:{"is-invaid":t.form.errors.has("date")},attrs:{required:"",config:t.options},model:{value:t.form.date,callback:function(a){t.$set(t.form,"date",a)},expression:"form.date"}}),t._v(" "),e("has-error",{attrs:{form:t.form,field:"date"}})],1),t._v(" "),e("div",{staticClass:"form-group"},[e("label",[t._v("Amount")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.amount,expression:"form.amount"}],staticClass:"form-control",attrs:{type:"text",required:""},domProps:{value:t.form.amount},on:{input:function(a){a.target.composing||t.$set(t.form,"amount",a.target.value)}}})]),t._v(" "),e("div",{staticClass:"form-group"},[e("label",[t._v(" Credit In ")]),t._v(" "),e("select",{directives:[{name:"model",rawName:"v-model",value:t.form.balance_id,expression:"form.balance_id"}],staticClass:"form-control",on:{change:function(a){var e=Array.prototype.filter.call(a.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form,"balance_id",a.target.multiple?e:e[0])}}},[e("option",{attrs:{value:"select one",disabled:""}},[t._v("select one")]),t._v(" "),t._l(t.balance,(function(a,s){return e("option",{key:s,domProps:{value:a.id}},[t._v(" "+t._s(a.name)+" ")])}))],2),t._v(" "),e("has-error",{attrs:{form:t.form,field:"balance_id"}})],1),t._v(" "),e("div",{staticClass:"form-group"},[e("label",[t._v("Comment")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.form.comment,expression:"form.comment"}],staticClass:"form-control",attrs:{type:"text"},domProps:{value:t.form.comment},on:{input:function(a){a.target.composing||t.$set(t.form,"comment",a.target.value)}}})]),t._v(" "),e("button",{staticClass:"btn btn-success btn-block",attrs:{type:"submit"}},[t._v("\n            Submit\n          ")])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("Company_Sale")])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"box-header with-border text-center"},[a("h3",{staticClass:"box-title"},[this._v("Company Sales")])])},function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("thead",[e("tr",[e("th",{attrs:{scope:"col"}},[t._v("#")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Name")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Phone")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Address")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Due")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Paid")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Action")])])])}],!1,null,"c9685118",null);a.default=c.exports}}]);