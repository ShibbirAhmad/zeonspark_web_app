(window.webpackJsonp=window.webpackJsonp||[]).push([[166],{100:function(t,r,e){var s=e(544);"string"==typeof s&&(s=[[t.i,s,""]]);var a={hmr:!0,transform:void 0,insertInto:void 0};e(5)(s,a);s.locals&&(t.exports=s.locals)},1151:function(t,r,e){"use strict";e.r(r);var s=e(40);function a(t){return function(t){if(Array.isArray(t))return i(t)}(t)||function(t){if("undefined"!=typeof Symbol&&Symbol.iterator in Object(t))return Array.from(t)}(t)||function(t,r){if(!t)return;if("string"==typeof t)return i(t,r);var e=Object.prototype.toString.call(t).slice(8,-1);"Object"===e&&t.constructor&&(e=t.constructor.name);if("Map"===e||"Set"===e)return Array.from(t);if("Arguments"===e||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(e))return i(t,r)}(t)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function i(t,r){(null==r||r>t.length)&&(r=t.length);for(var e=0,s=new Array(r);e<r;e++)s[e]=t[e];return s}var o={created:function(){var t=this;window.scrollTo(0,0),this.$Progress.start(),setTimeout((function(){t.$Progress.finish()}),500)},data:function(){return{products:[],category_name:"",page:1,price_page:1,price_filter:{min_price:"",max_price:""},base_url:this.$store.state.image_base_link,product_thumbnail_link:this.$store.state.image_thumbnail_link,sort_by_price:"select_by",quick_v_product_id:"",o_modal:!1}},methods:{addToCart:function(t){var r=this;axios.get("/_public/addToCart",{params:{slug:t,quantity:1}}).then((function(t){"SUCCESS"==t.data.status?(r.$toasted.show(t.data.message,{position:"top-center",type:"success",duration:2e3}),r.$store.dispatch("getCartContent")):"error"==t.data.status&&r.$toasted.show(t.data.message,{position:"top-center",type:"error",duration:4e3})}))},buyNow:function(t){var r=this;axios.get("/_public/addToCart",{params:{slug:t,quantity:1}}).then((function(t){"SUCCESS"==t.data.status?(r.$store.dispatch("getCartContent"),r.$toasted.show(t.data.message,{position:"bottom-left",type:"success",duration:2e3}),r.$router.push({name:"Chekout"})):"error"==t.data.status&&r.$toasted.show(t.data.message,{position:"top-center",type:"error",duration:4e3})}))},categoryWiseProduct:function(t){var r=this;axios.get("/_public/category/wise/product/?page="+this.page,{params:{slug:this.$route.params.slug}}).then((function(e){var s;e.data.data.length?(r.page+=1,(s=r.products).push.apply(s,a(e.data.data)),t.loaded()):t.complete()}))},priceFilter:function(t){this.$Progress.start();var r=this.price_filter.max_price,e=this.price_filter.min_price,s=[];this.products.forEach((function(t){t.price>=e&&t.price<=r&&s.push(t)})),s.length>0?this.products=s:Swal.fire({type:"warning",text:" ): no produtc found......",duration:3e3}),this.$Progress.finish()},price_sorting_asec_desc:function(){var t=this;axios.get("/_public/api/sort/product/according/to/asc/desc",{params:{sort_value:this.sort_by_price,slug:this.$route.params.slug}}).then((function(r){var e;t.products=[],(e=t.products).push.apply(e,a(r.data.products))})).catch()},closedModal:function(t){this.quick_v_product_id=""}},computed:{category:function(){return this.$store.getters.categories},category_sliders:function(){return this.$store.getters.category_sliders}},mounted:function(){this.$store.dispatch("category"),this.$store.dispatch("category_sliders",this.$route.params.slug)},components:{carousel:e.n(s).a}},n=(e(543),e(1)),c=Object(n.a)(o,(function(){var t=this,r=t.$createElement,e=t._self._c||r;return e("div",{staticClass:"wrapper-wide"},[e("frontend-header"),t._v(" "),e("div",{attrs:{id:"container"}},[e("div",{staticClass:"container"},[e("div",{staticClass:"slider slider-animation bv xz"},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-lg-12"},[t.category_sliders?e("carousel",{attrs:{items:1,nav:!1,autoplay:!0,autoplayTimeout:2e3}},t._l(t.category_sliders,(function(r){return e("a",{key:r.id,attrs:{href:r.url}},[e("img",{attrs:{src:t.base_url+r.image}})])})),0):t._e()],1)])]),t._v(" "),e("ul",{staticClass:"breadcrumb"},t._l(t.category,(function(r){return r.slug==t.$route.params.slug?e("li",[e("router-link",{attrs:{to:{name:"PublcaCategory",params:{slug:r.slug}}}},[e("i",{staticClass:"fa fa-home"}),t._v("\n\n            "+t._s(r.name)+"\n          ")])],1):t._e()})),0),t._v(" "),e("div",{staticClass:"row"},[e("aside",{staticClass:"col-sm-3",attrs:{id:"column-left"}},[e("div",{staticClass:"categories hidden-xs bg-white shadow c-box"},[e("h3",{staticClass:"subtitle"},[t._v("Other's Categories")]),t._v(" "),e("div",{staticClass:"box-category"},[e("ul",{attrs:{id:"cat_accordion"}},t._l(t.category,(function(r){return r.slug!=t.$route.params.slug?e("li",[e("router-link",{attrs:{to:{name:"PublcaCategory",params:{slug:r.slug}}}},[t._v(t._s(r.name))])],1):t._e()})),0)])]),t._v(" "),e("div",{staticClass:"search-box hidden-xs bg-white shadow c-box"},[e("h3",{staticClass:"subtitle",staticStyle:{"margin-left":"20px"}},[t._v("\n              filter by price\n            ")]),t._v(" "),e("form",{on:{submit:function(r){return r.preventDefault(),t.priceFilter(r)}}},[e("div",{staticClass:"row"},[e("div",{staticClass:"col-md-6 col-sm-6"},[e("label",{attrs:{for:"min-price"}},[t._v("min-price")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.price_filter.min_price,expression:"price_filter.min_price"}],staticClass:"form-control",attrs:{placeholder:"00.00",type:"number",name:""},domProps:{value:t.price_filter.min_price},on:{input:function(r){r.target.composing||t.$set(t.price_filter,"min_price",r.target.value)}}})]),t._v(" "),e("div",{staticClass:"col-md-6 col-sm-6"},[e("label",{attrs:{for:"max-price"}},[t._v("max-price")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model",value:t.price_filter.max_price,expression:"price_filter.max_price"}],staticClass:"form-control",attrs:{placeholder:"max-price",type:"number",name:""},domProps:{value:t.price_filter.max_price},on:{input:function(r){r.target.composing||t.$set(t.price_filter,"max_price",r.target.value)}}})])]),t._v(" "),e("br"),t._v(" "),t._m(0)]),t._v(" "),e("div",{staticClass:"sort-box",staticStyle:{"margin-top":"20px"}},[e("select",{directives:[{name:"model",rawName:"v-model",value:t.sort_by_price,expression:"sort_by_price"}],staticClass:"form-control",on:{change:[function(r){var e=Array.prototype.filter.call(r.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.sort_by_price=r.target.multiple?e:e[0]},t.price_sorting_asec_desc]}},[e("option",{attrs:{value:"select_by",disabled:""}},[t._v("Select Best Match")]),t._v(" "),e("option",{attrs:{value:"1"}},[t._v("price less to high")]),t._v(" "),e("option",{attrs:{value:"2"}},[t._v("price high to less")])])])])]),t._v(" "),e("div",{staticClass:"col-sm-9",attrs:{id:"content"}},[e("div",{staticClass:"row"},[t._l(t.products,(function(r){return e("div",{key:r.id,staticClass:"col-lg-4 custom_padding col-sm-4 col-md-4 col-xs-6  "},[e("div",{staticClass:"product-card "},[e("div",{staticClass:"product-card-body"},[e("router-link",{attrs:{to:{name:"single",params:{slug:r.slug}}}},[e("img",{attrs:{src:t.product_thumbnail_link+r.thumbnail_img,alt:r.name}})]),t._v(" "),e("div",{staticClass:"product-detail "},[e("h4",[e("router-link",{staticClass:"product-link",attrs:{to:{name:"single",params:{slug:r.slug}}}},[t._v(t._s(r.name.substring(0,20))+"\n                       "),r.name.length>20?e("span",[t._v("...")]):t._e()])],1),t._v(" "),e("p",{staticClass:"price"},[e("span",{staticClass:"price-new"},[t._v(" ৳"+t._s(r.price))]),t._v(" "),r.discount?e("span",{staticClass:"price-old"},[t._v(" ৳"+t._s(r.sale_price))]):t._e()])])],1),t._v(" "),e("div",{staticClass:"product-card-footer"},[e("div",{staticClass:"new_arrival_card_footer"},[r.product_attribute?e("router-link",{attrs:{to:{name:"single",params:{slug:r.slug}}}},[t._v(" Add To Cart ")]):e("a",{on:{click:function(e){return t.addToCart(r.slug)}}},[t._v("Add To Cart")]),t._v(" "),r.product_attribute?e("router-link",{attrs:{to:{name:"single",params:{slug:r.slug}}}},[t._v("Buy Now ")]):e("a",{on:{click:function(e){return t.buyNow(r.slug)}}},[t._v("Buy Now ")])],1)])])])})),t._v(" "),e("infinite-loading",{on:{infinite:t.categoryWiseProduct}},[e("div",{attrs:{slot:"no-more"},slot:"no-more"})])],2)])])]),t._v(" "),e("frontend-footer"),t._v(" "),t.quick_v_product_id?e("quick-view",{attrs:{quick_v_p_id:t.quick_v_product_id},on:{clicked:function(r){return t.closedModal(r)}}}):t._e()],1)],1)}),[function(){var t=this.$createElement,r=this._self._c||t;return r("button",{staticClass:"btn btn-block btn_search",attrs:{type:"submit"}},[this._v("\n                Filter "),r("i",{staticClass:"fa fa-lg fa-filter"})])}],!1,null,null,null);r.default=c.exports},543:function(t,r,e){"use strict";var s=e(100);e.n(s).a},544:function(t,r,e){(t.exports=e(4)(!1)).push([t.i,"\n.search-box {\r\n  margin-top: 20px;\n}\n.btn_search {\r\n  background: #ff4d03;\r\n  color: #fff;\r\n  border: 1px dashed;\n}\r\n\r\n\r\n\r\n",""])}}]);