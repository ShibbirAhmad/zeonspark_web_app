(window.webpackJsonp=window.webpackJsonp||[]).push([[13],{1228:function(t,a,s){"use strict";s.r(a);var n={created:function(){this.supplierAmount()},data:function(){return{amount:"",loading:!0,supplier:"",paid_items:"",purchase_items:"",payment_history_show:!1}},methods:{supplierAmount:function(){var t=this;axios.get("/api/suplier/amount/"+this.$route.params.id).then((function(a){console.log(a),t.supplier=a.data.supplier,t.amount=a.data.amount,t.paid_items=a.data.paid_items,t.purchase_items=a.data.purchase_items,t.loading=!1})).catch((function(t){console.log(t)}))},totalAmount:function(){var t=0;return this.purchase_items.forEach((function(a){t+=parseInt(a.total)})),t},dueamount:function(){var t=0;return this.purchase_items.forEach((function(a){t+=parseInt(a.total)-parseInt(a.paid)})),t},PaymentDue:function(){var t=0;return this.paid_items.forEach((function(a){t+=parseInt(a.amount)})),t},productQty:function(t){var a=0;return t.forEach((function(t){a+=parseInt(t.stock)})),a},productQtyTotal:function(){var t=0;return this.purchase_items.forEach((function(a){a.purchase_items.forEach((function(a){t+=parseInt(a.stock)}))})),t},totalPaid:function(){var t=0;return this.purchase_items.forEach((function(a){t+=parseInt(a.paid)})),t}}},i=(s(669),s(1)),e=Object(i.a)(n,(function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("div",[s("admin-main"),t._v(" "),s("div",{staticClass:"content-wrapper"},[s("section",{staticClass:"content"},[t.loading?s("div",[t.loading?s("h1",{staticClass:"text-center"},[s("i",{staticClass:"fa fa-spin fa-spinner"})]):t._e()]):s("div",{staticClass:"container"},[s("div",{staticClass:"row justify-content-center"},[s("div",{staticClass:"col-lg-11"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-lg-12",staticStyle:{background:"#fff","margin-bottom":"13px","font-weight":"bolder","text-align":"center","box-shadow":"3px 3px 3px #ddd"}},[s("h3",{staticClass:"text-uppercase",staticStyle:{"font-weight":"bold"}},[t._v("\n                  Supplier:"+t._s(t.supplier.company_name)+"\n                ")])])]),t._v(" "),s("div",{staticClass:"row"},[s("div",{staticClass:"col-lg-4"},[s("div",{staticClass:"supplier-box"},[s("h3",{staticClass:"c-name text-uppercase"},[t._v("Total Purchse Amount")]),t._v(" "),s("hr"),t._v(" "),s("h3",{staticClass:"c-name text-uppercase"},[t._v("\n                    "+t._s(t.amount.total_purchase_amount)+"\n                  ")])])]),t._v(" "),s("div",{staticClass:"col-lg-4"},[s("div",{staticClass:"supplier-box"},[s("h3",{staticClass:"c-name text-uppercase"},[t._v("Total Paid Amount")]),t._v(" "),s("hr"),t._v(" "),s("h3",{staticClass:"c-name text-uppercase"},[t._v(t._s(t.amount.total_paid_amount))])])]),t._v(" "),s("div",{staticClass:"col-lg-4"},[s("div",{staticClass:"supplier-box"},[s("h3",{staticClass:"c-name text-uppercase"},[t._v("Total Due Amount")]),t._v(" "),s("hr"),t._v(" "),s("h3",{staticClass:"c-name text-uppercase"},[t._v("\n                    "+t._s(parseInt(t.amount.total_purchase_amount)-parseInt(t.amount.total_paid_amount))+"\n                  ")])])])]),t._v(" "),s("br"),t._v(" "),s("div",{staticClass:"row"},[s("div",{staticClass:"col-lg-12"},[s("div",{staticClass:"tab-menu-list"},[s("li",{class:[{active:t.payment_history_show}],on:{click:function(a){t.payment_history_show=!0}}},[t._v("\n                    Payment history\n                    "),s("a",{staticStyle:{background:"#000",color:"#fff",cursor:"pointer"},attrs:{href:"/api/pdf/suplier/amount/"+t.supplier.id}},[t._v("\n                      PDF\n                    ")])]),t._v(" "),s("li",{class:[{active:!t.payment_history_show}],on:{click:function(a){t.payment_history_show=!1}}},[t._v("\n                    Purchase history\n                    "),s("a",{staticStyle:{background:"#000",color:"#fff",cursor:"pointer"},attrs:{href:"/api/pdf/suplier/purchase/"+t.supplier.id}},[t._v("\n                      PDF\n                    ")])])])])]),t._v(" "),s("div",{staticClass:"row"},[t.payment_history_show?s("div",{staticClass:"col-lg-12",staticStyle:{background:"#fff",padding:"15px 16px"}},[s("h4",[t._v("Payment History")]),t._v(" "),t.paid_items.length>0?s("table",{staticClass:"table"},[t._m(0),t._v(" "),s("tbody",[t._l(t.paid_items,(function(a,n){return s("tr",{key:n},[s("td",[t._v("\n                        "+t._s(n+1)+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(a.date)+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(a.paid_by?a.paid_by:"")+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(a.amount)+"\n                      ")])])})),t._v(" "),s("tr",[s("td",{attrs:{colspan:"3"}}),t._v(" "),s("td",[s("strong",[t._v(" = "+t._s(t.PaymentDue()))])])])],2)]):s("h3",{staticClass:"text-center text-uppercase text-bold"},[t._v("\n                  Payment History Is Empty\n                ")])]):t._e(),t._v(" "),t.payment_history_show?t._e():s("div",{staticClass:"col-lg-12",staticStyle:{background:"#fff",padding:"15px 16px"}},[s("h4",[t._v("Purchase History")]),t._v(" "),t.purchase_items.length>0?s("table",{staticClass:"table"},[t._m(1),t._v(" "),s("tbody",[t._l(t.purchase_items,(function(a,n){return s("tr",{key:n},[s("td",[t._v("\n                        "+t._s(n+1)+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(a.purchase_date)+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(a.invoice_no)+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(t.productQty(a.purchase_items))+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(a.total)+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(a.paid)+"\n                      ")]),t._v(" "),s("td",[t._v("\n                        "+t._s(parseInt(a.total)-parseInt(a.paid))+"\n                      ")]),t._v(" "),s("td",[s("router-link",{staticClass:"btn btn-primary btn-sm",attrs:{to:{name:"purchaseView",params:{id:a.id}},target:"_blank"}},[t._v("Details")])],1)])})),t._v(" "),s("tr",[s("td",{attrs:{colspan:"3"}}),t._v(" "),s("td",[s("strong",[t._v("= "+t._s(t.productQtyTotal()))])]),t._v(" "),s("td",[s("strong",[t._v("= "+t._s(t.totalAmount()))])]),t._v(" "),s("td",[s("strong",[t._v("= "+t._s(t.totalPaid()))])]),t._v(" "),s("td",[s("strong",[t._v("= "+t._s(t.dueamount()))])])])],2)]):s("h3",{staticClass:"text-center text-uppercase text-bold"},[t._v("\n                  Purchas History Is Empty\n                ")])])])])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("thead",[a("tr",[a("td",[this._v("#")]),this._v(" "),a("td",[this._v("Date")]),this._v(" "),a("td",[this._v("Paid By")]),this._v(" "),a("td",[this._v("Amount")])])])},function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("thead",[s("tr",[s("td",[t._v("#")]),t._v(" "),s("td",[t._v("Date")]),t._v(" "),s("td",[t._v("Invoice_no")]),t._v(" "),s("td",[t._v("Product Qty")]),t._v(" "),s("td",[t._v("Amount")]),t._v(" "),s("td",[t._v("Paid")]),t._v(" "),s("td",[t._v("Due")]),t._v(" "),s("td",[t._v("Action")])])])}],!1,null,"70a316d2",null);a.default=e.exports},163:function(t,a,s){var n=s(670);"string"==typeof n&&(n=[[t.i,n,""]]);var i={hmr:!0,transform:void 0,insertInto:void 0};s(5)(n,i);n.locals&&(t.exports=n.locals)},669:function(t,a,s){"use strict";var n=s(163);s.n(n).a},670:function(t,a,s){(t.exports=s(4)(!1)).push([t.i,"\n.supplier-box[data-v-70a316d2] {\r\n  background: #fff;\r\n  padding: 10px;\r\n  box-shadow: 3px 3px 3px #ddd;\r\n  border-radius: 5px;\r\n  height: 200px;\n}\n.c-name[data-v-70a316d2] {\r\n  text-align: center;\r\n  height: 50px;\r\n  font-weight: bold;\n}\n.tab-menu-list[data-v-70a316d2] {\r\n  display: flex;\r\n  background: #ecf0f5;\n}\n.tab-menu-list li[data-v-70a316d2] {\r\n  list-style: none;\r\n  padding: 15px;\r\n  text-transform: uppercase;\r\n  font-size: 17px;\r\n  font-weight: bold;\r\n  cursor: pointer;\r\n  margin-bottom: 10px;\n}\nli.active[data-v-70a316d2] {\r\n  border-bottom: 2px solid #000;\r\n  background: #fff;\n}\r\n",""])}}]);