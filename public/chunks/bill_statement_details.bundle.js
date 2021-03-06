(window.webpackJsonp=window.webpackJsonp||[]).push([[53],{1367:function(t,a,e){"use strict";e.r(a);function s(t,a,e){return a in t?Object.defineProperty(t,a,{value:e,enumerable:!0,configurable:!0,writable:!0}):t[a]=e,t}var n={created:function(){this.getBillStatement()},data:function(){return{bill_statement:"",loading:!0,bill_history:{},total_bill:"",bill_statement_id:"",per_month_history:"",per_month_total:"",date:"",month:"",comment:"",amount:"",options:{format:"YYYY-MM-DD",useCurrent:!1}}},methods:{getBillStatement:function(){var t=this,a=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;axios.get("/api/bll/statement/details/"+this.$route.params.id+"?page="+a).then((function(a){console.log(a),t.bill_statement=a.data.bill_statement,t.bill_statement_id=t.$route.params.id,t.bill_history=a.data.bill_history,t.total_bill=a.data.total_bill,t.per_month_history=a.data.per_month_history,t.per_month_total=a.data.per_month_total,t.loading=!1})).catch((function(t){console.log(t)}))},addPerMonthBill:function(){var t,a=this;this.date.length<1?alert("Please Check Date Filed"):this.month.length<1?alert("Please Select A Month"):this.amount.length<1?alert("Amount filed is empty"):this.amount<1?alert("Amount Can not be smaller 1"):axios.get("/api/bll/per/month/add",{params:(t={bill_statement_id:this.bill_statement_id,date:this.date,comment:this.comment,month:this.month},s(t,"date",this.date),s(t,"amount",this.amount),t)}).then((function(t){console.log(t),"OK"==t.data.status&&(a.getBillStatement(),a.$toasted.show(t.data.message,{type:"success",position:"top-center",duration:4e3}),a.$modal.hide("example"))}))},showModal:function(){this.$modal.show("example")},cDate:function(){var t=new Date,a=t.getMonth()+1,e=t.getDate(),s=t.getFullYear()+"-"+((""+a).length<2?"0":"")+a+"-"+((""+e).length<2?"0":"")+e;this.salary_date=s}}},o=(e(879),e(1)),i=Object(o.a)(n,(function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",[e("admin-main"),t._v(" "),e("div",{staticClass:"content-wrapper"},[e("section",{staticClass:"content-header"},[e("h1",[e("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"bill_statement"}}},[e("i",{staticClass:"fa fa-arrow-left"})])],1),t._v(" "),t._m(0)]),t._v(" "),e("section",{staticClass:"content"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row  over_view_row text-center"},[e("h4",{staticClass:"heading"},[t._v(" "+t._s(t.bill_statement.name)+" ")]),t._v(" "),e("h4",{staticClass:"heading"},[t._v(" "+t._s(t.bill_statement.company_name)+" ")])]),t._v(" "),e("div",{staticClass:"row data_table_row"},[e("div",{staticClass:"col-md-6 col-sm-6"},[e("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),e("div",{staticClass:"box-body"},[e("table",{staticClass:"table table-striped text-center table-borderd"},[t._m(2),t._v(" "),e("tbody",[t._l(t.bill_history.data,(function(a,s){return e("tr",{key:s},[e("td",[t._v(t._s(s+1))]),t._v(" "),e("td",[t._v(t._s(a.date))]),t._v(" "),e("td",[t._v(t._s(a.comment?a.comment:"none"))]),t._v(" "),e("td",[t._v(t._s(a.amount))])])})),t._v(" "),e("tr",[e("td",{attrs:{colspan:"3"}},[t._v("In Total")]),t._v(" "),e("td",[t._v(t._s(t.total_bill))])])],2)])]),t._v(" "),e("div",{staticClass:"box-footer"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-sm-12"},[e("pagination",{attrs:{data:t.bill_history,limit:3},on:{"pagination-change-page":t.getBillStatement}})],1),t._v(" "),e("div",{staticClass:"col-sm-12 "},[e("p",[t._v("\n                      Showing "),e("strong",[t._v(t._s(t.bill_history.from))]),t._v(" to\n                      "),e("strong",[t._v(t._s(t.bill_history.to))]),t._v(" of total\n                      "),e("strong",[t._v(t._s(t.bill_history.total))]),t._v(" entries\n                    ")])])])])])]),t._v(" "),e("div",{staticClass:"col-md-6 col-sm-6"},[e("div",{staticClass:"box"},[e("div",{staticClass:"box-header with-border text-center"},[e("div",{staticClass:"row"},[t._m(3),t._v(" "),e("div",{staticClass:"col-sm-4"},[e("button",{staticClass:"btn btn-success",on:{click:t.showModal}},[e("i",{staticClass:"fa fa-plus"}),t._v(" Monthly Statement\n                ")])])])]),t._v(" "),e("div",{staticClass:"box-body"},[e("table",{staticClass:"table table-striped text-center table-bordered"},[t._m(4),t._v(" "),e("tbody",[t._l(t.per_month_history,(function(a,s){return e("tr",{key:s},[e("td",[t._v(t._s(s+1))]),t._v(" "),e("td",[t._v("\n                     "+t._s(a.date)+"\n                   ")]),t._v(" "),e("td",[e("strong",[t._v("\n                       "+t._s(a.month)+"\n                    ")])]),t._v(" "),e("td",[t._v("\n                     "+t._s(a.comment)+"\n                   ")]),t._v(" "),e("td",[e("strong",[t._v("\n                       "+t._s(a.amount)+"\n                   ")])])])})),t._v(" "),e("tr",[e("td",{attrs:{colspan:"4"}}),t._v(" "),e("td",[e("strong",[t._v(" = "+t._s(t.per_month_total))])])])],2)])])])])]),t._v(" "),e("modal",{attrs:{name:"example",width:400,height:380}},[e("div",{staticClass:"card",staticStyle:{padding:"20px"}},[e("div",{staticClass:"card-body"},[e("div",{staticClass:"form-group"},[e("label",[t._v("Date")]),t._v(" "),e("date-picker",{attrs:{autocomplete:"off",config:t.options},model:{value:t.date,callback:function(a){t.date=a},expression:"date"}})],1),t._v(" "),e("div",{staticClass:"form-group"},[e("label",[t._v("Month")]),t._v(" "),e("select",{directives:[{name:"model",rawName:"v-model",value:t.month,expression:"month"}],staticClass:"form-control",on:{change:function(a){var e=Array.prototype.filter.call(a.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.month=a.target.multiple?e:e[0]}}},[e("option",{attrs:{value:"",disabled:""}},[t._v("Select A Month")]),t._v(" "),e("option",{attrs:{value:"January-2021"}},[t._v("January-2021")]),t._v(" "),e("option",{attrs:{value:"February-2021"}},[t._v("February-2021")]),t._v(" "),e("option",{attrs:{value:"March-2021"}},[t._v("March-2021")]),t._v(" "),e("option",{attrs:{value:"April-2021"}},[t._v("April-2021")]),t._v(" "),e("option",{attrs:{value:"May-2021"}},[t._v("May-2021")]),t._v(" "),e("option",{attrs:{value:"Jun-2021"}},[t._v("Jun-2021")]),t._v(" "),e("option",{attrs:{value:"July-2021"}},[t._v("July-2021")]),t._v(" "),e("option",{attrs:{value:"Augest-2021"}},[t._v("Augest-2021")]),t._v(" "),e("option",{attrs:{value:"September-2021"}},[t._v("September-2021")]),t._v(" "),e("option",{attrs:{value:"Nomeber-2021"}},[t._v("Nomeber-2021")]),t._v(" "),e("option",{attrs:{value:"December-2021"}},[t._v("December-2021")])])]),t._v(" "),e("div",{staticClass:"form-group"},[e("label",[t._v("Amount")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.amount,expression:"amount"}],staticClass:"form-control",attrs:{type:"number"},domProps:{value:t.amount},on:{input:function(a){a.target.composing||(t.amount=a.target.value)}}})]),t._v(" "),e("div",{staticClass:"form-group"},[e("label",[t._v("Comment")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.comment,expression:"comment"}],staticClass:"form-control",attrs:{type:"text"},domProps:{value:t.comment},on:{input:function(a){a.target.composing||(t.comment=a.target.value)}}})]),t._v(" "),e("button",{staticClass:"btn btn-success btn-block",on:{click:t.addPerMonthBill}},[t._v("\n                Submit\n              ")])])])])],1)])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("Bill")])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"box-header with-border text-center"},[a("h3",{staticClass:"box-title"},[this._v(" Paid History ")])])},function(){var t=this.$createElement,a=this._self._c||t;return a("tr",[a("th",[this._v("#")]),this._v(" "),a("th",[this._v("Date")]),this._v(" "),a("th",[this._v("Comment")]),this._v(" "),a("th",[this._v("Amount")])])},function(){var t=this.$createElement,a=this._self._c||t;return a("div",{staticClass:"col-sm-8"},[a("h3",{staticClass:"box-title"},[this._v("\n                  Per Month History\n                ")])])},function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("thead",[e("tr",[e("th",[t._v("#")]),t._v(" "),e("th",[t._v("Date")]),t._v(" "),e("th",[t._v("Month")]),t._v(" "),e("th",[t._v("Comment")]),t._v(" "),e("th",[t._v("Amount")])])])}],!1,null,null,null);a.default=i.exports},268:function(t,a,e){var s=e(880);"string"==typeof s&&(s=[[t.i,s,""]]);var n={hmr:!0,transform:void 0,insertInto:void 0};e(5)(s,n);s.locals&&(t.exports=s.locals)},879:function(t,a,e){"use strict";var s=e(268);e.n(s).a},880:function(t,a,e){(t.exports=e(4)(!1)).push([t.i,"\n.col-lg-3.__c_box {\r\n  padding: 10px;\r\n  background: #fff;\r\n  width: 250px;\r\n  height: 85px;\r\n  margin-right: 15px;\r\n  margin-bottom: 20px;\r\n  text-align: center;\r\n  box-shadow: 3px 3px 3px #ddd;\n}\n.box-title {\r\n  padding: 5px 6px;\r\n  cursor: pointer;\n}\n.data_table_row{\r\n  width: 95%;\r\n  overflow-x: scroll;\n}\n.over_view_row{\r\n  width: 70%;\r\n  height:70px;\r\n  margin-left: 5%;\r\n  box-shadow: 1px 1px 2px 1px #ddd ;\r\n  margin-bottom: 20px;\n}\r\n\r\n",""])}}]);