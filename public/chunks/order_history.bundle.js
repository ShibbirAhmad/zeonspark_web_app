(window.webpackJsonp=window.webpackJsonp||[]).push([[143],{117:function(t,a,s){var e=s(578);"string"==typeof e&&(e=[[t.i,e,""]]);var n={hmr:!0,transform:void 0,insertInto:void 0};s(5)(e,n);e.locals&&(t.exports=e.locals)},1171:function(t,a,s){"use strict";s.r(a);var e={props:["categories"],created:function(){this.getOrderList()},data:function(){return{order_lists:{},loading:!0}},methods:{getOrderList:function(){var t=this,a=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;axios.get("/_public/customer/order/list?page="+a).then((function(a){console.log(a),"SUCCESS"==a.data.status&&(t.order_lists=a.data.orders,t.loading=!1)}))},orderDate:function(t){var a=new Date(t),s=a.getMonth(),e=a.getDate(),n=a.getFullYear();return"".concat(2==e.toString().length?e:"0"+e,"-").concat(2==s.toString().length?s:"0"+s,"-").concat(n)}},components:{sidebar:s(32).a}},n=(s(577),s(1)),r=Object(n.a)(e,(function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("div",{staticClass:"wrapper-wide"},[s("frontend-header"),t._v(" "),s("div",{attrs:{id:"container"}},[s("div",{staticClass:"container"},[s("div",{staticClass:"row ",staticStyle:{"min-height":"400px"}},[s("sidebar"),t._v(" "),s("div",{staticClass:"col-md-10 col-sm-10 content"},[s("table",{staticClass:"table table-bordered table-striped"},[t._m(0),t._v(" "),s("tbody",{staticClass:"table-responsive "},[t.loading?s("h1",[s("i",{staticClass:"fa fa-spin fa-spinner"})]):t._l(t.order_lists.data,(function(a,e){return s("tr",{key:e},[s("td",[t._v(t._s(e+1))]),t._v(" "),s("td",[t._v(" "+t._s(a.invoice_no))]),t._v(" "),s("td",{staticClass:"text-left"},[t._v("\n                    "+t._s(a.total-(a.discount+a.paid)+a.shipping_cost)+"\n                  ")]),t._v(" "),s("td",[1==a.status?s("span",{staticClass:"badge"},[t._v("New")]):t._e(),t._v(" "),2==a.status?s("span",{staticClass:"badge"},[t._v("Pending")]):t._e(),t._v(" "),3==a.status?s("span",{staticClass:"badge badge-success"},[t._v("Approved")]):t._e(),t._v(" "),4==a.status?s("span",{staticClass:"badge badge-success"},[t._v("Shipment")]):t._e(),t._v(" "),5==a.status?s("span",{staticClass:"badge badge-warning"},[t._v("Delivered")]):t._e(),t._v(" "),6==a.status?s("span",{staticClass:"badge badge-danger"},[t._v("Cancel")]):t._e(),t._v(" "),7==a.status?s("span",{staticClass:"badge badge-danger"},[t._v("Return")]):t._e()]),t._v(" "),s("td",[t._v(t._s(t.orderDate(a.created_at)))]),t._v(" "),s("td",[s("router-link",{staticClass:"btn btn-info",attrs:{to:{name:"order_details",params:{id:a.id}}}},[s("i",{staticClass:"fa fa-eye"})])],1)])}))],2)])])],1)]),t._v(" "),s("frontend-footer")],1)],1)}),[function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("thead",[s("tr",[s("td",[t._v("#")]),t._v(" "),s("td",[t._v("Invoice_no")]),t._v(" "),s("td",[t._v("Amount")]),t._v(" "),s("td",[t._v("Status")]),t._v(" "),s("td",[t._v("Date")]),t._v(" "),s("td",[t._v("Action ")])])])}],!1,null,"cf95b600",null);a.default=r.exports},32:function(t,a,s){"use strict";var e={crated:function(){this.$store.dispatch("user")},data:function(){return{base_url:this.$store.state.image_base_link}},methods:{Logout:function(){var t=this;axios.get("/_public/user/logout").then((function(a){console.log(a),t.user=null,localStorage.removeItem("user_token"),location.reload()}))}},computed:{user:function(){return this.$store.getters.user}}},n=(s(535),s(1)),r=Object(n.a)(e,(function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("div",[s("div",{staticClass:"col-md-2 "},[s("div",{staticClass:"user_sidebar"},[s("ul",{staticClass:"list-group",attrs:{id:"list_group"}},[s("li",{staticClass:"text-center"},[s("i",{staticClass:"fa fa-user customer_icon"}),t._v(" "),s("p",{staticClass:"customer_name"},[t._v(" "+t._s(t.user.name)+" ")])]),t._v(" "),s("li",[s("router-link",{attrs:{to:{name:"UserDashboard"}}},[s("i",{staticClass:"fa fa-dashboard "}),t._v(" Dashboard\n                ")])],1),t._v(" "),s("li",[s("router-link",{attrs:{to:{name:"UserProfile"}}},[s("i",{staticClass:"fa fa-user "}),t._v(" Profile\n                ")])],1),t._v(" "),s("li",[s("router-link",{attrs:{to:{name:"UserProfileEdit"}}},[s("i",{staticClass:"fa fa-edit "}),t._v(" Edit Profile")])],1),t._v(" "),s("li",[s("router-link",{attrs:{to:{name:"PasswordEdit"}}},[s("i",{staticClass:"fa fa-key "}),t._v(" Change Password")])],1),t._v(" "),s("li",[s("router-link",{attrs:{to:{name:"user_new_password_set"}}},[s("i",{staticClass:"fa fa-key "}),t._v(" Set New Password")])],1),t._v(" "),s("li",[s("a",{staticStyle:{cursor:"pointer"},on:{click:t.Logout}},[s("i",{staticClass:"fa fa-sign-out"}),t._v(" Logout")])])])])])])}),[],!1,null,"12862570",null);a.a=r.exports},535:function(t,a,s){"use strict";var e=s(86);s.n(e).a},536:function(t,a,s){(t.exports=s(4)(!1)).push([t.i,"\n.user_sidebar[data-v-12862570]{\r\n\r\n    margin-top:25px;\r\n    height: 420px;\r\n    margin-bottom: 20px;\r\n    background: #F9DFC0;\n}\n.list-group[data-v-12862570]{\r\n    padding-top:25px;\n}\nul li a[data-v-12862570]{\r\n     color: #fff;\r\n    background-color: #dd8a24;\r\n    padding: 10px;\r\n    float: left;\r\n    display: block;\r\n    width: 100%;\r\n    margin-top:5px;\n}\n.router-link-exact-active[data-v-12862570] {\r\n   background-color: #ff4d0c !important;\n}\ni[data-v-12862570] {\r\n   font-size:14px;\n}\n.customer_icon[data-v-12862570]{\r\n   font-size:80px;\n}\n.customer_name[data-v-12862570]{\r\n   font-size:18px;\r\n   color:#000;\r\n   text-transform: uppercase;\n}\r\n\r\n\r\n",""])},577:function(t,a,s){"use strict";var e=s(117);s.n(e).a},578:function(t,a,s){(t.exports=s(4)(!1)).push([t.i,"\n.content[data-v-cf95b600]{\r\n  background:#fff;\r\n  padding: 20px 20px;\n}\r\n",""])},86:function(t,a,s){var e=s(536);"string"==typeof e&&(e=[[t.i,e,""]]);var n={hmr:!0,transform:void 0,insertInto:void 0};s(5)(e,n);e.locals&&(t.exports=e.locals)}}]);