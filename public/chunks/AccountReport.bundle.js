(window.webpackJsonp=window.webpackJsonp||[]).push([[5],{1314:function(t,s,a){"use strict";a.r(s);var e=a(16),i=(a(0),{components:{Index:e.default},created:function(){this.filter()},data:function(){return{loading:!0,start_date:"",end_date:"",account:"",options:{format:"YYYY-MM-DD",useCurrent:!1}}},methods:{filter:function(){var t=this;this.$Progress.start(),axios.get("/account/report",{params:{start_date:this.start_date,end_date:this.end_date}}).then((function(s){console.log(s),t.$Progress.finish(),s.data&&(t.account=s.data)})).catch((function(t){console.log(t)}))},refresh:function(){this.$Progress.start(),this.start_date="",this.end_date="",this.filter(),this.$Progress.finish()}},watch:{start_date:function(t){this.filter()},end_date:function(t){this.filter()}}}),r=(a(799),a(1)),n=Object(r.a)(i,(function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",[a("admin-main"),t._v(" "),a("div",{staticClass:"content-wrapper"},[t._m(0),t._v(" "),a("section",{staticClass:"content"},[a("div",{staticClass:"container"},[a("div",{staticClass:"row justify-content-center"},[a("div",{staticClass:"col-lg-10"},[a("div",{staticClass:"box box-primary"},[a("div",{staticClass:"box-header with-border"},[a("div",{staticClass:"row",staticStyle:{"margin-bottom":"3px"}},[a("div",{staticClass:"col-lg-4"}),t._v(" "),t._m(1),t._v(" "),a("div",{staticClass:"col-lg-5"},[a("div",{staticClass:"row"},[a("div",{staticClass:"col-lg-5"},[a("date-picker",{attrs:{autocomplete:"off",placeholder:"start-date",config:t.options},model:{value:t.start_date,callback:function(s){t.start_date=s},expression:"start_date"}})],1),t._v(" "),a("div",{staticClass:"col-lg-5",staticStyle:{"margin-left":"-20px"}},[a("date-picker",{attrs:{autocomplete:"off",placeholder:"end-date",config:t.options},model:{value:t.end_date,callback:function(s){t.end_date=s},expression:"end_date"}})],1),t._v(" "),a("div",{staticClass:"col-lg-2"},[a("button",{staticClass:"btn btn-primary",on:{click:t.refresh}},[a("i",{staticClass:"fa fa-refresh"})])])])])])]),t._v(" "),a("div",{staticClass:"box-body"},[a("table",{staticClass:"table"},[t._m(2),t._v(" "),a("tbody",[a("tr",[a("td",[a("h3",[t._v(t._s(t.account.credit))])]),t._v(" "),a("td",[a("h3",[t._v(t._s(t.account.debit))])]),t._v(" "),a("td",[a("h3",{class:{"text-danger":t.account.credit-t.account.debit<0}},[t._v("\n                          "+t._s(t.account.credit-t.account.debit)+"\n                        ")])])])])])])])])])])])])],1)}),[function(){var t=this.$createElement,s=this._self._c||t;return s("section",{staticClass:"content-header"},[s("ol",{staticClass:"breadcrumb"},[s("li",[s("a",{attrs:{href:"#"}},[s("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard ")])]),this._v(" "),s("li",{staticClass:"active"},[this._v("All Order")])])])},function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"col-lg-3 orders-heading"},[s("h3",{staticClass:"box-title"},[this._v("REPORT:ACCOUNTS")])])},function(){var t=this.$createElement,s=this._self._c||t;return s("thead",[s("tr",[s("th",{attrs:{scope:"col"}},[this._v("Total Credit")]),this._v(" "),s("th",{attrs:{scope:"col"}},[this._v("Total Debit")]),this._v(" "),s("th",{attrs:{scope:"col"}},[this._v("Total Balance")])])])}],!1,null,null,null);s.default=n.exports},228:function(t,s,a){var e=a(800);"string"==typeof e&&(e=[[t.i,e,""]]);var i={hmr:!0,transform:void 0,insertInto:void 0};a(5)(e,i);e.locals&&(t.exports=e.locals)},799:function(t,s,a){"use strict";var e=a(228);a.n(e).a},800:function(t,s,a){(t.exports=a(4)(!1)).push([t.i,"\n.orders-heading {\r\n  text-align: center;\r\n  text-transform: uppercase;\r\n  border-bottom: 2px solid #000;\r\n  margin-bottom: 10px;\n}\n.box-primary{\r\n  overflow-x: scroll;\n}\r\n",""])}}]);