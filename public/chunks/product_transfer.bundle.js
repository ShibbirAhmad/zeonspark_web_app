(window.webpackJsonp=window.webpackJsonp||[]).push([[162],{1344:function(t,s,a){"use strict";a.r(s);var o={created:function(){this.transactionsList(),this.getShowroms()},data:function(){return{transactions:{},loading:!0,showrooms:""}},methods:{transactionsList:function(){var t=this,s=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;axios.get("/api/showroom/transaction/list?page="+s).then((function(s){console.log(s),"OK"==s.data.status&&(t.transactions=s.data.transactions,t.loading=!1)}))},getShowroms:function(){var t=this;axios.get("/api/showroom/list").then((function(s){"SUCCESS"==s.data.status&&(t.showrooms=s.data.showrooms,t.loading=!1)}))},showroomName:function(t){if(this.showrooms.length){var s="";return this.showrooms.forEach((function(a){a.id==t&&(s=a.name)})),s}}}},e=a(1),i=Object(e.a)(o,(function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",[a("admin-main"),t._v(" "),a("div",{staticClass:"content-wrapper"},[a("section",{staticClass:"content-header"},[a("h1",[a("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"product_transfer_add"}}},[a("i",{staticClass:"fa fa-plus"})])],1),t._v(" "),t._m(0)]),t._v(" "),a("section",{staticClass:"content"},[a("div",{staticClass:"container"},[a("div",{staticClass:"row "},[a("div",{staticClass:"col-lg-11 col-md-11"},[a("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),a("div",{staticClass:"box-body"},[a("table",{staticClass:"table table-bordered table-hover table-striped text-center "},[t._m(2),t._v(" "),a("tbody",[t.loading?a("h1",[a("i",{staticClass:"fa fa-spin fa-spinner"})]):t._l(t.transactions.data,(function(s,o){return a("tr",{key:o},[a("td",{attrs:{scope:"row"}},[t._v(t._s(o+1))]),t._v(" "),a("td",[t._v(t._s(t.showroomName(s.showroom_id)))]),t._v(" "),a("td",[t._v(t._s(s.invoice_no))]),t._v(" "),a("td",[t._v(" ৳ "+t._s(s.total)+" ")]),t._v(" "),a("td",[0==s.status?a("span",{staticClass:"badge badge-warning"},[t._v(" Pending ")]):a("span",{staticClass:"badge badge-success"},[t._v(" Approved ")])]),t._v(" "),a("td",[t._v(t._s(s.comment))]),t._v(" "),a("td",[a("router-link",{staticClass:"btn btn-sm btn-success",attrs:{to:{name:"product_transfer_details",params:{id:s.id}}}},[a("i",{staticClass:"fa fa-eye"})])],1)])}))],2)])])])])])])])])],1)}),[function(){var t=this.$createElement,s=this._self._c||t;return s("ol",{staticClass:"breadcrumb"},[s("li",[s("a",{attrs:{href:"#"}},[s("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),s("li",{staticClass:"active"},[this._v("product transfer")])])},function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"box-header with-border text-center"},[s("h3",{staticClass:"box-title"},[this._v("Product Trasformatin Tables")])])},function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("thead",[a("tr",[a("th",{attrs:{scope:"col"}},[t._v("#")]),t._v(" "),a("th",{attrs:{scope:"col"}},[t._v("Showroom ")]),t._v(" "),a("th",{attrs:{scope:"col"}},[t._v("Invoice")]),t._v(" "),a("th",{attrs:{scope:"col"}},[t._v("Total Amount ")]),t._v(" "),a("th",{attrs:{scope:"col"}},[t._v("Status")]),t._v(" "),a("th",{attrs:{scope:"col"}},[t._v("Comment")]),t._v(" "),a("th",{attrs:{scope:"col"}},[t._v("Details")])])])}],!1,null,"e3a6ceea",null);s.default=i.exports}}]);