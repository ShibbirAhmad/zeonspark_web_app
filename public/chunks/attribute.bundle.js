(window.webpackJsonp=window.webpackJsonp||[]).push([[43],{1205:function(t,e,a){"use strict";a.r(e);var s={components:{Index:a(16).default},created:function(){var t=this;setTimeout((function(){t.attribute()}),500)},data:function(){return{attributes:{},loading:!0,search:"",basePath:"storage/"}},methods:{attribute:function(){var t=this;axios.get("/list/attribute").then((function(e){"SUCCESS"==e.data.status?(t.attributes=e.data.attributes,t.loading=!1):t.$toasted.show("some thing want to wrong",{type:"error",position:"top-center",duration:5e3})})).catch((function(e){t.$toasted.show("some thing want to wrong",{type:"error",position:"top-center",duration:4e3})}))},active:function(t){var e=this;Swal.fire({title:"Are you sure?",text:"You won't active this!",icon:"warning",showCancelButton:!0,confirmButtonColor:"#3085d6",cancelButtonColor:"#d33",confirmButtonText:"Yes!"}).then((function(a){a.value?axios.get("/active/attribute/"+t.id).then((function(t){"SUCCESS"==t.data.status?(e.attribute(),e.$toasted.show(t.data.message,{position:"top-center",type:"success",duration:4e3})):e.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})).catch((function(t){e.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})):e.$toasted.show("Ok ! no action here",{position:"top-center",type:"info",duration:3e3})}))},deActive:function(t){var e=this;Swal.fire({title:"Are you sure?",text:"You won't de-active this!",icon:"warning",showCancelButton:!0,confirmButtonColor:"#3085d6",cancelButtonColor:"#d33",confirmButtonText:"Yes!"}).then((function(a){a.value?axios.get("/deActive/attribute/"+t.id).then((function(t){"SUCCESS"==t.data.status?(e.attribute(),e.$toasted.show(t.data.message,{position:"top-center",type:"success",duration:4e3})):e.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})).catch((function(t){e.$toasted.show("some thing want to wrong",{position:"top-center",type:"error",duration:4e3})})):e.$toasted.show("Ok ! no action here",{position:"top-center",type:"info",duration:3e3})}))}}},i=a(1),n=Object(i.a)(s,(function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",[a("admin-main"),t._v(" "),a("div",{staticClass:"content-wrapper"},[a("section",{staticClass:"content-header"},[a("h1",[a("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"attributeAdd"}}},[a("i",{staticClass:"fa fa-plus"})]),t._v(" "),a("router-link",{staticClass:"btn btn-success",attrs:{to:{name:"variant"}}},[t._v("Variant")])],1),t._v(" "),t._m(0)]),t._v(" "),a("section",{staticClass:"content"},[a("div",{staticClass:"container"},[a("div",{staticClass:"row justify-content-center"},[a("div",{staticClass:"col-lg-6 col-lg-offset-1"},[a("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),a("div",{staticClass:"box-body"},[a("table",{staticClass:"table text-center table-striped table-bordered table-hover"},[t._m(2),t._v(" "),a("tbody",[t.loading?a("h1",[a("i",{staticClass:"fa fa-spin fa-spinner"})]):t._l(t.attributes,(function(e,s){return a("tr",[a("td",{attrs:{scope:"row"}},[t._v(t._s(s+1))]),t._v(" "),a("td",[t._v(t._s(e.name))]),t._v(" "),a("td",[1==e.status?a("span",{staticClass:"badge"},[t._v("Active")]):a("span",{staticClass:"badge"},[t._v("De-active")])]),t._v(" "),a("td",[1==e.status?a("a",{staticClass:"btn btn-sm btn-warning",attrs:{title:"De-active"},on:{click:function(a){return t.deActive(e)}}},[a("i",{staticClass:"fa fa-ban"})]):a("a",{staticClass:"btn btn-sm btn-primary",attrs:{title:"active"},on:{click:function(a){return t.active(e)}}},[a("i",{staticClass:"fa fa-check"})]),t._v(" "),a("router-link",{staticClass:"btn btn-sm btn-success",attrs:{to:{name:"attributeEdit",params:{id:e.id}}}},[a("i",{staticClass:"fa fa-edit"})])],1)])}))],2)])])])])])])])])],1)}),[function(){var t=this.$createElement,e=this._self._c||t;return e("ol",{staticClass:"breadcrumb"},[e("li",[e("a",{attrs:{href:"#"}},[e("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),e("li",{staticClass:"active"},[this._v("Attribute")])])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"box-header with-border text-center"},[e("h3",{staticClass:"box-title"},[this._v("Attribute table")])])},function(){var t=this.$createElement,e=this._self._c||t;return e("thead",[e("tr",[e("th",{attrs:{scope:"col"}},[this._v("#")]),this._v(" "),e("th",{attrs:{scope:"col"}},[this._v("name")]),this._v(" "),e("th",{attrs:{scope:"col"}},[this._v("status")]),this._v(" "),e("th",{attrs:{scope:"col"}},[this._v("action")])])])}],!1,null,"051226b2",null);e.default=n.exports}}]);