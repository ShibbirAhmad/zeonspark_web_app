(window.webpackJsonp=window.webpackJsonp||[]).push([[140],{1285:function(t,e,o){"use strict";o.r(e);var a=o(2),r=o.n(a),s=o(0),i=o(15),n=o.n(i);function c(t,e,o){return e in t?Object.defineProperty(t,e,{value:o,enumerable:!0,configurable:!0,writable:!0}):t[e]=o,t}r.a.component(s.HasError.name,s.HasError);var u={name:"edit_order",created:function(){var t=this;setTimeout((function(){t.others()}),2e3),this.edit(),this.balanceList()},data:function(){var t;return{form:new s.Form((t={customer_mobile:"",customer_name:"",customer_address:"",city:"",note:"",courier:"",products:[],shipping_cost:0},c(t,"courier",""),c(t,"total",0),c(t,"discount",0),c(t,"paid",0),c(t,"paid_by","select one"),c(t,"due",0),c(t,"order_type",""),c(t,"sub_city",""),c(t,"status",""),c(t,"additional_charge",0),t)),balance:"",attribute_id:"",variant_id:"",product_code:"",city_id:"",courier_id:"",shipping_cost:"",additional_charge:"",products:[],product_attributes:null,product_variants:null,cities:null,our_cities:null,couriers:null,product_quantity:1,error:"",loading:!0,sub_cities:"",city_name:""}},methods:{balanceList:function(){var t=this;axios.get("/api/balance/list").then((function(e){t.balance=e.data.balance}))},citySearch:function(){var t=this;this.city_name.length>0&&axios.get("/api/search/city/"+this.city_name).then((function(e){console.log(e),e.data.cities.data.length>0&&(document.getElementById("city_name_container").style.display="block",t.cities=e.data.cities.data)}))},edit:function(){var t=this;axios.get("/order/view/"+this.$route.params.id).then((function(e){if(console.log(e),"SUCCESS"==e.data.status){var o=e.data.order;t.form.customer_mobile=o.customer_phone,t.form.customer_name=o.customer_name,t.form.customer_address=o.customer_address,t.form.city=o.city_id,t.form.shipping_cost=o.shipping_cost,t.form.additional_charge=o.additional_charge,t.form.courier=o.courier_id,t.form.paid=o.paid,t.form.discount=o.discount,t.form.status=o.status,t.form.note=o.note,t.form.total=o.total,t.form.order_type=o.order_type,t.form.due=parseInt(o.total)-(parseInt(o.paid)+parseInt(o.discount))+parseInt(o.shipping_cost)+parseInt(o.additional_charge),o.paid_by&&(t.form.paid_by=o.paid_by);for(var a=[],r=0;r<e.data.items.length;r++)a[r]={product_id:e.data.items[r].product.id,name:e.data.items[r].product.name,product_code:e.data.items[r].product_code,quantity:e.data.items[r].quantity,price:e.data.items[r].price,variants:e.data.items[r].product.product_variant},t.products.push(a[r]),t.form.products.push(a[r]),t.form.products[r].total=e.data.items[r].total,t.form.products[r].variant_id=e.data.items[r].variant_id,t.form.products[r].attribute_id=e.data.items[r].attribute_id;t.cityWiseSubCity(),t.form.sub_city=o.sub_city_id,t.loading=!1}}))},add:function(){var t=this;this.form.paid>0&&"select one"==this.form.paid_by?alert("selecet any balance"):this.form.post("/update/order/"+this.$route.params.id).then((function(e){console.log(e),"SUCCESS"==e.data.status?(t.$router.push({name:"order"}),t.$toasted.show(e.data.message,{type:"success",position:"top-center",duration:2e3})):t.$toasted.show(e.data,{type:"error",position:"top-center",duration:4e3})})).catch((function(e){t.error="Missing submit information. please check all field below and try again"}))},others:function(){var t=this;axios.get("/others").then((function(e){"SUCCESS"==e.data.status&&(e.data.cities.forEach((function(e){t.form.city==e.id&&(t.city_name=e.name)})),t.couriers=e.data.couriers)})).catch((function(t){console.log(t)}))},searchProduct:function(){var t=this;4==this.product_code.length&&axios.get("/search/product/with/code/"+this.product_code).then((function(e){if("SUCCESS"==e.data.status){for(var o={product_id:"",price:"",quantity:1,attribute_id:"",variant_id:"",total:""},a=0;a<e.data.product.length;a++)t.products.push(e.data.product[a]),o.product_id=e.data.product[a].id,o.price=e.data.product[a].price,o.total=e.data.product[a].price;t.form.products.push(o),t.totalCalculation()}else t.$toasted.show("Product not found with "+t.product_code,{position:"top-center",type:"danger",duration:2e3})})).catch((function(t){console.log(t)}))},searchCustomer:function(){var t=this;11==this.form.customer_mobile.length&&axios.get("/search/customer/with/phone/number/"+this.form.customer_mobile).then((function(e){e.data&&(e.data.customer&&(t.form.customer_name=e.data.customer.name,t.form.customer_address=e.data.customer.address,t.form.city=e.data.customer.city_id),t.$toasted.show(e.data.message,{type:"error",position:"top-center",duration:4e3}))})).catch((function(t){}))},attribute:function(t){this.form.products[t].attribute_id=this.attribute_id},variant:function(t){this.form.products[t].variant_id=this.variant_id},quantity:function(t){this.form.products[t].total=this.form.products[t].price*this.form.products[t].quantity,this.totalCalculation()},totalCalculation:function(){for(var t=this.form.products,e=0,o=0;o<t.length;o++)e+=parseInt(t[o].price)*parseInt(t[o].quantity);this.form.total=parseInt(e),this.form.due=parseInt(this.form.total)+parseInt(this.form.shipping_cost)+parseInt(this.form.additional_charge)-(parseInt(this.form.discount)+parseInt(this.form.paid))},selectCity:function(t){document.getElementById("city_name_container").style.display="none",this.city_name=t.name,this.form.city=t.name,this.cityWiseSubCity(t.id),this.form.shipping_cost=t.delivery_charge,this.totalCalculation()},remove:function(t){console.log(this.form.products[t]),this.form.products.splice(t,1),this.products.splice(t,1),this.totalCalculation()},cityWiseSubCity:function(t){var e=this;axios.get("/api/city/wise/sub/city/"+t).then((function(t){e.form.sub_city="",t.data.length?e.sub_cities=t.data:(e.form.sub_city="",e.sub_cities="")}))}},computed:{},components:{datePicker:n.a}},l=(o(749),o(1)),d=Object(l.a)(u,(function(){var t=this,e=t.$createElement,o=t._self._c||e;return o("div",[o("admin-main"),t._v(" "),o("div",{staticClass:"content-wrapper"},[o("section",{staticClass:"content-header"},[o("h1",[o("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"order"}}},[o("i",{staticClass:"fa fa-arrow-right"})])],1),t._v(" "),t._m(0)]),t._v(" "),o("section",{staticClass:"content"},[o("form",{attrs:{id:"ProductSearch"},on:{submit:function(e){return e.preventDefault(),t.searchProduct(e)}}}),t._v(" "),t.loading?o("h1",[o("i",{staticClass:"fa fa-spin fa-spinner"})]):o("form",{on:{submit:function(e){return e.preventDefault(),t.add(e)},keydown:function(e){return t.form.onKeydown(e)}}},[o("div",{staticClass:"row justify-content-center"},[t.error?o("div",{staticClass:"alert alert-danger alert-dismissible",attrs:{role:"alert"}},[t._v("\n            "+t._s(t.error)+"\n            "),o("span",{staticClass:"close",staticStyle:{color:"#fff"},attrs:{"aria-hidden":"true","data-dismiss":"alert","aria-label":"Close"}},[t._v("×")])]):t._e(),t._v(" "),o("div",{staticClass:"col-lg-4"},[o("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),o("div",{staticClass:"box-body"},[o("div",{staticClass:"form-group"},[o("label",[t._v("Customer_mobile")]),t._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.customer_mobile,expression:"form.customer_mobile"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("customer_mobile")},attrs:{type:"text",name:"customer_mobile",autofocus:"",autocomplete:"off",placeholder:"Enter customer 11 digit mobile number"},domProps:{value:t.form.customer_mobile},on:{keyup:t.searchCustomer,input:function(e){e.target.composing||t.$set(t.form,"customer_mobile",e.target.value)}}}),t._v(" "),o("has-error",{attrs:{form:t.form,field:"customer_mobile"}})],1),t._v(" "),o("div",{staticClass:"form-group"},[o("label",[t._v("Name")]),t._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.customer_name,expression:"form.customer_name"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("customer_name")},attrs:{type:"text",name:"name",autofocus:"",autocomplete:"off",placeholder:"Name"},domProps:{value:t.form.customer_name},on:{input:function(e){e.target.composing||t.$set(t.form,"customer_name",e.target.value)}}}),t._v(" "),o("has-error",{attrs:{form:t.form,field:"customer_name"}})],1),t._v(" "),o("div",{staticClass:"form-group"},[o("label",[t._v("Address")]),t._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.customer_address,expression:"form.customer_address"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("customer_address")},attrs:{type:"text",name:"address",autofocus:"",autocomplete:"off",placeholder:"address"},domProps:{value:t.form.customer_address},on:{input:function(e){e.target.composing||t.$set(t.form,"customer_address",e.target.value)}}}),t._v(" "),o("has-error",{attrs:{form:t.form,field:"customer_address"}})],1),t._v(" "),o("div",{staticClass:"form-group"},[o("label",{attrs:{for:"note"}},[t._v("Order Note")]),t._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.note,expression:"form.note"}],staticClass:"form-control",attrs:{type:"text",name:"note"},domProps:{value:t.form.note},on:{input:function(e){e.target.composing||t.$set(t.form,"note",e.target.value)}}})]),t._v(" "),o("div",{staticClass:"form-group"},[o("label",[t._v("City")]),t._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:t.city_name,expression:"city_name"}],staticClass:"form-control",attrs:{type:"text",autocomplete:"off"},domProps:{value:t.city_name},on:{keyup:t.citySearch,input:function(e){e.target.composing||(t.city_name=e.target.value)}}}),t._v(" "),o("ul",{staticClass:"list-group",attrs:{id:"city_name_container"}},t._l(t.cities,(function(e,a){return o("li",{key:a,staticClass:"list-group-item city_name",staticStyle:{cursor:"pointer"},on:{click:function(o){return t.selectCity(e)}}},[t._v("\n                      "+t._s(e.name)+"\n                    ")])})),0)]),t._v(" "),o("div",{staticClass:"form-group"},[o("label",[t._v("Sub City")]),t._v(" "),o("select",{directives:[{name:"model",rawName:"v-model",value:t.form.sub_city,expression:"form.sub_city"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("sub_city")},attrs:{name:"sub_city"},on:{change:function(e){var o=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form,"sub_city",e.target.multiple?o:o[0])}}},[o("option",{attrs:{disabled:"",value:""}},[t._v("select sub city")]),t._v(" "),t._l(t.sub_cities,(function(e){return t.sub_cities.length>0?o("option",{key:e.id,domProps:{value:e.name}},[t._v("\n                      "+t._s(e.name)+"\n                    ")]):t._e()}))],2),t._v(" "),o("has-error",{attrs:{form:t.form,field:"sub_city"}})],1),t._v(" "),o("div",{staticClass:"form-group"},[o("label",[t._v("Shipping Charge")]),t._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.shipping_cost,expression:"form.shipping_cost"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("shipping_cost")},attrs:{type:"text",name:"shipping_cost"},domProps:{value:t.form.shipping_cost},on:{input:function(e){e.target.composing||t.$set(t.form,"shipping_cost",e.target.value)}}}),t._v(" "),o("has-error",{attrs:{form:t.form,field:"shipping_cost"}})],1),t._v(" "),o("div",{staticClass:"form-group"},[o("label",[t._v("Courier")]),t._v(" "),o("select",{directives:[{name:"model",rawName:"v-model",value:t.form.courier,expression:"form.courier"}],staticClass:"form-control",class:{"is-invalid":t.form.errors.has("courier")},attrs:{name:"courier"},on:{change:function(e){var o=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form,"courier",e.target.multiple?o:o[0])}}},[o("option",{attrs:{value:""}},[t._v("select courier")]),t._v(" "),t._l(t.couriers,(function(e){return o("option",{domProps:{value:e.id}},[t._v("\n                      "+t._s(e.name)+"\n                    ")])}))],2),t._v(" "),o("has-error",{attrs:{form:t.form,field:"courier"}})],1),t._v(" "),o("div",{staticClass:"form-group"},[o("label",[t._v("Status")]),t._v(" "),o("select",{directives:[{name:"model",rawName:"v-model",value:t.form.status,expression:"form.status"}],staticClass:"form-control",attrs:{name:"status"},on:{change:function(e){var o=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form,"status",e.target.multiple?o:o[0])}}},[o("option",{attrs:{value:"3"}},[t._v("Confirmed")]),t._v(" "),o("option",{attrs:{value:"2"}},[t._v("Pending")])])])])])]),t._v(" "),o("div",{staticClass:"col-lg-8"},[o("div",{staticClass:"box box-success"},[t._m(2),t._v(" "),o("div",{staticClass:"box-body"},[o("div",{staticClass:"form-group"},[o("label",[t._v("Product")]),t._v(" "),o("input",{directives:[{name:"model",rawName:"v-model",value:t.product_code,expression:"product_code"}],staticClass:"form-control",attrs:{type:"text",name:"name",autofocus:"",autocomplete:"off",placeholder:"Enter Product Code",form:"ProductSearch"},domProps:{value:t.product_code},on:{input:function(e){e.target.composing||(t.product_code=e.target.value)}}})]),t._v(" "),o("div",{staticClass:"row"},[o("div",{staticClass:"col-lg-12"},[o("table",{staticClass:"table"},[t._m(3),t._v(" "),t.products.length>0?o("tbody",[t._l(t.products,(function(e,a){return o("tr",{key:a},[o("td",[t._v(t._s(a+1))]),t._v(" "),o("td",[t._v("\n                            "+t._s(e.name+"-"+e.product_code)+"\n                            "),o("input",{attrs:{type:"hidden"},domProps:{value:e.id}})]),t._v(" "),o("td",[o("select",{directives:[{name:"model",rawName:"v-model",value:t.form.products[a].variant_id,expression:"form.products[index].variant_id"}],staticClass:"form-control",on:{change:function(e){var o=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form.products[a],"variant_id",e.target.multiple?o:o[0])}}},[o("option",{attrs:{value:""}},[t._v("select attribute")]),t._v(" "),t._l(e.variants,(function(a,r){return e.variants?o("option",{key:r,domProps:{value:a.variant.id}},[t._v("\n                                "+t._s(a.variant.name)+"\n                              ")]):t._e()}))],2)]),t._v(" "),o("td",[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.products[a].quantity,expression:"form.products[index].quantity"}],staticStyle:{width:"50px"},attrs:{type:"number"},domProps:{value:t.form.products[a].quantity},on:{keyup:function(e){return t.quantity(a)},change:function(e){return t.quantity(a)},input:function(e){e.target.composing||t.$set(t.form.products[a],"quantity",e.target.value)}}}),t._v(" "),o("span",{staticClass:"badge badge-danger"},[t._v(t._s(e.stock))])]),t._v(" "),o("td",[3==t.form.order_type?o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.products[a].price,expression:"form.products[index].price"}],domProps:{value:t.form.products[a].price},on:{keyup:function(e){t.totalCalculation&&t.quantity(a)},input:function(e){e.target.composing||t.$set(t.form.products[a],"price",e.target.value)}}}):o("strong",[t._v(t._s(e.price))])]),t._v(" "),o("td",[t._v(t._s(t.form.products[a].total))]),t._v(" "),o("td",[o("a",{staticClass:"btn btn-danger btn-sm",on:{click:function(e){return t.remove(a)}}},[o("i",{staticClass:"fa fa-trash"})])])])})),t._v(" "),t.products.length>0?o("tr",[o("td",{attrs:{colspan:"4"}}),t._v(" "),o("td",[t._v("Sub Total")]),t._v(" "),o("td",{attrs:{colspan:"2"}},[t._v(t._s(t.form.total))])]):t._e(),t._v(" "),t.products.length>0?o("tr",[o("td",{attrs:{colspan:"4"}}),t._v(" "),o("td",[t._v("Discount")]),t._v(" "),o("td",{attrs:{colspan:"2"}},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.discount,expression:"form.discount"}],staticClass:"form-control",domProps:{value:t.form.discount},on:{keyup:t.totalCalculation,input:function(e){e.target.composing||t.$set(t.form,"discount",e.target.value)}}})])]):t._e(),t._v(" "),t.products.length>0?o("tr",[o("td",{attrs:{colspan:"4"}}),t._v(" "),o("td",[t._v("Advance Payment")]),t._v(" "),o("td",{attrs:{colspan:"2"}},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.paid,expression:"form.paid"}],staticClass:"form-control",domProps:{value:t.form.paid},on:{keyup:t.totalCalculation,input:function(e){e.target.composing||t.$set(t.form,"paid",e.target.value)}}})])]):t._e(),t._v(" "),o("tr",[o("td",{attrs:{colspan:"4"}}),t._v(" "),o("td",[t._v("Paid By")]),t._v(" "),o("td",{attrs:{colspan:"2"}},[o("div",{staticClass:"form-group"},[o("select",{directives:[{name:"model",rawName:"v-model",value:t.form.paid_by,expression:"form.paid_by"}],staticClass:"form-control",on:{change:function(e){var o=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.form,"paid_by",e.target.multiple?o:o[0])}}},[o("option",{attrs:{value:"select one",disabled:""}},[t._v("\n                                  select one\n                                ")]),t._v(" "),t._l(t.balance,(function(e,a){return o("option",{key:a,domProps:{value:e.id}},[t._v("\n                                  "+t._s(e.name)+"\n                                ")])}))],2),t._v(" "),o("has-error",{attrs:{form:t.form,field:"paid_by"}})],1)])]),t._v(" "),t.products.length>0?o("tr",[o("td",{attrs:{colspan:"4"}}),t._v(" "),o("td",[t._v("Shipping Charge")]),t._v(" "),o("td",{attrs:{colspan:"2"}},[t._v(t._s(t.form.shipping_cost))])]):t._e(),t._v(" "),t.products.length>0?o("tr",[o("td",{attrs:{colspan:"4"}}),t._v(" "),o("td",[t._v("Additional Charge")]),t._v(" "),o("td",{attrs:{colspan:"2"}},[o("input",{directives:[{name:"model",rawName:"v-model",value:t.form.additional_charge,expression:"form.additional_charge"}],staticClass:"form-control",domProps:{value:t.form.additional_charge},on:{keyup:t.totalCalculation,input:function(e){e.target.composing||t.$set(t.form,"additional_charge",e.target.value)}}})])]):t._e(),t._v(" "),t.products.length>0?o("tr",[o("td",{attrs:{colspan:"4"}}),t._v(" "),o("td",[t._v("Payable Amount")]),t._v(" "),o("td",{attrs:{colspan:"2"}},[t._v(t._s(t.form.due))])]):t._e(),t._v(" "),o("button",{staticClass:"btn btn-success",staticStyle:{"margin-top":"12px"},attrs:{type:"submit"}},[t._v("\n                          Submit\n                        ")])],2):t._e()])])])])])])])])])])],1)}),[function(){var t=this.$createElement,e=this._self._c||t;return e("ol",{staticClass:"breadcrumb"},[e("li",[e("a",{attrs:{href:"#"}},[e("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard ")])]),this._v(" "),e("li",{staticClass:"active"},[this._v("Order")])])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"box-header with-border"},[e("h3",{staticClass:"box-title"},[this._v("Customer information")])])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"box-header with-border"},[e("h3",{staticClass:"box-title"},[this._v("Product information")])])},function(){var t=this,e=t.$createElement,o=t._self._c||e;return o("thead",[o("tr",[o("th",[t._v("#")]),t._v(" "),o("th",[t._v("Product")]),t._v(" "),o("th",[t._v("Variant")]),t._v(" "),o("th",[t._v("Quantity")]),t._v(" "),o("th",[t._v("Price")]),t._v(" "),o("th",[t._v("total")]),t._v(" "),o("th",[t._v("Remove")])])])}],!1,null,"ecd5b670",null);e.default=d.exports},203:function(t,e,o){var a=o(750);"string"==typeof a&&(a=[[t.i,a,""]]);var r={hmr:!0,transform:void 0,insertInto:void 0};o(5)(a,r);a.locals&&(t.exports=a.locals)},749:function(t,e,o){"use strict";var a=o(203);o.n(a).a},750:function(t,e,o){(t.exports=o(4)(!1)).push([t.i,"\n.mb-2[data-v-ecd5b670] {\r\n  margin-bottom: 5px !important;\n}\n.autocomplete[data-v-ecd5b670] {\r\n  max-height: 120px;\r\n  overflow-y: scroll;\r\n  position: absolute;\r\n  width: 100%;\r\n  z-index: 454;\n}\n.autocomplete li[data-v-ecd5b670]:hover {\r\n  background: #222d32;\r\n  color: #ffffff;\n}\n.city_name_container[data-v-ecd5b670] {\r\n  display: none;\n}\r\n",""])}}]);