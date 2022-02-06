(window.webpackJsonp=window.webpackJsonp||[]).push([[86],{1232:function(t,a,e){"use strict";e.r(a);var s={created:function(){this.dueList(),this.balanceList()},data:function(){return{credit_dues:{},loading:!0,item:20,search:"",status:"all",credit_in:""}},methods:{balanceList:function(){var t=this;axios.get("/api/balance/list").then((function(a){t.balance=a.data.balance}))},dueList:function(){var t=this,a=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;this.loading=!0,axios.get("/api/credit/due?page="+a,{params:{item:this.item}}).then((function(a){console.log(a),t.credit_dues=a.data,t.loading=!1})).catch((function(t){console.log(t)}))},searchCredit:function(){this.search.length>=2?(this.status="search",this.dueList()):(this.status="all",this.dueList())},getPaid:function(t,a){var e=this;axios.get("/api/balance/list").then((function(s){console.log(s);var i={};s.data.balance.forEach((function(t){i[t.id]=t.name})),Swal.fire({title:"Select a balance",input:"select",inputOptions:i,inputPlaceholder:"Select One",showCancelButton:!0}).then((function(s){s.value?(e.credit_in=s.value,Swal.fire({html:'\n          <label>Amount</label>\n          <input id="amount" value='.concat(e.credit_dues.data[a].amount,' class="swal2-input">\n          '),showCancelButton:!0}).then((function(s){if(s.value){var i=document.getElementById("amount").value,n=e.credit_in;i>0&&i.length>0&&n.length>0&&axios.get("/api/due/to/paid/"+t,{params:{credit_in:n,amount:i}}).then((function(t){console.log(t),"SUCCESS"==t.data.status?(Swal.fire({type:"info",text:t.data.message}),1==t.data.due.status?e.credit_dues.data.splice(a,1):(console.log(e.credit_dues.data[a].amount),e.credit_dues.data[a].amount=t.data.due.amount)):Swal.fire({type:"warning",text:t.data.message})}))}console.log(s)}))):e.credit_in=""}))}))}}},i=(e(673),e(1)),n=Object(i.a)(s,(function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",[e("admin-main"),t._v(" "),e("div",{staticClass:"content-wrapper"},[e("section",{staticClass:"content-header"},[e("h1",[e("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"creditAdd"}}},[e("i",{staticClass:"fa fa-plus"})]),t._v(" "),e("router-link",{staticClass:"btn btn-info",attrs:{to:{name:"debit"}}},[t._v("Debit")])],1),t._v(" "),t._m(0)]),t._v(" "),e("section",{staticClass:"content"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row justify-content-center"},[e("div",{staticClass:"col-lg-11"},[e("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),e("div",{staticClass:"box-body"},[e("table",{staticClass:"table"},[t._m(2),t._v(" "),e("tbody",[t.loading?e("h1",{staticClass:"text-center"},[e("i",{staticClass:"fa fa-spin fa-spinner"})]):t._e(),t._v(" "),t._l(t.credit_dues.data,(function(a,s){return e("tr",{key:s},[e("td",{attrs:{scope:"row"}},[t._v(t._s(s+1))]),t._v(" "),e("td",[t._v(t._s(a.created_at))]),t._v(" "),e("td",[t._v(t._s(a.customer_name))]),t._v(" "),e("td",[t._v(t._s(a.customer_mobile_no))]),t._v(" "),e("td",[e("router-link",{attrs:{to:{name:"ViewSale",params:{id:a.sale_id}}}},[t._v("\n\n                        "+t._s("S-")+" "+t._s(a.sale_id)+"\n\n                          ")])],1),t._v(" "),e("td",[t._v(t._s(a.amount))]),t._v(" "),e("td",[e("a",{staticClass:"btn btn-sm btn-success",attrs:{id:"paid"},on:{click:function(e){return t.getPaid(a.id,s)}}},[t._v("Get Paid")])])])}))],2)])]),t._v(" "),e("div",{staticClass:"box-footer"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-6"},[e("pagination",{attrs:{data:t.credit_dues},on:{"pagination-change-page":t.dueList}})],1),t._v(" "),e("div",{staticClass:"col-lg-6 mt-1",staticStyle:{"margin-top":"25px","text-align":"right"}},[e("p",[t._v("\n                      Showing "),e("strong",[t._v(t._s(t.credit_dues.from))]),t._v(" to\n                      "),e("strong",[t._v(t._s(t.credit_dues.to))]),t._v(" of total\n                      "),e("strong",[t._v(t._s(t.credit_dues.total))]),t._v(" entries\n                    ")])])])])])])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("Credit")])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"box-header with-border text-center"},[a("h3",{staticClass:"box-title"},[this._v("Due Table")])])},function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("thead",[e("tr",[e("th",{attrs:{scope:"col"}},[t._v("#")]),t._v(" "),e("th",[t._v("Date")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Customer Name")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Mobile No")]),t._v(" "),e("th",[t._v("Memo Number")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Amount")]),t._v(" "),e("th",{attrs:{scope:"col"}},[t._v("Action")])])])}],!1,null,"56ecaa00",null);a.default=n.exports},165:function(t,a,e){var s=e(674);"string"==typeof s&&(s=[[t.i,s,""]]);var i={hmr:!0,transform:void 0,insertInto:void 0};e(5)(s,i);s.locals&&(t.exports=s.locals)},673:function(t,a,e){"use strict";var s=e(165);e.n(s).a},674:function(t,a,e){(t.exports=e(4)(!1)).push([t.i,"\nlabel[data-v-56ecaa00] {\r\n  position: absolute;\r\n  text-align: left;\r\n  margin-bottom: 0px;\n}\r\n",""])}}]);