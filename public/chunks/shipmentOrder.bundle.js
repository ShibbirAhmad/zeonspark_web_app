(window.webpackJsonp=window.webpackJsonp||[]).push([[188],{1277:function(t,e,r){"use strict";r.r(e);var o={created:function(){this.ordersList(),this.others()},data:function(){return{orders:{},loading:!0,item:30,courier:{order_id:"",courier_id:"",memo_no:"",order_index:""},couriers:"",comments:"",search:"",start_date:"",end_date:"",options:{format:"YYYY-MM-DD",useCurrent:!1},status:4,type:"all",page:1,selected:!1,select_order_id:[],bulk_status:"all",heading:"Shipment Orders",bulkActionType:"0",courier_id:"",order_count:"",thumbnail_img_base_link:this.$store.state.image_thumbnail_link,order_note_list:"",order_note:"",order_id:""}},methods:{getOrderStatistic:function(){var t=this;axios.get("/api/get/order/statistic").then((function(e){t.order_count=e.data.order_count}))},dateFormatter:function(t){return new Date(t).toLocaleTimeString()},comment:function(t){this.$modal.show("orderNote"),this.order_id=t,this.orderNoteList()},orderNoteList:function(){var t=this;axios.get("/api/get/order/note/list/"+this.order_id).then((function(e){"OK"==e.data.status&&(t.order_note_list=e.data.notes)}))},addOrderComment:function(){var t=this;axios.get("/api/add/order/note",{params:{order_id:this.order_id,note:this.order_note}}).then((function(e){"OK"==e.data.status&&(t.$toasted.show(e.data.message,{type:"success",position:"top-center",duration:2e3}),t.orderNoteList())}))},orderAction:function(t){console.log(t),document.getElementById("order_action_"+t).classList.toggle("toggle_order_action")},ordersList:function(){var t=this,e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;this.$Progress.start(),axios.get("/orders?page="+e,{params:{status:this.status,item:this.item,type:this.type,start_date:this.start_date,end_date:this.end_date,courier_id:this.courier_id}}).then((function(e){"SUCCESS"==e.data.status?(t.orders=e.data.orders,t.loading=!1,t.page=t.page+1,t.loading=!1,t.order_count=e.data.order_count,t.$Progress.finish()):t.$toasted.show("someting went to wrong",{type:"error",position:"top-center",duration:5e3})})).catch((function(e){t.$Progress.finish(),t.$toasted.show("someting went to wrong",{type:"error",position:"top-center",duration:4e3})}))},others:function(){var t=this;axios.get("/others").then((function(e){console.log(e),"SUCCESS"==e.data.status&&(t.couriers=e.data.couriers,t.comments=e.data.comments)}))},approved:function(t,e){var r=this;this.$Progress.start(),axios.get("/approved/order/"+t.id).then((function(t){r.$Progress.finish(),"SUCCESS"==t.data.status?(r.$toasted.show(t.data.message,{type:"success",position:"top-center",duration:2e3}),r.orders.data[e].status=3,r.getOrderStatistic()):r.$toasted.show("someting went to wrong",{type:"error",position:"top-center",duration:2e3})})).catch((function(t){r.$toasted.show("someting went to wrong",{type:"error",position:"top-center",duration:4e3})}))},cancel:function(t,e){var r=this;this.$Progress.start(),axios.get("/cancel/order/"+t.id).then((function(t){r.$Progress.finish(),"SUCCESS"==t.data.status?(r.$toasted.show(t.data.message,{type:"success",position:"top-center",duration:2e3}),r.orders.data[e].status=6,r.getOrderStatistic()):r.$toasted.show("someting went to wrong",{type:"error",position:"top-center",duration:2e3})})).catch((function(t){r.$toasted.show("someting went to wrong",{type:"error",position:"top-center",duration:4e3})}))},returnOrder:function(t,e){var r=this;this.$Progress.start(),axios.get("/return/order/"+t.id).then((function(t){console.log(t),r.$Progress.finish(),"SUCCESS"==t.data.status?(r.$toasted.show(t.data.message,{type:"success",position:"top-center",duration:2e3}),r.orders.data[e].status=7,r.getOrderStatistic()):r.$toasted.show("someting went to wrong",{type:"error",position:"top-center",duration:2e3})})).catch((function(t){console.log(t),r.$toasted.show("someting went to wrong",{type:"error",position:"top-center",duration:4e3})}))},delivered:function(t,e){var r=this;axios.get("/api/balance/list").then((function(o){console.log(o);var s={};o.data.balance.forEach((function(t){s[t.id]=t.name})),Swal.fire({title:"Select a balance",input:"select",inputOptions:s,inputPlaceholder:"Select One Balance",showCancelButton:!0}).then((function(o){o.value&&(r.credit_in=o.value,Swal.fire({title:"CHECK IT",html:'\n                  <div style="padding:10px;" class="form-group">\n                    <label>Credit Amount</label>\n                    <input class="form-control" readonly  value="'.concat(parseInt(t.total)-parseInt(t.paid)-parseInt(t.discount)+parseInt(t.shipping_cost),'">\n                  </div>\n              ')}).then((function(o){o.value&&(r.$Progress.start(),axios.get("/delivered/order/"+t.id,{params:{credit_in:r.credit_in}}).then((function(t){console.log(t),r.$Progress.finish(),"SUCCESS"==t.data.status?(r.$toasted.show(t.data.message,{type:"success",position:"top-center",duration:2e3}),r.orders.data[e].status=5,r.getOrderStatistic()):r.$toasted.show(t.data,{type:"error",position:"top-center",duration:2e3})})))})))}))}))},pending:function(t,e){var r=this;this.$Progress.start(),axios.get("/pending/order/"+t.id).then((function(t){console.log(t),r.$Progress.finish(),"SUCCESS"==t.data.status?(r.$toasted.show(t.data.message,{type:"success",position:"top-center",duration:2e3}),r.orders.data[e].status=2,r.getOrderStatistic()):(r.$Progress.finish(),r.$toasted.show("someting went to wrong",{type:"error",position:"top-center",duration:2e3}))})).catch((function(t){console.log(t),r.$toasted.show("someting went to wrong",{type:"error",position:"top-center",duration:4e3})}))},courierModal:function(t,e){this.others(),this.courier.order_id=t.id,this.courier.order_index=e,t.courier_id&&(this.courier.courier_id=t.courier_id),this.$modal.show("example")},OrderCourier:function(){var t=this;this.$Progress.start();var e=this.courier.order_index;axios.post("/order/courier/update/"+this.courier.order_id,{courier_id:this.courier.courier_id,memo_no:this.courier.memo_no}).then((function(r){t.$Progress.finish(),"SUCCESS"==r.data.status&&(t.$modal.hide("example"),console.log(r.data.courier),r.data.order.courier_id&&(t.orders.data[e].courier_id=r.data.order.courier_id),r.data.order.memo_no&&(t.orders.data[e].memo_no=r.data.order.memo_no),r.data.courier&&(t.orders.data[e].courier=r.data.courier),t.courier.courier_id="",t.courier.memo_no="",t.$toasted.show(r.data.message,{type:"success",position:"top-center",duration:2e3}))})).catch((function(t){console.log(t),alert("someting went wrong")}))},orderSearch:function(){var t=this,e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;this.search.length>1?(this.loading=!0,axios.get("/order/search/"+this.search+"?page="+e).then((function(e){"SUCCESS"==e.data.status&&(t.orders=e.data.orders,t.loading=!1)})).catch((function(t){console.log(t),alert("someting went wrong")}))):(this.loading=!1,this.ordersList())},filterOrder:function(){var t=this,e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:1;this.$Progress.start(),this.loading=!0,axios.get("/order/filter?page="+e,{params:{start_date:this.start_date,end_date:this.end_date,item:this.item,status:this.status}}).then((function(e){t.$Progress.finish(),t.loading=!1,"SUCCESS"==e.data.status&&(t.orders=e.data.orders,t.loading=!1)})).catch((function(t){console.log(t)}))},resetAll:function(){location.reload()},selectAll:function(){1==this.selected?this.selected=!1:this.selected=!0;for(var t=document.getElementsByClassName("select-all"),e=0;e<t.length;e++)1==this.selected?t[e].checked=!0:t[e].checked=!1;if(1==this.selected)for(var r=0;r<this.orders.data.length;r++)this.select_order_id.push(this.orders.data[r].id);else this.select_order_id=[]},selectBulkAction:function(){if(this.select_order_id.length<=0)Swal.fire({type:"warning",text:"Please select at least one row"});else{var t=this.bulkActionType;"LABEL PRINT"==t&&window.open("/order/label/print/"+this.select_order_id,"_blank"),"INVOICE PRINT"==t&&window.open("/order/invoice/print/"+this.select_order_id,"_blank"),"PENDING ALL"!=t?"APPROVED ALL"!=t?"SHIPMENT ALL"!=t?"DELIVERED ALL"!=t?"CANCEL ALL"!=t?"RETURN ALLL"!=t||confirm("are you sure")&&this.returnAll(this.select_order_id):confirm("are you sure")&&this.cancelAll(this.select_order_id):confirm("are you sure")&&this.deliveredAll(this.select_order_id):confirm("are you sure")&&this.shipmentAll(this.select_order_id):confirm("are you sure")&&this.apprvedAll(this.select_order_id):confirm("are you sure")&&this.pendingAll(this.select_order_id)}},labelPrint:function(){window.open("","_self","width=600,height=600")},deliveredAll:function(t){var e=this;axios.get("/delivered/all/order/"+t).then((function(t){t.data&&(e.$toasted.show(t.data,{type:"success",position:"top-center",duration:2e3}),e.$router.push({name:"DeliveredOrder"}))})).catch((function(t){console.log(t)}))},returnAll:function(t){var e=this;axios.get("/return/all/order/"+t).then((function(t){t.data&&(e.$toasted.show(t.data,{type:"success",position:"top-center",duration:2e3}),e.$router.push({name:"ReturnOrder"}))})).catch((function(t){console.log(t)}))},cancelAll:function(t){var e=this;axios.get("/cancel/all/order/"+t).then((function(t){t.data&&(e.$toasted.show(t.data,{type:"success",position:"top-center",duration:2e3}),e.$router.push({name:"CancelOrder"}))}))},commentBackup:function(t,e,r){var o=this,s={};this.comments.forEach((function(t){s[t.name]=t.name}));document.getElementsByClassName("swal2-select");Swal.fire({title:r||"Select a comment",input:"select",inputOptions:s,inputPlaceholder:"Select or change a comment",showCancelButton:!0}).then((function(e){"others"==e.value&&Swal.fire({input:"text"}).then((function(e){e.value&&axios.get("/api/order/comment",{params:{order_id:t,comment:e.value}}).then((function(t){console.log(t),"OK"==t.data.status&&(location.reload(),o.$toasted.show(t.data.message,{type:"success",duration:4e3,position:"top-center"}))})).catch((function(t){console.log(t)}))})),e.value?axios.get("/api/order/comment",{params:{order_id:t,comment:e.value}}).then((function(t){console.log(t)})).catch((function(t){console.log(t)})):console.log("Ok")}))}},watch:{status:function(t){this.heading=1==t?"New Orders":2==t?"Pending Orders":3==t?"Approved Orders":4==t?"Shipment Orders":5==t?"Delivered Orders":7==t?"Return Orders":6==t?"Cancel Orders":"All Orders"},start_date:function(t){t.length>1&&this.ordersList()},end_date:function(t){t.length>1&&this.ordersList()},bulkActionType:function(t){this.selectBulkAction()},courier_id:function(t){this.ordersList()}}},s=(r(733),r(1)),a=Object(s.a)(o,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",[r("admin-main"),t._v(" "),r("div",{staticClass:"content-wrapper"},[r("section",{staticClass:"content-header"},[r("div",{staticClass:"order_statistic"},[r("router-link",{staticClass:"statistic_item ",attrs:{to:{name:"NewOrder"}}},[r("h2",[t._v(" "+t._s(t.order_count.new_order)+" ")]),t._v(" "),r("p",[t._v(" New ")])]),t._v(" "),r("router-link",{staticClass:"statistic_item ",attrs:{to:{name:"PendingOrder"}}},[r("h2",[t._v(" "+t._s(t.order_count.pending_order)+" ")]),t._v(" "),r("p",[t._v("Pending")])]),t._v(" "),r("router-link",{staticClass:"statistic_item ",attrs:{to:{name:"ApprovedOrder"}}},[r("h2",[t._v("  "+t._s(t.order_count.approved_order)+" ")]),t._v(" "),r("p",[t._v(" Ready To Ship ")])]),t._v(" "),r("router-link",{staticClass:"statistic_item ",attrs:{to:{name:"ShipmentOrder"}}},[r("h2",[t._v("  "+t._s(t.order_count.shipment_order)+" ")]),t._v(" "),r("p",[t._v(" Shipment  ")])]),t._v(" "),r("router-link",{staticClass:"statistic_item ",attrs:{to:{name:"DeliveredOrder"}}},[r("h2",[t._v("  "+t._s(t.order_count.delivered_order)+" ")]),t._v(" "),r("p",[t._v(" Delivered  ")])]),t._v(" "),r("router-link",{staticClass:"statistic_item ",attrs:{to:{name:"ReturnOrder"}}},[r("h2",[t._v("  "+t._s(t.order_count.return_order)+" ")]),t._v(" "),r("p",[t._v(" Return  ")])]),t._v(" "),r("router-link",{staticClass:"statistic_item ",attrs:{to:{name:"CancelOrder"}}},[r("h2",[t._v("  "+t._s(t.order_count.cancel_order)+" ")]),t._v(" "),r("p",[t._v(" Cancel  ")])]),t._v(" "),r("router-link",{staticClass:"statistic_item ",attrs:{to:{name:"order"}}},[r("h2",[t._v("  "+t._s(t.order_count.total)+" ")]),t._v(" "),r("p",[t._v(" All  ")])])],1)]),t._v(" "),r("section",{staticClass:"content"},[r("div",{staticClass:"container"},[r("div",{staticClass:"row justify-content-center"},[r("div",{staticClass:"col-lg-11"},[r("div",{staticClass:"box box-primary"},[r("div",{staticClass:"box-header with-border "},[r("h3",{staticClass:"box-title orders-heading"},[t._v(t._s(t.heading))]),t._v(" "),r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-2"},[r("select",{directives:[{name:"model",rawName:"v-model",value:t.type,expression:"type"}],staticClass:"form-control",on:{change:[function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.type=e.target.multiple?r:r[0]},t.ordersList]}},[r("option",{attrs:{value:"all"}},[t._v("All type")]),t._v(" "),r("option",{attrs:{value:"2"}},[t._v("Onely Admin")]),t._v(" "),r("option",{attrs:{value:"1"}},[t._v("Only Customer")])])]),t._v(" "),r("div",{staticClass:"col-lg-4"},[r("input",{directives:[{name:"model",rawName:"v-model",value:t.search,expression:"search"}],staticClass:"form-control",attrs:{placeholder:"Enter Invoice, customer name, phone"},domProps:{value:t.search},on:{keyup:t.orderSearch,input:function(e){e.target.composing||(t.search=e.target.value)}}})]),t._v(" "),r("div",{staticClass:"col-lg-4"},[r("form",{on:{submit:function(e){return e.preventDefault(),t.filterOrder(e)}}},[r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-4"},[r("date-picker",{attrs:{autocomplete:"off",placeholder:"start-date",config:t.options},model:{value:t.start_date,callback:function(e){t.start_date=e},expression:"start_date"}})],1),t._v(" "),r("div",{staticClass:"col-lg-4",staticStyle:{"margin-left":"-20px"}},[r("date-picker",{attrs:{autocomplete:"off",placeholder:"end-date",config:t.options},model:{value:t.end_date,callback:function(e){t.end_date=e},expression:"end_date"}})],1),t._v(" "),r("div",{staticClass:"col-lg-4"},[r("select",{directives:[{name:"model",rawName:"v-model",value:t.courier_id,expression:"courier_id"}],staticClass:"form-control",staticStyle:{width:"120px"},on:{change:function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.courier_id=e.target.multiple?r:r[0]}}},[r("option",{attrs:{value:"",selected:"",disabled:""}},[t._v("Select Courier")]),t._v(" "),t._l(t.couriers,(function(e){return r("option",{key:e.id,domProps:{value:e.id}},[t._v(t._s(e.name))])}))],2)])])])]),t._v(" "),r("div",{staticClass:"col-lg-2"},[t.start_date.length>0?r("select",{directives:[{name:"model",rawName:"v-model",value:t.item,expression:"item"}],staticClass:"form-control",on:{change:[function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.item=e.target.multiple?r:r[0]},t.filterOrder]}},[r("option",{attrs:{value:"10"}},[t._v("10")]),t._v(" "),r("option",{attrs:{value:"20"}},[t._v("20")]),t._v(" "),r("option",{attrs:{value:"30"}},[t._v("30")]),t._v(" "),r("option",{attrs:{value:"40"}},[t._v("40")]),t._v(" "),r("option",{attrs:{value:"50"}},[t._v("50")])]):r("select",{directives:[{name:"model",rawName:"v-model",value:t.item,expression:"item"}],staticClass:"form-control",on:{change:[function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.item=e.target.multiple?r:r[0]},t.ordersList]}},[r("option",{attrs:{value:"10"}},[t._v("10")]),t._v(" "),r("option",{attrs:{value:"20"}},[t._v("20")]),t._v(" "),r("option",{attrs:{value:"30"}},[t._v("30")])])])])]),t._v(" "),r("div",{staticClass:"box-body"},[r("table",{staticClass:"table table-bordered table-striped table-hover "},[r("thead",[r("tr",[r("th",{attrs:{width:"5%"}},[r("input",{attrs:{type:"checkbox"},on:{click:t.selectAll}})]),t._v(" "),r("th",{attrs:{width:"10%"}},[t._v("Customer")]),t._v(" "),r("th",{attrs:{width:"10%"}},[t._v("Address")]),t._v(" "),r("th",{attrs:{width:"15%"}},[t._v("Product")]),t._v(" "),r("th",{attrs:{width:"10%"}},[t._v("Invoice")]),t._v(" "),r("th",{attrs:{width:"10%"}},[t._v("Total")]),t._v(" "),r("th",{attrs:{width:"5%"}},[t._v("Created")]),t._v(" "),r("th",{attrs:{width:"5%"}},[t._v("Order_place")]),t._v(" "),r("th",{attrs:{width:"5%"}},[t._v("Order_date")]),t._v(" "),r("th",{attrs:{width:"5%"}},[t._v("Action")]),t._v(" "),r("th",{attrs:{width:"10%"}},[t._v("Courier")]),t._v(" "),r("th",{attrs:{width:"10%"}},[t._v("Comment")])])]),t._v(" "),r("tbody",[t.loading?r("h1",[r("i",{staticClass:"fa fa-spin fa-spinner"})]):t._l(t.orders.data,(function(e,o){return r("tr",{key:o},[r("td",{staticStyle:{width:"1%"}},[r("input",{directives:[{name:"model",rawName:"v-model",value:t.select_order_id,expression:"select_order_id"}],staticClass:"select-all",attrs:{type:"checkbox"},domProps:{value:e.id,checked:Array.isArray(t.select_order_id)?t._i(t.select_order_id,e.id)>-1:t.select_order_id},on:{change:function(r){var o=t.select_order_id,s=r.target,a=!!s.checked;if(Array.isArray(o)){var i=e.id,n=t._i(o,i);s.checked?n<0&&(t.select_order_id=o.concat([i])):n>-1&&(t.select_order_id=o.slice(0,n).concat(o.slice(n+1)))}else t.select_order_id=a}}})]),t._v(" "),r("td",[r("p",[r("strong",[t._v(" "+t._s(e.customer_name)+" ")])]),t._v(" "),r("p",[r("strong",[t._v(t._s(e.customer_phone)+"  ")])])]),t._v(" "),r("td",[t._v("\n                        "+t._s(e.customer_address?e.customer_address:"null")+"\n                      ")]),t._v(" "),r("td",[e.order_item.length>0?r("div",[r("img",{attrs:{width:"50px",height:"50px",src:t.thumbnail_img_base_link+e.order_item[0].product.thumbnail_img}}),t._v(" "),r("p",[t._v("  "+t._s(e.order_item[0].product.name.substring(0,25).concat("...")+"-"+e.order_item[0].product.product_code)+"  ")])]):t._e()]),t._v(" "),r("td",{staticClass:"two-percent"},[t._v(t._s(e.invoice_no))]),t._v(" "),r("td",{staticClass:"two-percent"},[r("strong",[t._v("\n                          Total:\n                          "+t._s(parseInt(e.total)+parseInt(e.shipping_cost)+parseInt(e.additional_charge)-parseInt(e.discount))+"\n                        ")]),t._v(" "),r("strong",[t._v(" Paid: "+t._s(parseInt(e.paid))+" ")])]),t._v(" "),r("td",{staticClass:"two-percent"},[1==e.order_type?r("p",[t._v("customer")]):t._e(),t._v(" "),2==e.order_type?r("p",[t._v("\n                          Admin ||\n                          "),r("strong",[t._v(t._s(e.create_admin.name))])]):t._e(),t._v(" "),3==e.order_type?r("p",[t._v("\n                          Whole sale ||\n                          "),r("strong",[t._v(t._s(e.create_admin.name))])]):t._e()]),t._v(" "),r("td",{staticClass:"two-percent"},[1==e.status?r("span",{staticClass:"badge"},[t._v("New")]):t._e(),t._v(" "),2==e.status?r("span",{staticClass:"badge"},[t._v("Pending")]):t._e(),t._v(" "),3==e.status?r("span",{staticClass:"badge badge-success"},[t._v("Approved")]):t._e(),t._v(" "),4==e.status?r("span",{staticClass:"badge badge-success"},[t._v("Shipment")]):t._e(),t._v(" "),5==e.status?r("span",{staticClass:"badge badge-warning"},[t._v("Delivered")]):t._e(),t._v(" "),6==e.status?r("span",{staticClass:"badge badge-danger"},[t._v("Cancel")]):t._e(),t._v(" "),7==e.status?r("span",{staticClass:"badge badge-danger"},[t._v("Return")]):t._e()]),t._v(" "),r("td",{staticClass:"two-percent"},[t._v(t._s(e.created_at))]),t._v(" "),r("td",[2==e.status||1==e.status||6==e.status?r("button",{staticClass:"btn btn-sm btn-success action-btn",on:{click:function(r){return t.approved(e,o)}}},[t._v("\n                          Approved\n                        ")]):t._e(),t._v(" "),1==e.status||7==e.status||2==e.status?r("button",{staticClass:"btn btn-sm btn-info action-btn",on:{click:function(r){return t.pending(e,o)}}},[t._v("\n                          Pending\n                        ")]):t._e(),t._v(" "),4==e.status?r("button",{staticClass:"btn btn-sm btn-success action-btn",on:{click:function(r){return t.delivered(e,o)}}},[t._v("\n                          Deliverd\n                        ")]):t._e(),t._v(" "),1==e.status||2==e.status||3==e.status?r("button",{staticClass:"btn btn-sm btn-danger action-btn",on:{click:function(r){return t.cancel(e,o)}}},[t._v("\n                          Cancel\n                        ")]):t._e(),t._v(" "),4==e.status?r("button",{staticClass:"btn btn-sm btn-danger action-btn",on:{click:function(r){return t.returnOrder(e,o)}}},[t._v("\n                          Return\n                        ")]):t._e(),t._v(" "),r("router-link",{staticClass:"btn btn-sm btn-warning",staticStyle:{width:"70px"},attrs:{to:{name:"orderEdit",params:{id:e.id}}}},[t._v("Edit")])],1),t._v(" "),r("td",{staticStyle:{width:"1%"}},[e.courier_id?r("small",[t._v(t._s(e.courier.name))]):t._e(),t._v(" "),r("span",{staticClass:"badge",attrs:{if:"order.memo_no"}},[t._v(t._s(e.memo_no))]),t._v(" "),r("i",{staticClass:"fa fa-edit",on:{click:function(r){return t.courierModal(e,o)}}})]),t._v(" "),r("td",[r("button",{staticClass:"btn ",on:{click:function(r){return t.comment(e.id)}}},[t._v("Comment")]),t._v(" "),e.order_note.length>0?r("span",{staticStyle:{"font-size":"12px"}},[t._v(" "+t._s(e.order_note[0].note)+" ")]):t._e()])])}))],2)])]),t._v(" "),r("div",{staticClass:"box-footer"},[r("div",{staticClass:"row"},[r("div",{staticClass:"col-lg-6"},[r("pagination",{attrs:{data:t.orders,limit:5},on:{"pagination-change-page":t.ordersList}})],1),t._v(" "),r("div",{staticClass:"col-lg-6 mt-1",staticStyle:{"margin-top":"25px","text-align":"right"}},[r("p",[t._v("\n                      Showing\n                      "),r("strong",[t._v(t._s(t.orders.from))]),t._v(" to\n                      "),r("strong",[t._v(t._s(t.orders.to))]),t._v(" of total\n                      "),r("strong",[t._v(t._s(t.orders.total))]),t._v(" entries\n                    ")])])])])])])])])])]),t._v(" "),r("modal",{attrs:{name:"example",width:400,height:300}},[r("div",{staticClass:"card"},[r("div",{staticClass:"card-body"},[r("form",{on:{submit:function(e){return e.preventDefault(),t.OrderCourier(e)}}},[r("div",{staticClass:"form-group"},[r("label",[t._v("Courier")]),t._v(" "),r("select",{directives:[{name:"model",rawName:"v-model",value:t.courier.courier_id,expression:"courier.courier_id"}],staticClass:"form-control",attrs:{name:""},on:{change:function(e){var r=Array.prototype.filter.call(e.target.options,(function(t){return t.selected})).map((function(t){return"_value"in t?t._value:t.value}));t.$set(t.courier,"courier_id",e.target.multiple?r:r[0])}}},[r("option",{attrs:{value:""}},[t._v("Select Courier")]),t._v(" "),t._l(t.couriers,(function(e){return r("option",{domProps:{value:e.id}},[t._v("\n                "+t._s(e.name)+"\n              ")])}))],2)]),t._v(" "),r("div",{staticClass:"form-group"},[r("label",[t._v("Memo_number")]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.courier.memo_no,expression:"courier.memo_no"}],staticClass:"form-control",attrs:{placeholder:"Enter memo number"},domProps:{value:t.courier.memo_no},on:{input:function(e){e.target.composing||t.$set(t.courier,"memo_no",e.target.value)}}})]),t._v(" "),r("button",{staticClass:"btn btn-success btn-block",attrs:{type:"submit"}},[t._v("submit")])])])])]),t._v(" "),r("modal",{attrs:{name:"orderNote",width:600,height:500}},[r("div",{staticClass:"card",staticStyle:{padding:"20px"}},[r("div",{staticClass:"card-body"},[r("form",{on:{submit:function(e){return e.preventDefault(),t.addOrderComment(e)}}},[r("div",{staticClass:"form-group",staticStyle:{display:"flex","margin-top":"20px"}},[r("label",[t._v("Add Note")]),t._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:t.order_note,expression:"order_note"}],staticClass:"form-control",staticStyle:{height:"50px"},attrs:{type:"text",placeholder:"write note",required:""},domProps:{value:t.order_note},on:{input:function(e){e.target.composing||(t.order_note=e.target.value)}}}),t._v(" "),r("button",{staticClass:"btn btn-success",attrs:{type:"submit"}},[t._v("Update Note")])])]),t._v(" "),r("div",{staticClass:"box-body"},[r("table",{staticClass:"table table-bordered table-striped table-hover "},[r("thead",[r("tr",[r("th",[t._v("Created At")]),t._v(" "),r("th",[t._v("Note")]),t._v(" "),r("th",[t._v("Created By")])])]),t._v(" "),r("tbody",t._l(t.order_note_list,(function(e,o){return r("tr",{key:o},[r("td",[t._v(" "+t._s(t.dateFormatter(e.created_at))+" ")]),t._v(" "),r("td",[t._v(" "+t._s(e.note))]),t._v(" "),r("td",[t._v(" "+t._s(e.admin_name)+" ")])])})),0)])])])])])],1)}),[],!1,null,"12f56f9d",null);e.default=a.exports},195:function(t,e,r){var o=r(734);"string"==typeof o&&(o=[[t.i,o,""]]);var s={hmr:!0,transform:void 0,insertInto:void 0};r(5)(o,s);o.locals&&(t.exports=o.locals)},733:function(t,e,r){"use strict";var o=r(195);r.n(o).a},734:function(t,e,r){(t.exports=r(4)(!1)).push([t.i,"\n.orders-heading[data-v-12f56f9d] {\n    font-size: 22px;\n    text-transform: uppercase;\n    border-bottom: 2px solid #000;\n    margin-bottom: 10px;\n    margin-left: 30%;\n}\n\n\n\n",""])}}]);