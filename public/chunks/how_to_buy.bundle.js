(window.webpackJsonp=window.webpackJsonp||[]).push([[113],{102:function(t,n,i){var o=i(548);"string"==typeof o&&(o=[[t.i,o,""]]);var a={hmr:!0,transform:void 0,insertInto:void 0};i(5)(o,a);o.locals&&(t.exports=o.locals)},1153:function(t,n,i){"use strict";i.r(n);var o=i(12),a=i.n(o),e=(i(21),{created:function(){this.getHowToOrder()},data:function(){return{isLoading:!0,fullPage:!0,how_to_order:""}},methods:{getHowToOrder:function(){var t=this;axios.get("/_public/api/get/info/order/return/shipment").then((function(n){console.log(n),"OK"==n.data.status&&(t.how_to_order=n.data.setting.order_info,t.isLoading=!1)}))}},components:{Loading:a.a}}),s=(i(547),i(1)),r=Object(s.a)(e,(function(){var t=this,n=t.$createElement,i=t._self._c||n;return i("div",[i("loading",{attrs:{active:t.isLoading,"can-cancel":!0,"is-full-page":t.fullPage},on:{"update:active":function(n){t.isLoading=n}}}),t._v(" "),i("frontend-header"),t._v(" "),i("div",{staticClass:"row text-center"},[i("div",{staticClass:"background_image",style:{height:"300px",marginTop:"-10px",backgroundImage:"url(/public/images/background.jpg)",backgroundPosition:"center center",backgroundSize:"cover"}})]),t._v(" "),i("div",{staticClass:"row"},[i("div",{staticClass:"col-sm-12 col-md-12"},[i("div",{staticClass:"container-fluid ",staticStyle:{"background-color":"#eee"}},[i("div",{staticClass:"container",staticStyle:{"margin-top":"20px"}},[i("div",{staticClass:"box bg-white shadow desc_info"},[t._m(0),t._v(" "),i("p",{staticStyle:{"padding-bottom":"20px"},domProps:{innerHTML:t._s(t.how_to_order)}})])])])])]),t._v(" "),i("frontend-footer")],1)}),[function(){var t=this.$createElement,n=this._self._c||t;return n("h4",{staticClass:"heading",staticStyle:{padding:"15px"}},[n("i",{staticClass:"fa fa-eye"}),n("b",[this._v(" How To Buy")])])}],!1,null,null,null);n.default=r.exports},547:function(t,n,i){"use strict";var o=i(102);i.n(o).a},548:function(t,n,i){(t.exports=i(4)(!1)).push([t.i,"\n.desc_info p {\n\n    padding:5px;\n    margin:10px;\n}\n",""])}}]);