(window.webpackJsonp=window.webpackJsonp||[]).push([[175],{1364:function(t,s,a){"use strict";a.r(s);var e={created:function(){this.receiveList()},data:function(){return{prints:"",loading:!0,product_name:this.$route.params.name}},methods:{receiveList:function(){var t=this;axios.get("/api/get/receive/product/details",{params:{product_name:this.product_name}}).then((function(s){console.log(s),t.prints=s.data,t.loading=!1}))}}},i=a(1),c=Object(i.a)(e,(function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",[a("admin-main"),t._v(" "),a("div",{staticClass:"content-wrapper"},[t._m(0),t._v(" "),a("section",{staticClass:"content"},[a("div",{staticClass:"container"},[a("div",{staticClass:"row justify-content-center"},[a("div",{staticClass:"col-lg-10 col-lg-10 offset-1"},[a("div",{staticClass:"box box-primary"},[a("div",{staticClass:"box-header text-center with-border"},[a("h3",{staticClass:"box-title"},[t._v(" "+t._s(t.product_name)+" Receive Details ")])]),t._v(" "),a("div",{staticClass:"box-body"},[a("table",{staticClass:"table table-striped table-bordared text-center "},[t._m(1),t._v(" "),a("tbody",[t.loading?a("h1",{staticClass:"text-center"},[a("i",{staticClass:"fa fa-spin fa-spinner"})]):t._e(),t._v(" "),t._l(t.prints,(function(s,e){return a("tr",{key:e},[a("td",{attrs:{scope:"row"}},[t._v(t._s(e+1))]),t._v(" "),a("td",[t._v(t._s(s.date))]),t._v(" "),a("td",[t._v(t._s(s.invoice_no))]),t._v(" "),a("td",[t._v(t._s(s.qty))])])}))],2)])]),t._v(" "),a("div",{staticClass:"box-footer"})])])])])])])],1)}),[function(){var t=this.$createElement,s=this._self._c||t;return s("section",{staticClass:"content-header",staticStyle:{"margin-bottom":"20px"}},[s("ol",{staticClass:"breadcrumb"},[s("li",[s("a",{attrs:{href:"#"}},[s("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),s("li",{staticClass:"active"},[this._v("print")])])])},function(){var t=this.$createElement,s=this._self._c||t;return s("thead",[s("tr",[s("th",{attrs:{scope:"col"}},[this._v("#")]),this._v(" "),s("th",{attrs:{scope:"col"}},[this._v("Date")]),this._v(" "),s("th",{attrs:{scope:"col"}},[this._v("Invoice")]),this._v(" "),s("th",{attrs:{scope:"col"}},[this._v("Quantity ")])])])}],!1,null,"0ff84875",null);s.default=c.exports}}]);