(window.webpackJsonp=window.webpackJsonp||[]).push([[168],{1150:function(t,e,r){"use strict";r.r(e);var s=r(40);function a(t){return function(t){if(Array.isArray(t))return i(t)}(t)||function(t){if("undefined"!=typeof Symbol&&Symbol.iterator in Object(t))return Array.from(t)}(t)||function(t,e){if(!t)return;if("string"==typeof t)return i(t,e);var r=Object.prototype.toString.call(t).slice(8,-1);"Object"===r&&t.constructor&&(r=t.constructor.name);if("Map"===r||"Set"===r)return Array.from(t);if("Arguments"===r||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r))return i(t,e)}(t)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function i(t,e){(null==e||e>t.length)&&(e=t.length);for(var r=0,s=new Array(e);r<e;r++)s[r]=t[r];return s}var o={created:function(){var t=this;window.scrollTo(0,0),this.$Progress.start(),setTimeout((function(){t.$Progress.finish()}),500)},data:function(){return{products:[],page:1,price_page:1,price_filter:{min_price:"",max_price:""},base_url:this.$store.state.image_base_link,product_thumbnail_link:this.$store.state.image_thumbnail_link,sort_by_price:"select_by",quick_v_product_id:"",o_modal:!1}},methods:{addToCart:function(t){var e=this;axios.get("/_public/addToCart",{params:{slug:t,quantity:1}}).then((function(t){"SUCCESS"==t.data.status?(e.$toasted.show(t.data.message,{position:"top-center",type:"success",duration:2e3}),e.$store.dispatch("getCartContent")):"error"==t.data.status&&e.$toasted.show(t.data.message,{position:"top-center",type:"error",duration:4e3})}))},buyNow:function(t){var e=this;axios.get("/_public/addToCart",{params:{slug:t,quantity:1}}).then((function(t){"SUCCESS"==t.data.status?(e.$store.dispatch("getCartContent"),e.$toasted.show(t.data.message,{position:"bottom-left",type:"success",duration:2e3}),e.$router.push({name:"Chekout"})):"error"==t.data.status&&e.$toasted.show(t.data.message,{position:"top-center",type:"error",duration:4e3})}))},subCategoryWiseProduct:function(t){var e=this;axios.get("/_public/sub/category/wise/product/?page="+this.page,{params:{slug:this.$route.params.slug}}).then((function(r){var s;(console.log(r),r.data.data.length)?(e.page+=1,(s=e.products).push.apply(s,a(r.data.data)),t.loaded()):t.complete()}))},priceFilter:function(t){this.$Progress.start();var e=this.price_filter.max_price,r=this.price_filter.min_price,s=[];this.products.forEach((function(t){t.price>=r&&t.price<=e&&s.push(t)})),s.length>0?this.products=s:Swal.fire({type:"warning",text:" ): no produtc found......",duration:3e3}),this.$Progress.finish()},price_sorting_asec_desc:function(){var t=this;axios.get("/_public/api/sort/product/sub/category/according/to/asc/desc",{params:{sort_value:this.sort_by_price,slug:this.$route.params.slug}}).then((function(e){var r;t.products=[],(r=t.products).push.apply(r,a(e.data.products))}))},getSubCatgory:function(){var t=this;axios.get("/_public/sub/category/"+this.$route.params.slug).then((function(e){t.sub_categories=e.data.sub_categories}))},closedModal:function(t){this.quick_v_product_id=""}},computed:{sub_categories:function(){return this.$store.getters.sub_categories},sub_category_sliders:function(){return this.$store.getters.sub_category_sliders}},mounted:function(){this.$store.dispatch("sub_categories",this.$route.params.slug),this.$store.dispatch("sub_category_sliders",this.$route.params.slug)},components:{carousel:r.n(s).a}},n=(r(541),r(1)),c=Object(n.a)(o,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"wrapper-wide"},[r("frontend-header"),t._v(" "),r("div",{attrs:{id:"container"}},[r("div",{staticClass:"container"},[r("div",{staticClass:"slider slider-animation bv xz"},[r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-12"},[t.sub_category_sliders?r("carousel",{attrs:{items:1,nav:!1,autoplay:!0,autoplayTimeout:2e3}},t._l(t.sub_category_sliders,(function(e){return r("a",{key:e.id,attrs:{href:e.url}},[r("img",{attrs:{src:t.base_url+e.image}})])})),0):t._e()],1)])]),t._v(" "),r("ul",{staticClass:"breadcrumb"},t._l(t.sub_categories,(function(e){return e.slug==t.$route.params.slug?r("li",[r("router-link",{attrs:{to:{name:"PublicSubCategory",params:{slug:e.slug}}}},[r("i",{staticClass:"fa fa-home"}),t._v("\n            /\n            "+t._s(e.name)+"\n          ")])],1):t._e()})),0),t._v(" "),r("div",{staticClass:"row"},[r("aside",{staticClass:"col-sm-3 hidden-xs",attrs:{id:"column-left"}},[r("div",{staticClass:"categories  hidden-xs bg-white shadow c-box "},[r("h3",{staticClass:"subtitle"},[t._v("Other's Categories")]),t._v(" "),r("div",{staticClass:"box-category"},[r("ul",{attrs:{id:"cat_accordion"}},t._l(t.sub_categories,(function(e){return e.slug!=t.$route.params.slug?r("li",[r("router-link",{attrs:{to:{name:"PublicSubCategory",params:{slug:e.slug}}}},[t._v(t._s(e.name))])],1):t._e()})),0)])]),t._v(" "),r("div",{staticClass:"search-box hidden-xs bg-white shadow c-box"},[r("h3",{staticClass:"subtitle",staticStyle:{"margin-left":"20px"}},[t._v("filter by price  ")]),t._v(" "),r("form",{on:{submit:function(e){return e.preventDefault(),t.priceFilter(e)}}},[r("div",{staticClass:"row"},[r("div",{staticClass:"col-md-6 col-sm-6"},[r("label",{attrs:{for:"min-price"}},[t._v("min-price")]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.price_filter.min_price,expression:"price_filter.min_price"}],staticClass:"form-control",attrs:{placeholder:"00.00",type:"number",name:""},domProps:{value:t.price_filter.min_price},on:{input:function(e){e.target.composing||t.$set(t.price_filter,"min_price",e.target.value)}}})]),t._v(" "),r("div",{staticClass:"col-md-6 col-sm-6"},[r("label",{attrs:{for:"max-price"}},[t._v("max-price")]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.price_filter.max_price,expression:"price_filter.max_price"}],staticClass:"form-control",attrs:{placeholder:"max-price",type:"number",name:""},domProps:{value:t.price_filter.max_price},on:{input:function(e){e.target.composing||t.$set(t.price_filter,"max_price",e.target.value)}}})])]),t._v(" "),r("br"),t._v(" "),t._m(0)]),t._v(" "),r("div",{staticClass:"sort-box",staticStyle:{"margin-top":"20px"}},[r("select",{directives:[{name:"model",rawName:"v-model",value:t.sort_by_price,expression:"sort_by_price"}],staticClass:"form-control",on:{change:[function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.sort_by_price=e.target.multiple?r:r[0]},t.price_sorting_asec_desc]}},[r("option",{attrs:{value:"select_by",disabled:""}},[t._v("Select Best Match")]),t._v(" "),r("option",{attrs:{value:"1"}},[t._v("price less to high")]),t._v(" "),r("option",{attrs:{value:"2"}},[t._v("price high to less")])])])])]),t._v(" "),r("div",{staticClass:"col-sm-9",attrs:{id:"content"}},[r("div",{staticClass:"row"},[t._l(t.products,(function(e){return r("div",{key:e.id,staticClass:"col-lg-4 custom_padding col-sm-4 col-md-4 col-xs-6  "},[r("div",{staticClass:"product-card "},[r("div",{staticClass:"product-card-body"},[r("router-link",{attrs:{to:{name:"single",params:{slug:e.slug}}}},[r("img",{attrs:{src:t.product_thumbnail_link+e.thumbnail_img,alt:e.name}})]),t._v(" "),r("div",{staticClass:"product-detail "},[r("h4",[r("router-link",{staticClass:"product-link",attrs:{to:{name:"single",params:{slug:e.slug}}}},[t._v(t._s(e.name.substring(0,20))+"\n                       "),e.name.length>20?r("span",[t._v("...")]):t._e()])],1),t._v(" "),r("p",{staticClass:"price"},[r("span",{staticClass:"price-new"},[t._v(" ৳"+t._s(e.price))]),t._v(" "),e.discount?r("span",{staticClass:"price-old"},[t._v(" ৳"+t._s(e.sale_price))]):t._e()])])],1),t._v(" "),r("div",{staticClass:"product-card-footer"},[r("div",{staticClass:"new_arrival_card_footer"},[e.product_attribute?r("router-link",{attrs:{to:{name:"single",params:{slug:e.slug}}}},[t._v(" Add To Cart ")]):r("a",{on:{click:function(r){return t.addToCart(e.slug)}}},[t._v("Add To Cart")]),t._v(" "),e.product_attribute?r("router-link",{attrs:{to:{name:"single",params:{slug:e.slug}}}},[t._v("Buy Now ")]):r("a",{on:{click:function(r){return t.buyNow(e.slug)}}},[t._v("Buy Now ")])],1)])])])})),t._v(" "),r("infinite-loading",{on:{infinite:t.subCategoryWiseProduct}},[r("div",{attrs:{slot:"no-more"},slot:"no-more"})])],2)])])])]),t._v(" "),r("frontend-footer"),t._v(" "),t.quick_v_product_id?r("quick-view",{attrs:{quick_v_p_id:t.quick_v_product_id},on:{clicked:function(e){return t.closedModal(e)}}}):t._e()],1)}),[function(){var t=this.$createElement,e=this._self._c||t;return e("button",{staticClass:"btn btn-block btn_search",attrs:{type:"submit"}},[this._v(" Filter    "),e("i",{staticClass:"fa fa-lg fa-filter"})])}],!1,null,null,null);e.default=c.exports},541:function(t,e,r){"use strict";var s=r(99);r.n(s).a},542:function(t,e,r){(t.exports=r(4)(!1)).push([t.i,"\n.search-box {\r\n  margin-top: 20px;\n}\n.btn_search {\r\n  background: #ff4d03;\r\n  color: #fff;\r\n  border: 1px dashed;\n}\r\n\r\n\r\n\r\n",""])},99:function(t,e,r){var s=r(542);"string"==typeof s&&(s=[[t.i,s,""]]);var a={hmr:!0,transform:void 0,insertInto:void 0};r(5)(s,a);s.locals&&(t.exports=s.locals)}}]);