(window.webpackJsonp=window.webpackJsonp||[]).push([[182],{1302:function(t,a,e){"use strict";e.r(a);var n={mounted:function(){console.log("mounted member"),this.getMemberSalary()},data:function(){return{loading:!0,member:"",salaryList:"",basePath:this.$store.getters.image_base_link}},methods:{getMemberSalary:function(){var t=this;axios.get("/api/member/salary/list/"+this.$route.params.id+"/"+this.$route.params.month).then((function(a){console.log(a),t.member=a.data.member,t.salaryList=a.data.salary,t.loading=!1})).catch((function(t){console.log(t)}))},totalAmount:function(){var t=0;return this.salaryList.forEach((function(a){return t+=parseInt(a.amount)})),t},dateFiltaring:function(t){var a=new Date(t),e=new Intl.DateTimeFormat("en",{year:"numeric"}).format(a),n=new Intl.DateTimeFormat("en",{month:"short"}).format(a),s=new Intl.DateTimeFormat("en",{day:"2-digit"}).format(a);return"".concat(s,"-").concat(n,"-").concat(e)}}},s=(e(775),e(1)),r=Object(s.a)(n,(function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",[e("admin-main"),t._v(" "),e("div",{staticClass:"content-wrapper"},[e("section",{staticClass:"content-header"},[e("h1",[e("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"teamSalary",params:{id:t.member.id}}}},[e("i",{staticClass:"fa fa-arrow-right"})])],1),t._v(" "),t._m(0)]),t._v(" "),e("section",{staticClass:"content"},[e("div",{staticClass:"container"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-10"},[t.loading?e("h1",{staticClass:"text-center"},[e("i",{staticClass:"fa fa-spin fa-spinner"})]):e("div",{staticClass:"box box-primary"},[e("div",{staticClass:"box-header with-border"}),t._v(" "),e("div",{staticClass:"row"},[e("div",{staticClass:"member-info"},[e("img",{staticClass:"member-image",attrs:{src:t.member.avator?t.basePath+t.member.avator:t.basePath+"images/static/user2-160x160.jpg",alt:t.member.name}}),t._v(" "),e("h3",{staticStyle:{"line-height":"0"}},[t._v(t._s(t.member.name))]),t._v(" "),e("h6",[t._v(t._s(t.member.designation))]),t._v(" "),e("h4",[t._v("Phone:"+t._s(t.member.phone))])])]),t._v(" "),e("div",{staticClass:"box-body"},[e("table",{staticClass:"table text-center"},[t._m(1),t._v(" "),e("tbody",[t._l(t.salaryList,(function(a,n){return e("tr",{key:n},[e("td",[e("router-link",{attrs:{to:"name"}}),t._v("\n                        "+t._s(t.dateFiltaring(a.date))+"\n                        ")],1),t._v(" "),e("td",[t._v(t._s(a.amount))]),t._v(" "),e("td",[t._v(t._s(a.paid))])])})),t._v(" "),e("tr",[e("td",{attrs:{colspan:"1"}}),t._v(" "),e("td",[e("strong",[t._v(" = "+t._s(t.totalAmount()))])])])],2)])])])])])])])])],1)}),[function(){var t=this.$createElement,a=this._self._c||t;return a("ol",{staticClass:"breadcrumb"},[a("li",[a("a",{attrs:{href:"#"}},[a("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),a("li",{staticClass:"active"},[this._v("member")])])},function(){var t=this.$createElement,a=this._self._c||t;return a("thead",[a("tr",[a("th",{attrs:{scope:"col"}},[this._v("Date")]),this._v(" "),a("th",{attrs:{scope:"col"}},[this._v("Amount")]),this._v(" "),a("th",{attrs:{scope:"col"}},[this._v("Paid")])])])}],!1,null,"6f5db2c8",null);a.default=r.exports},216:function(t,a,e){var n=e(776);"string"==typeof n&&(n=[[t.i,n,""]]);var s={hmr:!0,transform:void 0,insertInto:void 0};e(5)(n,s);n.locals&&(t.exports=n.locals)},775:function(t,a,e){"use strict";var n=e(216);e.n(n).a},776:function(t,a,e){(t.exports=e(4)(!1)).push([t.i,"\n.dropbtn[data-v-6f5db2c8] {\r\n  width: 100% !important;\r\n  margin-bottom: 5px !important;\n}\n.dropbtn-active[data-v-6f5db2c8] {\r\n  display: block !important;\n}\n.dropdown-action[data-v-6f5db2c8] {\r\n  display: none;\r\n  width: 90px;\r\n  position: absolute;\n}\nimg.member-image[data-v-6f5db2c8] {\r\n    width: 100px;\r\n    height: 100px;\r\n    border-radius: 50%;\r\n    border: 3px solid #222d32;\r\n    padding: 3px;\r\n    line-height: 0;\n}\n.member-info[data-v-6f5db2c8] {\r\n    text-align: center;\n}\r\n",""])}}]);