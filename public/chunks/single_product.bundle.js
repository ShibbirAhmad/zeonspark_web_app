(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["single_product"],{

/***/ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/public/SingleProduct.vue?vue&type=script&lang=js&":
/*!*******************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib??ref--4-0!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/public/SingleProduct.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************************************************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var vue_loading_overlay__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! vue-loading-overlay */ "./node_modules/vue-loading-overlay/dist/vue-loading.min.js");
/* harmony import */ var vue_loading_overlay__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(vue_loading_overlay__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var vue_loading_overlay_dist_vue_loading_css__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! vue-loading-overlay/dist/vue-loading.css */ "./node_modules/vue-loading-overlay/dist/vue-loading.css");
/* harmony import */ var vue_loading_overlay_dist_vue_loading_css__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(vue_loading_overlay_dist_vue_loading_css__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var sweetalert2__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! sweetalert2 */ "./node_modules/sweetalert2/dist/sweetalert2.all.js");
/* harmony import */ var sweetalert2__WEBPACK_IMPORTED_MODULE_2___default = /*#__PURE__*/__webpack_require__.n(sweetalert2__WEBPACK_IMPORTED_MODULE_2__);
/* harmony import */ var vue_horizontal_list__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! vue-horizontal-list */ "./node_modules/vue-horizontal-list/dist/vue-horizontal-list.esm.js");
/* harmony import */ var vue_image_zoomer__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! vue-image-zoomer */ "./node_modules/vue-image-zoomer/dist/vueImageZoom.js");
/* harmony import */ var vue_image_zoomer__WEBPACK_IMPORTED_MODULE_4___default = /*#__PURE__*/__webpack_require__.n(vue_image_zoomer__WEBPACK_IMPORTED_MODULE_4__);
/* harmony import */ var vue_socialmedia_share__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! vue-socialmedia-share */ "./node_modules/vue-socialmedia-share/dist/vue-socialmedia-share.common.js");
/* harmony import */ var vue_socialmedia_share__WEBPACK_IMPORTED_MODULE_5___default = /*#__PURE__*/__webpack_require__.n(vue_socialmedia_share__WEBPACK_IMPORTED_MODULE_5__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//






/* harmony default export */ __webpack_exports__["default"] = ({
  beforeCreated: function beforeCreated() {
    var _this = this;

    this.validation();
    this.$store.dispatch("general_setting");
    setTimeout(function () {
      _this.validation();
    }, 200);
  },
  data: function data() {
    return {
      isLoading: true,
      fullPage: true,
      disabled: true,
      variant_index: "",
      base_url: this.$store.state.image_base_link,
      product_thumbnail_link: this.$store.state.image_thumbnail_link,
      cart: {
        product_id: "",
        variant_id: "",
        attrribute_id: "",
        quantity: 1
      },
      related_products: "",
      related_products_options: {
        responsive: [{
          end: 450,
          size: 2
        }, {
          start: 450,
          end: 768,
          size: 2
        }, {
          start: 768,
          end: 992,
          size: 4
        }, {
          size: 4
        }],
        list: {
          windowed: 600,
          padding: 24
        },
        position: {
          start: 0
        },
        autoplay: {
          play: true,
          speed: 3600,
          repeat: true
        }
      },
      tab_content: 1,
      quick_v_product_id: "",
      o_modal: false,
      zooming_img: ''
    };
  },
  methods: {
    displayeImageFromBox: function displayeImageFromBox(e) {
      var target_element = e.target;
      var active_images = document.getElementsByClassName("__active_border");

      if (active_images.length > 0) {
        for (var i = 0; i < active_images.length; i++) {
          active_images[i].classList.remove("__active_border");
        }
      }

      target_element.classList.add("__active_border");
      this.zooming_img = target_element.src;
    },
    dicrementQty: function dicrementQty() {
      if (this.cart.quantity > 1) {
        var qty = this.cart.quantity;
        this.cart.quantity = qty - 1;
      }
    },
    incrementQty: function incrementQty() {
      var qty = this.cart.quantity;
      this.cart.quantity = qty + 1;
    },
    CartToAdd: function CartToAdd() {
      var _this2 = this;

      if (this.product.product_variant.length > 0) {
        this.cart.attrribute_id = this.product.product_attribute.attribute.id;

        if (this.cart.variant_id < 1) {
          sweetalert2__WEBPACK_IMPORTED_MODULE_2___default.a.fire({
            position: 'top-center',
            icon: 'error',
            title: 'please,select product ' + this.product.product_attribute.attribute.name,
            showConfirmButton: false,
            timer: 1500
          });
          return;
        }
      }

      axios.get("/_public/addToCart", {
        params: {
          slug: this.$route.params.slug,
          attribute_id: this.cart.attrribute_id,
          variant_id: this.cart.variant_id,
          quantity: this.cart.quantity
        }
      }).then(function (resp) {
        //  console.log(resp);
        if (resp.data.status == "SUCCESS") {
          _this2.$toasted.show(resp.data.message, {
            position: "top-center",
            type: "success",
            duration: 2000
          });

          _this2.$store.dispatch("getCartContent");
        } else if (resp.data.status == "error") {
          _this2.$toasted.show(resp.data.message, {
            position: "top-center",
            type: "error",
            duration: 4000
          });
        }
      }).then(function (error) {// console.log(error);
      });
    },
    buyNow: function buyNow() {
      var _this3 = this;

      if (this.product.product_variant.length > 0) {
        this.cart.attrribute_id = this.product.product_attribute.attribute.id;

        if (this.cart.variant_id < 1) {
          sweetalert2__WEBPACK_IMPORTED_MODULE_2___default.a.fire({
            position: 'top-center',
            icon: 'error',
            title: 'please,select product ' + this.product.product_attribute.attribute.name,
            showConfirmButton: false,
            timer: 1500
          });
          return;
        }
      }

      axios.get("/_public/addToCart", {
        params: {
          slug: this.$route.params.slug,
          attribute_id: this.cart.attrribute_id,
          variant_id: this.cart.variant_id,
          quantity: this.cart.quantity
        }
      }).then(function (resp) {
        // console.log(resp);
        if (resp.data.status == "SUCCESS") {
          _this3.$store.dispatch("getCartContent");

          _this3.$toasted.show(resp.data.message, {
            position: "bottom-left",
            type: "success",
            duration: 2000
          });

          _this3.$router.push({
            name: "Chekout"
          });
        } else if (resp.data.status == "error") {
          _this3.$toasted.show(resp.data.message, {
            position: "top-center",
            type: "error",
            duration: 4000
          });
        }
      }).then(function (error) {// console.log(error);
      });
    },
    validation: function validation() {
      if (this.cart.quantity < 1) {
        this.cart.quantity = 1;
        alert("Quantity at least 1");
        return;
      }

      if (this.product.product_attribute) {
        if (this.cart.attrribute_id < 1) {
          this.disabled = true;
        } else {
          this.disabled = false;
        }
      } else {
        this.disabled = false;
      }
    },
    SelectVaraint: function SelectVaraint() {
      // this.product.product_variant.length=0;
      var index = this.variant_index;
      var variant_id = this.product.product_variant[index].variant_id;
      var attribute_id = this.product.product_variant[index].variant.attribute_id;
      this.cart.attrribute_id = attribute_id;
      this.cart.variant_id = variant_id;
      this.validation();
    },
    getRelatedProducts: function getRelatedProducts() {
      var _this4 = this;

      axios.get("/_public/related/products/" + this.$route.params.slug).then(function (resp) {
        _this4.related_products = resp.data;
      });
    },
    closedModal: function closedModal(close) {
      this.quick_v_product_id = "";
    }
  },
  created: function created() {
    this.getRelatedProducts();
    this.$store.dispatch("product_images", this.$route.params.slug);
    this.$store.dispatch("single_product", this.$route.params.slug);
    this.$store.dispatch("user");
  },
  computed: {
    product: function product() {
      return this.$store.getters.single_product;
    },
    general_setting: function general_setting() {
      return this.$store.getters.general_setting;
    },
    product_images: function product_images() {
      return this.$store.getters.product_images;
    },
    user: function user() {
      return this.$store.getters.user;
    }
  },
  components: {
    Loading: vue_loading_overlay__WEBPACK_IMPORTED_MODULE_0___default.a,
    VueHorizontalList: vue_horizontal_list__WEBPACK_IMPORTED_MODULE_3__["default"],
    imageZoom: vue_image_zoomer__WEBPACK_IMPORTED_MODULE_4___default.a,
    Facebook: vue_socialmedia_share__WEBPACK_IMPORTED_MODULE_5__["Facebook"],
    Linkedin: vue_socialmedia_share__WEBPACK_IMPORTED_MODULE_5__["Linkedin"],
    Pinterest: vue_socialmedia_share__WEBPACK_IMPORTED_MODULE_5__["Pinterest"],
    WhatsApp: vue_socialmedia_share__WEBPACK_IMPORTED_MODULE_5__["WhatsApp"],
    Email: vue_socialmedia_share__WEBPACK_IMPORTED_MODULE_5__["Email"],
    Google: vue_socialmedia_share__WEBPACK_IMPORTED_MODULE_5__["Google"]
  },
  watch: {
    product_images: function product_images(value) {
      // console.log(value);
      if (Object.keys(value).length > 0) {
        this.isLoading = false;
      }
    },
    product: function product(value) {
      if (value.product_image.length > 0) {
        this.zooming_img = this.base_url + value.product_image[0].product_image;
      }
    }
  }
});

/***/ }),

/***/ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/public/SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css&":
/*!**************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/public/SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css& ***!
  \**************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(/*! ../../../../node_modules/css-loader/lib/css-base.js */ "./node_modules/css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\nimg.responsive-image.preview-box[data-v-6e453e8c] {\r\n  width: 350px !important;\r\n  height: 350px !important;\n}\n.product-details-tabe[data-v-6e453e8c] {\r\n  margin-top: 20px;\n}\n.btnQuick[data-v-6e453e8c]:hover{\r\n\r\n   background: #ff4d03;\n}\n.v-lazy-image[data-v-6e453e8c] {\r\n  filter: blur(1px);\r\n  transition: filter 0.5s;\n}\n.v-lazy-image-loaded[data-v-6e453e8c] {\r\n  filter: blur(0);\n}\r\n\r\n\r\n", ""]);

// exports


/***/ }),

/***/ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/public/SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css&":
/*!******************************************************************************************************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/style-loader!./node_modules/css-loader??ref--6-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--6-2!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/public/SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css& ***!
  \******************************************************************************************************************************************************************************************************************************************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {


var content = __webpack_require__(/*! !../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css& */ "./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/public/SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css&");

if(typeof content === 'string') content = [[module.i, content, '']];

var transform;
var insertInto;



var options = {"hmr":true}

options.transform = transform
options.insertInto = undefined;

var update = __webpack_require__(/*! ../../../../node_modules/style-loader/lib/addStyles.js */ "./node_modules/style-loader/lib/addStyles.js")(content, options);

if(content.locals) module.exports = content.locals;

if(false) {}

/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/public/SingleProduct.vue?vue&type=template&id=6e453e8c&scoped=true&":
/*!***********************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./resources/js/components/public/SingleProduct.vue?vue&type=template&id=6e453e8c&scoped=true& ***!
  \***********************************************************************************************************************************************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "render", function() { return render; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return staticRenderFns; });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    { staticClass: "wrapper-wide" },
    [
      _c("loading", {
        attrs: {
          active: _vm.isLoading,
          "can-cancel": true,
          "is-full-page": _vm.fullPage
        },
        on: {
          "update:active": function($event) {
            _vm.isLoading = $event
          }
        }
      }),
      _vm._v(" "),
      _c("frontend-header"),
      _vm._v(" "),
      !_vm.isLoading
        ? _c("div", { attrs: { id: "container" } }, [
            _c("div", { staticClass: "container" }, [
              _c("div", { staticClass: "single-product-box" }, [
                _c("div", { staticClass: "row" }, [
                  _c("div", { staticClass: "col-lg-5 col-md-5 col-xs-12" }, [
                    _c(
                      "div",
                      { staticClass: "product-image-viewer" },
                      [
                        _vm.zooming_img.length
                          ? _c("image-zoom", {
                              attrs: {
                                regular: _vm.zooming_img,
                                "img-class": "single_product_image"
                              }
                            })
                          : _vm._e()
                      ],
                      1
                    ),
                    _vm._v(" "),
                    _c(
                      "div",
                      { staticClass: "preview_img_box_container" },
                      _vm._l(_vm.product_images, function(image, index) {
                        return _c(
                          "div",
                          {
                            key: index,
                            staticClass: "__preview_image_box",
                            class: { __active_border: index == 0 }
                          },
                          [
                            _c("img", {
                              staticClass: "__preview_img",
                              attrs: {
                                src: _vm.base_url + image.product_image
                              },
                              on: { click: _vm.displayeImageFromBox }
                            })
                          ]
                        )
                      }),
                      0
                    )
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "col-lg-4 col-md-4 col-xs-12" }, [
                    _c("ul", { staticClass: "list-unstyled description" }, [
                      _c("li", [
                        _c("h3", { staticClass: "title" }, [
                          _vm._v(_vm._s(_vm.product.name))
                        ])
                      ]),
                      _vm._v(" "),
                      _c("li", [
                        _c("div", { staticClass: "s_price_container_1" }, [
                          _c("h4", [_vm._v(" Price:  ")]),
                          _vm._v(" "),
                          _c("p", [
                            _vm._v(
                              "\n                              ৳" +
                                _vm._s(_vm.product.price) +
                                "\n                          "
                            )
                          ])
                        ]),
                        _vm._v(" "),
                        _vm.product.discount
                          ? _c("div", { staticClass: "s_price_container_2" }, [
                              _c("h4", [_vm._v(" Old Price: ")]),
                              _vm._v(" "),
                              _c("p", [
                                _vm._v(
                                  "\n                               ৳" +
                                    _vm._s(_vm.product.sale_price) +
                                    "\n                            "
                                )
                              ])
                            ])
                          : _vm._e(),
                        _vm._v(" "),
                        _vm.product.discount
                          ? _c("div", { staticClass: "s_price_container_3" }, [
                              _c("h4", [_vm._v(" You Save : ")]),
                              _vm._v(" "),
                              _c("p", [
                                _vm._v(
                                  "\n                              " +
                                    _vm._s(
                                      (
                                        (_vm.product.discount /
                                          _vm.product.sale_price) *
                                        100
                                      ).toFixed(0)
                                    ) +
                                    "% "
                                ),
                                _c("span", [_vm._v("off")])
                              ])
                            ])
                          : _vm._e()
                      ]),
                      _vm._v(" "),
                      _c("li", [
                        _c("h4", { staticClass: "p_code" }, [
                          _vm._v("\n                      Product Code: "),
                          _c("span", [
                            _vm._v(" " + _vm._s(_vm.product.product_code) + " ")
                          ])
                        ])
                      ])
                    ]),
                    _vm._v(" "),
                    _c("div", { attrs: { id: "product" } }, [
                      _c("div", { staticClass: "row" }, [
                        _vm.product.product_variant.length > 0 &&
                        _vm.product.product_attribute
                          ? _c(
                              "div",
                              { staticClass: "col-lg-12 col-md-12 col-xs-12" },
                              [
                                _c(
                                  "div",
                                  { staticClass: "ps-product__variations" },
                                  [
                                    _c(
                                      "div",
                                      { staticClass: "pr_switch_wrap" },
                                      [
                                        _c(
                                          "div",
                                          { staticClass: "product-attributes" },
                                          [
                                            _vm.product.product_attribute.attribute.name.toLowerCase() ==
                                            "size"
                                              ? _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "text-swatches-wrapper attribute-swatches-wrapper attribute-swatches-wrapper form-group product__attribute product__color",
                                                    attrs: {
                                                      "data-type": "text"
                                                    }
                                                  },
                                                  [
                                                    _c(
                                                      "label",
                                                      {
                                                        staticClass:
                                                          "attribute-name"
                                                      },
                                                      [_vm._v("Size")]
                                                    ),
                                                    _vm._v(" "),
                                                    _c(
                                                      "div",
                                                      {
                                                        staticClass:
                                                          "attribute-values"
                                                      },
                                                      [
                                                        _c(
                                                          "ul",
                                                          {
                                                            staticClass:
                                                              "text-swatch attribute-swatch color-swatch"
                                                          },
                                                          _vm._l(
                                                            _vm.product
                                                              .product_variant,
                                                            function(
                                                              variant,
                                                              index
                                                            ) {
                                                              return _c(
                                                                "li",
                                                                {
                                                                  key: index,
                                                                  staticClass:
                                                                    "attribute-swatch-item pe-none"
                                                                },
                                                                [
                                                                  _c("div", [
                                                                    _c(
                                                                      "label",
                                                                      [
                                                                        _c(
                                                                          "input",
                                                                          {
                                                                            directives: [
                                                                              {
                                                                                name:
                                                                                  "model",
                                                                                rawName:
                                                                                  "v-model",
                                                                                value:
                                                                                  _vm
                                                                                    .cart
                                                                                    .variant_id,
                                                                                expression:
                                                                                  "cart.variant_id"
                                                                              }
                                                                            ],
                                                                            staticClass:
                                                                              "product-filter-item variant_size",
                                                                            attrs: {
                                                                              type:
                                                                                "radio",
                                                                              name:
                                                                                "size"
                                                                            },
                                                                            domProps: {
                                                                              value:
                                                                                variant
                                                                                  .variant
                                                                                  .id,
                                                                              checked: _vm._q(
                                                                                _vm
                                                                                  .cart
                                                                                  .variant_id,
                                                                                variant
                                                                                  .variant
                                                                                  .id
                                                                              )
                                                                            },
                                                                            on: {
                                                                              change: function(
                                                                                $event
                                                                              ) {
                                                                                return _vm.$set(
                                                                                  _vm.cart,
                                                                                  "variant_id",
                                                                                  variant
                                                                                    .variant
                                                                                    .id
                                                                                )
                                                                              }
                                                                            }
                                                                          }
                                                                        ),
                                                                        _vm._v(
                                                                          " "
                                                                        ),
                                                                        _c(
                                                                          "span",
                                                                          [
                                                                            _vm._v(
                                                                              _vm._s(
                                                                                variant
                                                                                  .variant
                                                                                  .name
                                                                              )
                                                                            )
                                                                          ]
                                                                        )
                                                                      ]
                                                                    )
                                                                  ])
                                                                ]
                                                              )
                                                            }
                                                          ),
                                                          0
                                                        )
                                                      ]
                                                    )
                                                  ]
                                                )
                                              : _vm._e()
                                          ]
                                        )
                                      ]
                                    )
                                  ]
                                )
                              ]
                            )
                          : _vm._e(),
                        _vm._v(" "),
                        _c(
                          "div",
                          { staticClass: "col-lg-12 col-md-12 col-xs-12" },
                          [
                            _c("div", { staticClass: "qty_container" }, [
                              _vm._m(0),
                              _vm._v(" "),
                              _c(
                                "div",
                                {
                                  staticClass: "incrementor_plus",
                                  on: { click: _vm.dicrementQty }
                                },
                                [_c("i", { staticClass: "fa fa-minus" })]
                              ),
                              _vm._v(" "),
                              _c("input", {
                                directives: [
                                  {
                                    name: "model",
                                    rawName: "v-model",
                                    value: _vm.cart.quantity,
                                    expression: "cart.quantity"
                                  }
                                ],
                                staticClass: "form-control input_qty",
                                staticStyle: {
                                  height: "36px !important",
                                  width: "210px"
                                },
                                attrs: {
                                  type: "text",
                                  name: "quantity",
                                  value: "1"
                                },
                                domProps: { value: _vm.cart.quantity },
                                on: {
                                  change: _vm.validation,
                                  keyup: _vm.validation,
                                  input: function($event) {
                                    if ($event.target.composing) {
                                      return
                                    }
                                    _vm.$set(
                                      _vm.cart,
                                      "quantity",
                                      $event.target.value
                                    )
                                  }
                                }
                              }),
                              _vm._v(" "),
                              _c(
                                "div",
                                {
                                  staticClass: "incrementor_minus",
                                  on: { click: _vm.incrementQty }
                                },
                                [_c("i", { staticClass: "fa fa-plus" })]
                              )
                            ])
                          ]
                        )
                      ]),
                      _vm._v(" "),
                      _c("div", { staticClass: "row" }, [
                        _c("div", { staticClass: "col-lg-5 col-md-5" }, [
                          _c(
                            "button",
                            {
                              staticClass: "btn  btn-lg btn-block btn_buy_cart",
                              staticStyle: {
                                background: "#ffd700",
                                color: "#000"
                              },
                              attrs: { type: "button" },
                              on: {
                                click: function($event) {
                                  $event.preventDefault()
                                  return _vm.buyNow($event)
                                }
                              }
                            },
                            [_vm._v("Buy Now")]
                          )
                        ]),
                        _vm._v(" "),
                        _c("div", { staticClass: "col-lg-5 col-md-5" }, [
                          _c(
                            "button",
                            {
                              staticClass:
                                "btn btn-primary btn-lg btn-block btn_buy_cart",
                              attrs: { type: "button" },
                              on: {
                                click: function($event) {
                                  $event.preventDefault()
                                  return _vm.CartToAdd($event)
                                }
                              }
                            },
                            [_c("span", [_vm._v("Add To Cart")])]
                          )
                        ])
                      ])
                    ])
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "col-lg-3 col-md-3 col-xs-12" }, [
                    _c("div", { staticClass: "single_p_right_section" }, [
                      _c("ul", [
                        _c("li", [
                          _c(
                            "div",
                            { staticClass: "social_media_share" },
                            [
                              _c("facebook", {
                                staticStyle: { cursor: "pointer" },
                                attrs: {
                                  url:
                                    "https://zeonspark.com/" + _vm.product.slug,
                                  scale: "2"
                                }
                              }),
                              _vm._v(" "),
                              _c("linkedin", {
                                staticStyle: { cursor: "pointer" },
                                attrs: {
                                  url:
                                    "https://zeonspark.com/" + _vm.product.slug,
                                  scale: "2"
                                }
                              }),
                              _vm._v(" "),
                              _c("whats-app", {
                                staticStyle: { cursor: "pointer" },
                                attrs: {
                                  url:
                                    "https://zeonspark.com/" + _vm.product.slug,
                                  title: "Hello",
                                  scale: "2"
                                }
                              }),
                              _vm._v(" "),
                              _c("pinterest", {
                                staticStyle: { cursor: "pointer" },
                                attrs: {
                                  url:
                                    "https://zeonspark.com/" + _vm.product.slug,
                                  scale: "2"
                                }
                              }),
                              _vm._v(" "),
                              _vm._m(1)
                            ],
                            1
                          )
                        ]),
                        _vm._v(" "),
                        _c("li", [
                          _c("i", { staticClass: "fa fa-phone " }),
                          _vm._v(" Hotline:  "),
                          _c(
                            "a",
                            {
                              attrs: {
                                href:
                                  "tel:" +
                                  _vm.general_setting.header_contact_number
                              }
                            },
                            [
                              _vm._v(
                                " " +
                                  _vm._s(
                                    _vm.general_setting.header_contact_number
                                  )
                              )
                            ]
                          )
                        ]),
                        _vm._v(" "),
                        _vm._m(2),
                        _vm._v(" "),
                        _vm._m(3),
                        _vm._v(" "),
                        _vm._m(4),
                        _vm._v(" "),
                        _vm._m(5),
                        _vm._v(" "),
                        _vm._m(6),
                        _vm._v(" "),
                        _vm._m(7),
                        _vm._v(" "),
                        _vm._m(8)
                      ])
                    ])
                  ])
                ])
              ]),
              _vm._v(" "),
              _c("div", { staticClass: "product-details-tabe" }, [
                _c("ul", { staticClass: "details-tab-menu-list" }, [
                  _c(
                    "li",
                    {
                      staticClass: "details-tab-menu-item",
                      class: { "tab-menu-item-active": _vm.tab_content == 1 },
                      on: {
                        click: function($event) {
                          _vm.tab_content = 1
                        }
                      }
                    },
                    [_vm._v("Details")]
                  ),
                  _vm._v(" "),
                  _c(
                    "li",
                    {
                      staticClass: "details-tab-menu-item",
                      class: { "tab-menu-item-active": _vm.tab_content == 2 },
                      on: {
                        click: function($event) {
                          _vm.tab_content = 2
                        }
                      }
                    },
                    [_vm._v("Spacification")]
                  ),
                  _vm._v(" "),
                  _c(
                    "li",
                    {
                      staticClass: "details-tab-menu-item",
                      class: { "tab-menu-item-active": _vm.tab_content == 3 },
                      on: {
                        click: function($event) {
                          _vm.tab_content = 3
                        }
                      }
                    },
                    [_vm._v("Size  Chart")]
                  ),
                  _vm._v(" "),
                  _c(
                    "li",
                    {
                      staticClass: "details-tab-menu-item",
                      class: { "tab-menu-item-active": _vm.tab_content == 4 },
                      on: {
                        click: function($event) {
                          _vm.tab_content = 4
                        }
                      }
                    },
                    [_vm._v("Delivery Policy")]
                  )
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "product-tab-content" }, [
                  _c("div", {
                    staticClass: "product-details",
                    class: { block: _vm.tab_content == 1 },
                    domProps: { innerHTML: _vm._s(_vm.product.details) }
                  }),
                  _vm._v(" "),
                  _c("div", {
                    staticClass: "product-details",
                    class: { block: _vm.tab_content == 2 },
                    domProps: { innerHTML: _vm._s(_vm.product.specification) }
                  }),
                  _vm._v(" "),
                  _c("div", {
                    staticClass: "product-details",
                    class: { block: _vm.tab_content == 3 },
                    domProps: { innerHTML: _vm._s(_vm.product.size_chart) }
                  }),
                  _vm._v(" "),
                  _c("div", {
                    staticClass: "product-details",
                    class: { block: _vm.tab_content == 4 },
                    domProps: { innerHTML: _vm._s(_vm.product.delivery_policy) }
                  })
                ])
              ]),
              _vm._v(" "),
              _vm.related_products.length
                ? _c("div", { staticClass: "new_arrival_section" }, [
                    _c(
                      "div",
                      { staticClass: "row" },
                      [
                        _c("h4", { staticClass: "arrival_heading" }, [
                          _vm._v("Related Products")
                        ]),
                        _vm._v(" "),
                        _c("vue-horizontal-list", {
                          attrs: {
                            items: _vm.related_products,
                            options: _vm.related_products_options
                          },
                          scopedSlots: _vm._u(
                            [
                              {
                                key: "default",
                                fn: function(ref) {
                                  var item = ref.item
                                  return [
                                    _c(
                                      "div",
                                      {
                                        staticClass:
                                          "col-lg-3 col-md-3 small_width"
                                      },
                                      [
                                        _c(
                                          "div",
                                          {
                                            staticClass: "new_arrival_container"
                                          },
                                          [
                                            _c(
                                              "div",
                                              {
                                                staticClass: "new_arrival_card"
                                              },
                                              [
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "new_arrival_card_body text-center"
                                                  },
                                                  [
                                                    _c(
                                                      "router-link",
                                                      {
                                                        attrs: {
                                                          to: {
                                                            name: "single",
                                                            params: {
                                                              slug: item.slug
                                                            }
                                                          }
                                                        }
                                                      },
                                                      [
                                                        _c("img", {
                                                          attrs: {
                                                            src:
                                                              _vm.product_thumbnail_link +
                                                              item.thumbnail_img
                                                          }
                                                        })
                                                      ]
                                                    ),
                                                    _vm._v(" "),
                                                    _c(
                                                      "p",
                                                      {
                                                        staticClass:
                                                          "arrival_link"
                                                      },
                                                      [
                                                        _c(
                                                          "router-link",
                                                          {
                                                            attrs: {
                                                              to: {
                                                                name: "single",
                                                                params: {
                                                                  slug:
                                                                    item.slug
                                                                }
                                                              }
                                                            }
                                                          },
                                                          [
                                                            _vm._v(
                                                              _vm._s(
                                                                item.name.substring(
                                                                  0,
                                                                  20
                                                                )
                                                              ) +
                                                                "\n                        "
                                                            ),
                                                            item.name.length >
                                                            20
                                                              ? _c("span", [
                                                                  _vm._v(
                                                                    " ... "
                                                                  )
                                                                ])
                                                              : _vm._e()
                                                          ]
                                                        )
                                                      ],
                                                      1
                                                    ),
                                                    _vm._v(" "),
                                                    _c(
                                                      "p",
                                                      { staticClass: "price" },
                                                      [
                                                        _c(
                                                          "span",
                                                          {
                                                            staticClass:
                                                              "price-new"
                                                          },
                                                          [
                                                            _vm._v(
                                                              " ৳" +
                                                                _vm._s(
                                                                  item.price
                                                                )
                                                            )
                                                          ]
                                                        ),
                                                        _vm._v(" "),
                                                        item.discount
                                                          ? _c(
                                                              "span",
                                                              {
                                                                staticClass:
                                                                  "price-old"
                                                              },
                                                              [
                                                                _vm._v(
                                                                  "\n                        ৳" +
                                                                    _vm._s(
                                                                      item.sale_price
                                                                    )
                                                                )
                                                              ]
                                                            )
                                                          : _vm._e()
                                                      ]
                                                    )
                                                  ],
                                                  1
                                                ),
                                                _vm._v(" "),
                                                _c(
                                                  "div",
                                                  {
                                                    staticClass:
                                                      "new_arrival_card_footer"
                                                  },
                                                  [
                                                    item.product_attribute
                                                      ? _c(
                                                          "router-link",
                                                          {
                                                            attrs: {
                                                              to: {
                                                                name: "single",
                                                                params: {
                                                                  slug:
                                                                    item.slug
                                                                }
                                                              }
                                                            }
                                                          },
                                                          [
                                                            _vm._v(
                                                              " Add To Cart "
                                                            )
                                                          ]
                                                        )
                                                      : _c(
                                                          "a",
                                                          {
                                                            on: {
                                                              click: function(
                                                                $event
                                                              ) {
                                                                return _vm.CartToAdd(
                                                                  item.slug
                                                                )
                                                              }
                                                            }
                                                          },
                                                          [
                                                            _vm._v(
                                                              "Add To Cart"
                                                            )
                                                          ]
                                                        ),
                                                    _vm._v(" "),
                                                    item.product_attribute
                                                      ? _c(
                                                          "router-link",
                                                          {
                                                            attrs: {
                                                              to: {
                                                                name: "single",
                                                                params: {
                                                                  slug:
                                                                    item.slug
                                                                }
                                                              }
                                                            }
                                                          },
                                                          [_vm._v("Buy Now ")]
                                                        )
                                                      : _c(
                                                          "a",
                                                          {
                                                            on: {
                                                              click: function(
                                                                $event
                                                              ) {
                                                                return _vm.buyNow(
                                                                  item.slug
                                                                )
                                                              }
                                                            }
                                                          },
                                                          [_vm._v("Buy Now ")]
                                                        )
                                                  ],
                                                  1
                                                )
                                              ]
                                            )
                                          ]
                                        )
                                      ]
                                    )
                                  ]
                                }
                              }
                            ],
                            null,
                            false,
                            405306623
                          )
                        })
                      ],
                      1
                    )
                  ])
                : _vm._e()
            ])
          ])
        : _vm._e(),
      _vm._v(" "),
      _c("frontend-footer"),
      _vm._v(" "),
      _vm.quick_v_product_id
        ? _c("quick-view", {
            attrs: { quick_v_p_id: _vm.quick_v_product_id },
            on: {
              clicked: function($event) {
                return _vm.closedModal($event)
              }
            }
          })
        : _vm._e()
    ],
    1
  )
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("h4", [_c("b", [_vm._v("Quantity")])])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c(
      "a",
      {
        staticStyle: { cursor: "pointer" },
        attrs: { href: "https://www.instagram.com" }
      },
      [_c("i", { staticClass: "fa fa-instagram instagram_share_icon" })]
    )
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("li", [
      _c("i", { staticClass: "fa fa-headphones" }),
      _vm._v(" Dedicated Support "),
      _c("br"),
      _vm._v(" "),
      _c("small", [_vm._v("9:00 AM - 10:00 PM")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("li", [
      _c("i", { staticClass: "fa fa-thumbs-up " }),
      _vm._v(" Quality Product ")
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("li", [
      _c("i", { staticClass: "fa fa-eye-slash " }),
      _vm._v(" 100% Secure  Payment ")
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("li", [
      _c("i", { staticClass: "fa fa-truck " }),
      _vm._v(" Inside  Dhaka "),
      _c("br"),
      _c("small", [_vm._v("1-3 working days delivery")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("li", [
      _c("i", { staticClass: "fa fa-truck " }),
      _vm._v(" Outside  Dhaka "),
      _c("br"),
      _c("small", [_vm._v("3-5 working days delivery")])
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("li", [
      _c("i", { staticClass: "fa fa-handshake-o " }),
      _vm._v(" Cash On Delivery ")
    ])
  },
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("li", [
      _c("i", { staticClass: "fa fa-credit-card " }),
      _vm._v(" Payment Gateway ")
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./resources/js/components/public/SingleProduct.vue":
/*!**********************************************************!*\
  !*** ./resources/js/components/public/SingleProduct.vue ***!
  \**********************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _SingleProduct_vue_vue_type_template_id_6e453e8c_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./SingleProduct.vue?vue&type=template&id=6e453e8c&scoped=true& */ "./resources/js/components/public/SingleProduct.vue?vue&type=template&id=6e453e8c&scoped=true&");
/* harmony import */ var _SingleProduct_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./SingleProduct.vue?vue&type=script&lang=js& */ "./resources/js/components/public/SingleProduct.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport *//* harmony import */ var _SingleProduct_vue_vue_type_style_index_0_id_6e453e8c_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css& */ "./resources/js/components/public/SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");






/* normalize component */

var component = Object(_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_3__["default"])(
  _SingleProduct_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__["default"],
  _SingleProduct_vue_vue_type_template_id_6e453e8c_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"],
  _SingleProduct_vue_vue_type_template_id_6e453e8c_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"],
  false,
  null,
  "6e453e8c",
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/public/SingleProduct.vue"
/* harmony default export */ __webpack_exports__["default"] = (component.exports);

/***/ }),

/***/ "./resources/js/components/public/SingleProduct.vue?vue&type=script&lang=js&":
/*!***********************************************************************************!*\
  !*** ./resources/js/components/public/SingleProduct.vue?vue&type=script&lang=js& ***!
  \***********************************************************************************/
/*! exports provided: default */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_SingleProduct_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/babel-loader/lib??ref--4-0!../../../../node_modules/vue-loader/lib??vue-loader-options!./SingleProduct.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/public/SingleProduct.vue?vue&type=script&lang=js&");
/* empty/unused harmony star reexport */ /* harmony default export */ __webpack_exports__["default"] = (_node_modules_babel_loader_lib_index_js_ref_4_0_node_modules_vue_loader_lib_index_js_vue_loader_options_SingleProduct_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__["default"]); 

/***/ }),

/***/ "./resources/js/components/public/SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css&":
/*!*******************************************************************************************************************!*\
  !*** ./resources/js/components/public/SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css& ***!
  \*******************************************************************************************************************/
/*! no static exports found */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SingleProduct_vue_vue_type_style_index_0_id_6e453e8c_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/style-loader!../../../../node_modules/css-loader??ref--6-1!../../../../node_modules/vue-loader/lib/loaders/stylePostLoader.js!../../../../node_modules/postcss-loader/src??ref--6-2!../../../../node_modules/vue-loader/lib??vue-loader-options!./SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css& */ "./node_modules/style-loader/index.js!./node_modules/css-loader/index.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/public/SingleProduct.vue?vue&type=style&index=0&id=6e453e8c&scoped=true&lang=css&");
/* harmony import */ var _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SingleProduct_vue_vue_type_style_index_0_id_6e453e8c_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SingleProduct_vue_vue_type_style_index_0_id_6e453e8c_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__);
/* harmony reexport (unknown) */ for(var __WEBPACK_IMPORT_KEY__ in _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SingleProduct_vue_vue_type_style_index_0_id_6e453e8c_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__) if(["default"].indexOf(__WEBPACK_IMPORT_KEY__) < 0) (function(key) { __webpack_require__.d(__webpack_exports__, key, function() { return _node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SingleProduct_vue_vue_type_style_index_0_id_6e453e8c_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0__[key]; }) }(__WEBPACK_IMPORT_KEY__));
 /* harmony default export */ __webpack_exports__["default"] = (_node_modules_style_loader_index_js_node_modules_css_loader_index_js_ref_6_1_node_modules_vue_loader_lib_loaders_stylePostLoader_js_node_modules_postcss_loader_src_index_js_ref_6_2_node_modules_vue_loader_lib_index_js_vue_loader_options_SingleProduct_vue_vue_type_style_index_0_id_6e453e8c_scoped_true_lang_css___WEBPACK_IMPORTED_MODULE_0___default.a); 

/***/ }),

/***/ "./resources/js/components/public/SingleProduct.vue?vue&type=template&id=6e453e8c&scoped=true&":
/*!*****************************************************************************************************!*\
  !*** ./resources/js/components/public/SingleProduct.vue?vue&type=template&id=6e453e8c&scoped=true& ***!
  \*****************************************************************************************************/
/*! exports provided: render, staticRenderFns */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_SingleProduct_vue_vue_type_template_id_6e453e8c_scoped_true___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../node_modules/vue-loader/lib??vue-loader-options!./SingleProduct.vue?vue&type=template&id=6e453e8c&scoped=true& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./resources/js/components/public/SingleProduct.vue?vue&type=template&id=6e453e8c&scoped=true&");
/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "render", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_SingleProduct_vue_vue_type_template_id_6e453e8c_scoped_true___WEBPACK_IMPORTED_MODULE_0__["render"]; });

/* harmony reexport (safe) */ __webpack_require__.d(__webpack_exports__, "staticRenderFns", function() { return _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_SingleProduct_vue_vue_type_template_id_6e453e8c_scoped_true___WEBPACK_IMPORTED_MODULE_0__["staticRenderFns"]; });



/***/ })

}]);