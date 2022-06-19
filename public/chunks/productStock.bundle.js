(window.webpackJsonp=window.webpackJsonp||[]).push([[161],{1147:function(t,a,s){"use strict";s.r(a);s(0);function o(t){return(o="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}var e={props:{table_id:{type:String,required:!0}},methods:{exportCsv:function(){var t=document.getElementById(this.table_id);console.log(t),console.log(o(t));for(var a=0,s=t.rows.length;a<s;a++)for(var e=0,r=t.rows[a].cells.length;e<r;e++)console.log(t.rows[a].cells[e].innerHTML)}}},r=s(1),n={created:function(){this.productList()},data:function(){return{products:{},loading:!0,search:"",item:10}},methods:{productList:function(){var t=this,a=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;console.log("resp"),axios.get("/api/product/stock?page="+a,{params:{item:this.item}}).then((function(a){a.data&&(t.products=a.data,t.loading=!1)})).catch((function(t){console.log(t)}))},searchProducts:function(){var t=this;this.search.length>1?axios.get("/api/search/seggested/product/with/name/code/"+this.search).then((function(a){console.log(a),a.data?(console.log(a.data),t.products=a.data):t.productList()})):this.productList()},downloadPDF:function(){window.open("/api/get/stock/product/pdf","_blank")},totalPurchaseQuanityt:function(t){var a=0;return t.forEach((function(t){a+=parseInt(t.stock)})),a},avaragePrice:function(t){var a=0,s=0;return t.forEach((function(t){a+=parseInt(t.price)*parseInt(t.stock),s+=parseInt(t.stock)})),(parseFloat(a)/parseFloat(s)).toFixed(2)},totalPrice:function(t){var a=0;return t.forEach((function(t){a+=parseInt(t.price)*parseInt(t.stock)})),parseFloat(a)},curentStockPrice:function(t,a){var s=0,o=0;a.forEach((function(t){s+=parseInt(t.price)*parseInt(t.stock),o+=parseInt(t.stock)}));var e=s/o;return"".concat(t,"*").concat(e.toFixed(2),"=").concat(parseFloat(t)*parseFloat(e.toFixed(2)))}},computed:{},components:{csvExport:Object(r.a)(e,(function(){var t=this.$createElement,a=this._self._c||t;return a("div",[a("button",{staticClass:"btn btn-success",on:{click:this.exportCsv}},[this._v("csv")])])}),[],!1,null,null,null).exports}},c=(s(713),Object(r.a)(n,(function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("div",[s("admin-main"),t._v(" "),s("div",{staticClass:"content-wrapper"},[t._m(0),t._v(" "),s("section",{staticClass:"content"},[s("div",{staticClass:"container"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-lg-10"},[s("div",{staticClass:"box box-primary"},[s("div",{staticClass:"box-header with-border"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-lg-2"},[s("select",{directives:[{name:"model",rawName:"v-model",value:t.item,expression:"item"}],staticClass:"form-control",on:{change:[function(a){var s=Array.prototype.filter.call(a.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.item=a.target.multiple?s:s[0]},function(a){return t.productList()}]}},[s("option",{attrs:{value:"20"}},[t._v("20")]),t._v(" "),s("option",{attrs:{value:"40"}},[t._v("40")]),t._v(" "),s("option",{attrs:{value:"80"}},[t._v("80")]),t._v(" "),s("option",{attrs:{value:"150"}},[t._v("150")]),t._v(" "),s("option",{attrs:{value:"200"}},[t._v("200")]),t._v(" "),s("option",{attrs:{value:"500"}},[t._v("500")])])]),t._v(" "),s("div",{staticClass:"col-lg-2"}),t._v(" "),t._m(1),t._v(" "),s("div",{staticClass:"col-lg-4"},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.search,expression:"search"}],staticClass:"form-control",attrs:{placeholder:"search with product code || product name "},domProps:{value:t.search},on:{keyup:function(a){return t.searchProducts()},input:function(a){a.target.composing||(t.search=a.target.value)}}})])])]),t._v(" "),s("div",{staticClass:"box-body"},[s("table",{staticClass:"table",attrs:{id:"myTable"}},[t._m(2),t._v(" "),s("tbody",[t.loading?s("h1",{staticClass:"text-center"},[s("i",{staticClass:"fa fa-spin fa-spinner"})]):t._e(),t._v(" "),t._l(t.products.data,(function(a,o){return s("tr",{key:o},[s("td",{attrs:{scope:"row"}},[t._v(t._s(o+1))]),t._v(" "),s("td",[s("h4",[t._v("\n                          "+t._s(a.name+"-"+a.product_code)+"\n                        ")])]),t._v(" "),s("td",[t._v("\n                     "+t._s(a.stock)+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(t.totalPurchaseQuanityt(a.purchase_item))+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(t.avaragePrice(a.purchase_item))+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(t.totalPrice(a.purchase_item))+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(t.curentStockPrice(a.stock,a.purchase_item))+"\n                      ")]),t._v(" "),s("td")])}))],2)])]),t._v(" "),s("div",{staticClass:"box-footer"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-lg-6"},[s("pagination",{attrs:{data:t.products,limit:5},on:{"pagination-change-page":t.productList}})],1),t._v(" "),s("div",{staticClass:"col-lg-6 mt-1",staticStyle:{"margin-top":"25px","text-align":"right"}},[s("csvExport",{attrs:{table_id:"myTable"}}),t._v(" "),s("p",[t._v("\n                      Showing\n                      "),s("strong",[t._v(t._s(t.products.from))]),t._v(" to\n                      "),s("strong",[t._v(t._s(t.products.to))]),t._v(" of total\n                      "),s("strong",[t._v(t._s(t.products.total))]),t._v(" entries\n                    ")])],1)])])])])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("section",{staticClass:"content-header"},[a("h1"),this._v(" "),a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard ")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("Product Stock")])])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"col-lg-4 orders-heading"},[a("h3",{staticClass:"box-title"},[this._v("REPORT:STOCK")])])},function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("thead",[s("tr",[s("th",{attrs:{scope:"col"}},[t._v("#")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Product")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Stock")]),t._v(" "),s("th",[t._v("Total Purchase quantity")]),t._v(" "),s("th",[t._v("Avarage purchase price")]),t._v(" "),s("th",[t._v("Total purchase Price")]),t._v(" "),s("th",[t._v("Cureent Stock Value")])])])}],!1,null,"5ea0b5c8",null));a.default=c.exports},185:function(t,a,s){var o=s(714);"string"==typeof o&&(o=[[t.i,o,""]]);var e={hmr:!0,transform:void 0,insertInto:void 0};s(5)(o,e);o.locals&&(t.exports=o.locals)},713:function(t,a,s){"use strict";var o=s(185);s.n(o).a},714:function(t,a,s){(t.exports=s(4)(!1)).push([t.i,"\n.box-primary[data-v-5ea0b5c8]{\r\n  overflow-x: scroll;\n}\r\n\r\n",""])}}]);