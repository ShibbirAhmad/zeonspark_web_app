(window.webpackJsonp=window.webpackJsonp||[]).push([[12],{1312:function(t,a,e){"use strict";e.r(a);var s=e(16),r=(e(0),{components:{Index:s.default},created:function(){this.filter(),this.t_date()},data:function(){return{loading:!0,start_date:"",end_date:"",data:{},item:50,options:{format:"YYYY-MM-DD",useCurrent:!1}}},methods:{filter:function(){var t=this,a=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;this.$Progress.start(),axios.get("/sale/profite/report?page="+a,{params:{start_date:this.start_date,end_date:this.end_date,item:this.item}}).then((function(a){console.log(a),t.$Progress.finish(),a.data&&(t.data=a.data,t.loading=!1)})).catch((function(t){console.log(t)}))},refresh:function(){this.$Progress.start(),this.start_date="",this.end_date="",this.filter(),this.$Progress.finish()},totalproductQuantity:function(){var t=0;for(var a in this.data)t+=parseInt(this.data[a].product_count),console.log(this.data[a].product_count);return t},totalProfite:function(){var t=0;for(var a in this.data)t+=parseInt(this.data[a].sale_total)-parseInt(this.data[a].product_purchase_amount),console.log(this.data[a].product_count);return t},totalSalePrie:function(){var t=0;for(var a in this.data)t+=parseInt(this.data[a].sale_total),console.log(this.data[a].product_count);return t},totalPurchasePrie:function(){var t=0;for(var a in this.data)t+=parseInt(this.data[a].product_purchase_amount),console.log(this.data[a].product_count);return t},profitePercntage:function(t,a){var e=parseFloat(t)-parseFloat(a);return(parseFloat(e)/parseFloat(a)*parseInt(100)).toFixed(2)},t_date:function(){var t=new Date,a=t.getMonth()+1,e=t.getDate(),s=t.getFullYear()+"-"+((""+a).length<2?"0":"")+a+"-"+((""+e).length<2?"0":"")+e;this.start_date=s}},watch:{start_date:function(t){this.filter()},end_date:function(t){this.filter()}}}),o=(e(795),e(1)),n=Object(o.a)(r,(function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",[e("admin-main"),t._v(" "),e("div",{staticClass:"content-wrapper"},[t._m(0),t._v(" "),e("section",{staticClass:"content"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row justify-content-center"},[e("div",{staticClass:"col-lg-10"},[e("div",{staticClass:"box box-primary"},[e("div",{staticClass:"box-header with-border"},[e("div",{staticClass:"row",staticStyle:{"margin-bottom":"3px"}},[e("div",{staticClass:"col-lg-2"},[e("select",{directives:[{name:"model",rawName:"v-model",value:t.item,expression:"item"}],staticClass:"form-control",on:{change:[function(a){var e=Array.prototype.filter.call(a.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.item=a.target.multiple?e:e[0]},t.filter]}},[e("option",{attrs:{value:"50"}},[t._v("50")]),t._v(" "),e("option",{attrs:{value:"100"}},[t._v("100")]),t._v(" "),e("option",{attrs:{value:"200"}},[t._v("200")]),t._v(" "),e("option",{attrs:{value:"300"}},[t._v("300")]),t._v(" "),e("option",{attrs:{value:"400"}},[t._v("400")]),t._v(" "),e("option",{attrs:{value:"500"}},[t._v("500")]),t._v(" "),e("option",{attrs:{value:"1000"}},[t._v("1000")])])]),t._v(" "),t._m(1),t._v(" "),t._m(2),t._v(" "),e("div",{staticClass:"col-lg-5"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-5"},[e("date-picker",{attrs:{autocomplete:"off",placeholder:"start-date",config:t.options},model:{value:t.start_date,callback:function(a){t.start_date=a},expression:"start_date"}})],1),t._v(" "),e("div",{staticClass:"col-lg-5",staticStyle:{"margin-left":"-20px"}},[e("date-picker",{attrs:{autocomplete:"off",placeholder:"end-date",config:t.options},model:{value:t.end_date,callback:function(a){t.end_date=a},expression:"end_date"}})],1),t._v(" "),e("div",{staticClass:"col-lg-2"},[e("button",{staticClass:"btn btn-primary",on:{click:t.refresh}},[e("i",{staticClass:"fa fa-refresh"})])])])])])]),t._v(" "),e("div",{staticClass:"box-body"},[e("table",{staticClass:"table table-striped"},[t._m(3),t._v(" "),e("tbody",[t.loading?e("h1",{staticClass:"text-center"},[e("i",{staticClass:"fa fa-spin fa-spinner"})]):t._l(t.data,(function(a,s){return e("tr",{key:s},[e("td",[e("a",{attrs:{href:"/backend/sale/view/"+a.sale_invoice,target:"_blank"}},[t._v("\n                          "+t._s("S-"+a.sale_invoice)+"\n                        ")])]),t._v(" "),e("td",[t._v(t._s(a.product_count))]),t._v(" "),e("td",[t._v(t._s(parseInt(a.sale_total)))]),t._v(" "),e("td",[t._v(t._s(parseInt(a.product_purchase_amount)))]),t._v(" "),e("td",[t._v("\n                        "+t._s(parseInt(a.sale_total)-parseInt(a.product_purchase_amount))+"\n                      ")]),t._v(" "),e("td",[t._v("\n                        "+t._s(t.profitePercntage(a.sale_total,a.product_purchase_amount))+"\n                      ")])])})),t._v(" "),e("tr",[e("td"),t._v(" "),e("td",[e("strong",[t._v(" = "+t._s(t.totalproductQuantity()))])]),t._v(" "),e("td",[e("strong",[t._v(" = "+t._s(t.totalSalePrie()))])]),t._v(" "),e("td",[e("strong",[t._v(" = "+t._s(t.totalPurchasePrie()))])]),t._v(" "),e("td",[e("strong",[e("b",[t._v(t._s(t.totalProfite()))])])])])],2)])])])])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("section",{staticClass:"content-header"},[a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard ")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("Office Sale Report")])])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"col-lg-2"},[a("div",{staticClass:"col-lg-2"})])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"col-lg-3 orders-heading"},[a("h3",{staticClass:"box-title"},[this._v("SALE PROFIT REPORT")])])},function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("thead",[e("tr",[e("th",{attrs:{scope:"col"}},[t._v("Sale Invoice")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Invoice Product Qty")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Invoice Sale Amount")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Invoice Purchase Amount")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Profit")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Profit Rate "),e("strong",[e("small",[t._v("%")])])])])])}],!1,null,null,null);a.default=n.exports},226:function(t,a,e){var s=e(796);"string"==typeof s&&(s=[[t.i,s,""]]);var r={hmr:!0,transform:void 0,insertInto:void 0};e(5)(s,r);s.locals&&(t.exports=s.locals)},795:function(t,a,e){"use strict";var s=e(226);e.n(s).a},796:function(t,a,e){(t.exports=e(4)(!1)).push([t.i,"\n.orders-heading {\r\n  text-align: center;\r\n  text-transform: uppercase;\r\n  border-bottom: 2px solid #000;\r\n  margin-bottom: 10px;\n}\n.box-primary{\r\n  overflow-x: scroll;\n}\r\n\r\n\r\n",""])}}]);