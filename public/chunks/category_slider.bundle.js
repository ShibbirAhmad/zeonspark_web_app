(window.webpackJsonp=window.webpackJsonp||[]).push([[58],{1202:function(t,e,s){"use strict";s.r(e);var a={created:function(){var t=this;setTimeout((function(){t.getSlider()}),500)},data:function(){return{sliders:{},loading:!0,search:"",basePath:this.$store.state.image_base_link}},methods:{getSlider:function(){var t=this,e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;axios.get("/api/category/list/slider?page=",+e).then((function(e){console.log(e),"SUCCESS"==e.data.status?(t.sliders=e.data.sliders,t.loading=!1):t.$toasted.show("something went wrong",{type:"error",position:"top-center",duration:5e3})})).catch((function(e){console.log(e),t.$toasted.show("something went to wrong",{type:"error",position:"top-center",duration:4e3})}))},active:function(t){var e=this;Swal.fire({title:"Are you sure?",text:"You won't active this!",showCancelButton:!0,confirmButtonColor:"#3085d6",cancelButtonColor:"#d33",confirmButtonText:"Yes!"}).then((function(s){s.value?axios.get("/api/category/active/slider/"+t.id).then((function(t){"SUCCESS"==t.data.status?(e.getSlider(),e.$toasted.show(t.data.message,{position:"top-center",type:"success",duration:4e3})):e.$toasted.show("something went to wrong",{position:"top-center",type:"error",duration:4e3})})):e.$toasted.show("Ok ! no action here",{position:"top-center",type:"info",duration:3e3})}))},deActive:function(t){var e=this;Swal.fire({title:"Are you sure?",text:"You won't de-active this!",showCancelButton:!0,confirmButtonColor:"#3085d6",cancelButtonColor:"#d33",confirmButtonText:"Yes!"}).then((function(s){s.value?axios.get("/api/category/deActive/slider/"+t.id).then((function(t){"SUCCESS"==t.data.status?(e.getSlider(),e.$toasted.show(t.data.message,{position:"top-center",type:"success",duration:4e3})):e.$toasted.show("something went to wrong",{position:"top-center",type:"error",duration:4e3})})):e.$toasted.show("Ok ! no action here",{position:"top-center",type:"info",duration:3e3})}))},destroy:function(t){var e=this;Swal.fire({title:"Are you sure?",text:"You won't delete this slider!",showCancelButton:!0,confirmButtonColor:"#3085d6",cancelButtonColor:"#d33",confirmButtonText:"Yes!"}).then((function(s){s.value?axios.get("/api/category/delete/slider/"+t.id).then((function(t){"SUCCESS"==t.data.status?(e.getSlider(),e.$toasted.show(t.data.message,{position:"top-center",type:"success",duration:4e3})):e.$toasted.show("something went to wrong",{position:"top-center",type:"error",duration:4e3})})).catch((function(t){console.log(t),e.$toasted.show("something went to wrong",{position:"top-center",type:"error",duration:4e3})})):e.$toasted.show("Ok ! no action here",{position:"top-center",type:"info",duration:3e3})}))}}},o=s(1),i=Object(o.a)(a,(function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",[s("admin-main"),t._v(" "),s("div",{staticClass:"content-wrapper"},[s("section",{staticClass:"content-header"},[s("h1",[s("router-link",{staticClass:"btn btn-primary",attrs:{to:{name:"category_slider_add"}}},[s("i",{staticClass:"fa fa-plus"})])],1),t._v(" "),t._m(0)]),t._v(" "),s("section",{staticClass:"content"},[s("div",{staticClass:"container"},[s("div",{staticClass:"row justify-content-center"},[s("div",{staticClass:"col-lg-10"},[s("div",{staticClass:"box box-primary"},[t._m(1),t._v(" "),s("div",{staticClass:"box-body"},[s("table",{staticClass:"table table-striped text-center table-bordered table-hover "},[t._m(2),t._v(" "),s("tbody",[t.loading?s("h1",[s("i",{staticClass:"fa fa-spin fa-spinner"})]):t._l(t.sliders.data,(function(e,a){return s("tr",{key:a},[s("td",{attrs:{scope:"row"}},[t._v(t._s(a+1))]),t._v(" "),s("td",[(e.image.length,s("div",[s("img",{staticStyle:{width:"100px"},attrs:{src:t.basePath+e.image,alt:"slider Image"}})]))]),t._v(" "),s("td",[e.category?s("span",{staticClass:"bage"},[t._v(" "+t._s(e.category.name)+"  ")]):t._e()]),t._v(" "),s("td",[e.sub_category?s("span",{staticClass:"bage"},[t._v(" "+t._s(e.sub_category.name)+"  ")]):t._e()]),t._v(" "),s("td",[e.sub_sub_category?s("span",{staticClass:"bage"},[t._v(" "+t._s(e.sub_sub_category.name)+"  ")]):t._e()]),t._v(" "),s("td",[1==e.status?s("span",{staticClass:"badge"},[t._v("Active")]):s("span",{staticClass:"badge"},[t._v("De-active")])]),t._v(" "),s("td",[s("router-link",{staticClass:"btn btn-sm btn-success",attrs:{to:{name:"category_slider_edit",params:{id:e.id}}}},[s("i",{staticClass:"fa fa-edit"})]),t._v(" "),s("a",{staticClass:"btn btn-sm btn-danger",on:{click:function(s){return t.destroy(e)}}},[s("i",{staticClass:"fa fa-trash"})]),t._v(" "),1==e.status?s("a",{staticClass:"btn btn-sm btn-warning",attrs:{title:"De-active"},on:{click:function(s){return t.deActive(e)}}},[s("i",{staticClass:"fa fa-ban"})]):s("a",{staticClass:"btn btn-sm btn-primary",attrs:{title:"active"},on:{click:function(s){return t.active(e)}}},[s("i",{staticClass:"fa fa-check"})])],1)])}))],2)])]),t._v(" "),s("div",{staticClass:"box-footer"},[s("div",{staticClass:"row"},[s("div",{staticClass:"col-lg-6"},[s("pagination",{attrs:{data:t.sliders},on:{"pagination-change-page":t.getSlider}})],1),t._v(" "),s("div",{staticClass:"col-lg-6 mt-1",staticStyle:{"margin-top":"25px","text-align":"right"}},[s("p",[t._v("Showing "),s("strong",[t._v(t._s(t.sliders.from))]),t._v(" to\n                                            "),s("strong",[t._v(t._s(t.sliders.to))]),t._v(" of total\n                                            "),s("strong",[t._v(t._s(t.sliders.total))]),t._v(" entries\n                                        ")])])])])])])])])])])],1)}),[function(){var t=this.$createElement,e=this._self._c||t;return e("ol",{staticClass:"breadcrumb"},[e("li",[e("a",{attrs:{href:"#"}},[e("i",{staticClass:"fa fa-dashboard"}),this._v("Dashboard")])]),this._v(" "),e("li",{staticClass:"active"},[this._v("Category Slider")])])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"box-header with-border text-center"},[e("h3",{staticClass:"box-title"},[this._v(" Category Slider table")])])},function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("thead",[s("tr",[s("th",{attrs:{scope:"col"}},[t._v("#")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Image")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Category")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Sub Category")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("Sub Sub Category")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("status")]),t._v(" "),s("th",{attrs:{scope:"col"}},[t._v("action")])])])}],!1,null,null,null);e.default=i.exports}}]);