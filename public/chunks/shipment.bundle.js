(window.webpackJsonp=window.webpackJsonp||[]).push([[187],{109:function(t,n,i){var a=i(562);"string"==typeof a&&(a=[[t.i,a,""]]);var e={hmr:!0,transform:void 0,insertInto:void 0};i(5)(a,e);a.locals&&(t.exports=a.locals)},1160:function(t,n,i){"use strict";i.r(n);var a=i(12),e=i.n(a),s=(i(21),{created:function(){this.getShipmentPolicy()},data:function(){return{isLoading:!0,fullPage:!0,shipment_info:""}},methods:{getShipmentPolicy:function(){var t=this;axios.get("/_public/api/get/info/order/return/shipment").then((function(n){console.log(n),"OK"==n.data.status&&(t.shipment_info=n.data.setting.shipment_info,t.isLoading=!1)}))}},components:{Loading:e.a}}),o=(i(561),i(1)),c=Object(o.a)(s,(function(){var t=this,n=t.$createElement,i=t._self._c||n;return i("div",[i("loading",{attrs:{active:t.isLoading,"can-cancel":!0,"is-full-page":t.fullPage},on:{"update:active":function(n){t.isLoading=n}}}),t._v(" "),i("frontend-header"),t._v(" "),i("div",{staticClass:"row text-center"},[i("div",{staticClass:"background_image",style:{height:"300px",marginTop:"-10px",backgroundImage:"url(/public/images/background.jpg)",backgroundPosition:"center center",backgroundSize:"cover"}})]),t._v(" "),i("div",{staticClass:"row"},[i("div",{staticClass:"col-sm-12 col-md-12"},[i("div",{staticClass:"container-fluid ",staticStyle:{"background-color":"#eee"}},[i("div",{staticClass:"container",staticStyle:{"margin-top":"20px"}},[i("div",{staticClass:"box bg-white shadow desc_info"},[t._m(0),t._v(" "),i("p",{staticStyle:{"padding-bottom":"20px"},domProps:{innerHTML:t._s(t.shipment_info)}})])])])])]),t._v(" "),i("frontend-footer")],1)}),[function(){var t=this.$createElement,n=this._self._c||t;return n("h4",{staticClass:"heading",staticStyle:{padding:"15px"}},[n("i",{staticClass:"fa fa-eye"}),n("b",[this._v(" SHIPMENT POLICY")])])}],!1,null,null,null);n.default=c.exports},561:function(t,n,i){"use strict";var a=i(109);i.n(a).a},562:function(t,n,i){(t.exports=i(4)(!1)).push([t.i,"\n.desc_info p {\n    padding:5px;\n    margin:10px;\n    padding-bottom:5px;\n}\n",""])}}]);