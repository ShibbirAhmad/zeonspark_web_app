(window.webpackJsonp=window.webpackJsonp||[]).push([[154],{1358:function(t,s,a){"use strict";a.r(s);var e={created:function(){this.getPrintHouses()},data:function(){return{print_houses:{},loading:!0,basePath:this.$store.getters.image_base_link,item:"",search:"",total_investment:"",total_profit_paid:"",total_due_amount:0}},methods:{getPrintHouses:function(){var t=this,s=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;axios.get("/api/print/houses?page="+s).then((function(s){console.log(s),"OK"==s.data.success&&(t.print_houses=s.data.print_houses,t.loading=!1)})).catch((function(t){console.log(t)}))},totalAmount:function(t){return Object.keys(t).forEach((function(t){console.log(t)})),0}},computed:{}},n=(a(865),a(1)),o=Object(n.a)(e,(function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",[a("admin-main"),t._v(" "),a("div",{staticClass:"content-wrapper"},[a("section",{staticClass:"content-header"},[a("h1",[a("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"print_house_add"}}},[a("i",{staticClass:"fa fa-plus"})])],1),t._v(" "),t._m(0)]),t._v(" "),a("section",{staticClass:"content"},[a("div",{staticClass:"container"},[a("div",{staticClass:"row justify-content-center"},[a("div",{staticClass:"col-lg-10 col-lg-offset-1"},[a("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),a("div",{staticClass:"box-body"},[a("table",{staticClass:"table text-center table-striped "},[t._m(2),t._v(" "),a("tbody",[t.loading?a("h1",{staticClass:"text-center"},[a("i",{staticClass:"fa fa-spin fa-spinner"})]):t._l(t.print_houses.data,(function(s,e){return a("tr",{key:e},[a("td",{attrs:{scope:"row"}},[t._v(t._s(e+1))]),t._v(" "),a("td",[a("router-link",{attrs:{to:{name:"print_house_details",params:{id:s.id}}}},[t._v(t._s(s.company_name)+"\n                        ")])],1),t._v(" "),a("td",[t._v(t._s(s.name))]),t._v(" "),a("td",[t._v(t._s(s.mobile_no))]),t._v(" "),a("td",[t._v(t._s(s.address))])])}))],2)])]),t._v(" "),a("div",{staticClass:"box-footer"},[a("div",{staticClass:"row"},[a("div",{staticClass:"col-lg-6"},[a("pagination",{attrs:{data:t.print_houses},on:{"pagination-change-page":t.getPrintHouses}})],1),t._v(" "),a("div",{staticClass:"col-lg-6 mt-1",staticStyle:{"margin-top":"25px","text-align":"right"}},[a("p",[t._v("\n                      Showing "),a("strong",[t._v(t._s(t.print_houses.from))]),t._v(" to\n                      "),a("strong",[t._v(t._s(t.print_houses.to))]),t._v(" of total\n                      "),a("strong",[t._v(t._s(t.print_houses.total))]),t._v(" entries\n                    ")])])])])])])])])])])],1)}),[function(){var t=this.$createElement,s=this._self._c||t;return s("ol",{staticClass:"breadcrumb"},[s("li",[s("a",{attrs:{href:"#"}},[s("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),s("li",{staticClass:"active"},[this._v("Print House")])])},function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"box-header with-border text-center"},[s("h3",{staticClass:"box-title heading"},[this._v("Print House Table")])])},function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("thead",[a("tr",[a("th",{attrs:{scope:"col"}},[t._v("#")]),t._v(" "),a("th",{attrs:{scope:"col"}},[t._v("Company Name")]),t._v(" "),a("th",{attrs:{scope:"col"}},[t._v(" Name")]),t._v(" "),a("th",{attrs:{scope:"col"}},[t._v("Mobile Number")]),t._v(" "),a("th",{attrs:{scope:"col"}},[t._v("Address")])])])}],!1,null,"0a33f7ac",null);s.default=o.exports},261:function(t,s,a){var e=a(866);"string"==typeof e&&(e=[[t.i,e,""]]);var n={hmr:!0,transform:void 0,insertInto:void 0};a(5)(e,n);e.locals&&(t.exports=e.locals)},865:function(t,s,a){"use strict";var e=a(261);a.n(e).a},866:function(t,s,a){(t.exports=a(4)(!1)).push([t.i,"\n.box-primary[data-v-0a33f7ac] {\r\n  margin-left: -100px;\r\n  overflow-x: scroll;\n}\n.total_style[data-v-0a33f7ac] {\r\n  border: 2px solid #ddd;\r\n  padding: 4px 25px;\n}\n.total_row[data-v-0a33f7ac] {\r\n  padding-bottom: 20px;\n}\r\n",""])}}]);