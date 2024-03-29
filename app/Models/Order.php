<?php

namespace App\Models;

use Carbon\Carbon;
use App\Models\Courier;
use Exception;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class Order extends Model
{

   public function getCreatedAtAttribute($attr) {
        return Carbon::parse($attr)->format('d-m-Y - h:ia');
    }
 public function customer()
    {
        return $this->belongsTo('App\Models\Customer','customer_id');
    }

    public function createAdmin()
    {
        return $this->belongsTo('App\Models\Admin','create_admin_id')->select(['id','name','image','email','status']);
    }

    public function courier()
    {
        return $this->belongsTo('App\Models\Courier','courier_id');
    }
    public function city()
    {
        return $this->belongsTo('App\Models\City','city_id');
    }
      public function sub_city()
    {
        return $this->belongsTo('App\Models\SubCity','sub_city_id');
    }

    public function orderItem(){
      return  $this->hasMany('App\Models\OrderItem','order_id');

    }

    public  function OrderNote(){

      return  $this->hasMany('App\Models\OrderNote','order_id') ;

    }

    public function resellerOrderDetails(){
      return $this->hasOne('App\Models\ResellerOrderDetails','order_id');
    }

    public function approvedBy(){
        return $this->belongsTo('App\Models\Admin','approved_admin_id')->select(['id','name','image','email','status']);
    }
    public function orderBarcode(){
        return $this->hasOne('App\Models\OrderBarcode','order_id');
    }
    public function reseller(){
        return $this->belongsTo('App\Models\Reseller','reseller_id');
    }

    public static function ordersAll($request){

          $paginate=$request->item??30;
          if($request->status!="all"){
                if($request->type=="all"){
                 $orders=Order::orderBy('id','DESC')
                            ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                            ->where('status',$request->status)
                            ->paginate($paginate);
              }else{
                $orders=Order::orderBy('id','DESC')
                             ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                            ->where('status',$request->status)
                            ->where('order_type',$request->type)
                            ->paginate($paginate);
              }
            }else{
               if($request->type=="all"){
                 $orders=Order::orderBy('id','DESC')
                                 ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                                ->paginate($paginate);
              }else{
                $orders=Order::orderBy('id','DESC')->with(['createAdmin','courier','OrderNote','orderItem.product'])->where('order_type',$request->type)->paginate($paginate);
              }
            }
            return \response()->json([
                'status'=>'SUCCESS',
                'orders'=>$orders,
                'order_count'=> self::orderCount(),
            ]);
    }

    public static function orderFilterWithStartDate($request){

          $paginate=$request->item??10;
             if($request->status!="all"){
                if($request->type=="all"){
                 $orders=Order::orderBy('id','DESC')
                           ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                            ->where('status',$request->status)
                            ->whereDate('created_at','=',$request->start_date)
                            ->paginate($paginate);
              }else{
                $orders=Order::orderBy('id','DESC')
                            ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                            ->where('status',$request->status)
                            ->where('order_type',$request->type)
                            ->whereDate('created_at','=',$request->start_date)
                            ->paginate($paginate);
              }
            }else{

               if($request->type=="all"){
                 $orders=Order::orderBy('id','DESC')
                                 ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                                ->whereDate('created_at','=',$request->start_date)
                                ->paginate($paginate);
              }else{
                $orders=Order::orderBy('id','DESC')->with(['createAdmin','courier','OrderNote','orderItem.product'])
                               ->where('order_type',$request->type)
                               ->whereDate('created_at','=',$request->start_date)
                               ->paginate($paginate);
              }
            }
             return \response()->json([
                'status'=>'SUCCESS',
                'orders'=>$orders,
                'order_count'=> self::orderCount(),
            ]);
    }

    public static function orderFilterWithStartAndEndDate($request){

        $paginate=$request->item??10;
             if($request->status!="all"){
                if($request->type=="all"){
                 $orders=Order::orderBy('id','DESC')
                            ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                            ->where('status',$request->status)
                            ->whereDate('created_at','>=',$request->start_date)
                            ->whereDate('created_at','<=',$request->end_date)
                            ->paginate($paginate);
              }else{
                $orders=Order::orderBy('id','DESC')
                            ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                            ->where('status',$request->status)
                            ->where('order_type',$request->type)
                            ->whereDate('created_at','>=',$request->start_date)
                            ->whereDate('created_at','<=',$request->end_date)
                            ->paginate($paginate);
              }
            }else{

               if($request->type=="all"){
                 $orders=Order::orderBy('id','DESC')
                                 ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                                ->whereDate('created_at','>=',$request->start_date)
                                 ->whereDate('created_at','<=',$request->end_date)
                                ->paginate($paginate);
              }else{
                $orders=Order::orderBy('id','DESC')->with(['createAdmin','courier','OrderNote','orderItem.product'])
                               ->where('order_type',$request->type)
                               ->whereDate('created_at','>=',$request->start_date)
                              ->whereDate('created_at','<=',$request->end_date)
                               ->paginate($paginate);
              }
            }
             return \response()->json([
                'status'=>'SUCCESS',
                'orders'=>$orders,
                'order_count'=> self::orderCount(),
            ]);
    }

     public static function orderFilterWithCourier($request){
         $paginate=$request->item??10;
        if(!empty($request->start_date) && empty($request->end_date)){

            if($request->status!="all"){
                $orders=Order::orderBy('id','DESC')
                            ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                            ->where('status',$request->status)
                            ->whereDate('created_at','=',$request->start_date)
                            ->where('courier_id',$request->courier_id)
                            ->paginate($paginate);
              }else{
               $orders=Order::orderBy('id','DESC')->with(['createAdmin','courier','OrderNote','orderItem.product'])
                            ->whereDate('created_at','=',$request->start_date)
                            ->where('courier_id',$request->courier_id)
                            ->paginate($paginate);
             }

        }
        elseif(!empty($request->start_date) && !empty($request->end_date)){
              if($request->status!="all"){
                $orders=Order::orderBy('id','DESC')
                             ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                            ->where('status',$request->status)
                            ->whereDate('created_at','>=',$request->start_date)
                            ->whereDate('created_at','<=',$request->end_date)
                            ->where('courier_id',$request->courier_id)
                            ->paginate($paginate);
              }else{
               $orders=Order::orderBy('id','DESC')->with(['createAdmin','courier','OrderNote','orderItem.product'])
                            ->whereDate('created_at','>=',$request->start_date)
                            ->whereDate('created_at','<=',$request->end_date)
                            ->where('courier_id',$request->courier_id)
                            ->paginate($paginate);
             }

        }else{
            if($request->status!="all"){
                $orders=Order::orderBy('id','DESC')
                             ->with(['createAdmin','courier','OrderNote','orderItem.product'])
                            ->where('status',$request->status)
                            ->where('courier_id',$request->courier_id)
                            ->paginate($paginate);
              }else{
               $orders=Order::orderBy('id','DESC')->with(['createAdmin','courier','OrderNote','orderItem.product'])
                             ->where('courier_id',$request->courier_id)
                            ->paginate($paginate);
             }
        }
        return \response()->json([

                'status'=>'SUCCESS',
                'orders'=>$orders,
                'order_count'=> self::orderCount(),
            ]);
    }

      public static function SendConfirmationMessage($order){

          $amount = ($order->total + $order->shipping_cost + $order->additional_charge) - ($order->discount + $order->paid ) ;
          $contacts = $order->customer_phone;
          $sms = $order->customer_name.','. ' আপনার অর্ডারটি সফলভাবে গ্রহণ করা হয়েছে। ইনভয়েস নাম্বার-'.$order->invoice_no. ';' .' বিলের পরিমান-'.$amount.'/-টাকা। Hotline:- 01648880217'
          .' ZEONS PARK';
          return self::smsApi($contacts,$sms);
    }


     public static function sendOrderPendingMessage($order){
        $amount = ($order->total + $order->shipping_cost + $order->additional_charge) - ($order->discount + $order->paid ) ;
        $contacts = $order->customer_phone;
        $sms = $order->customer_name.','. ' আপনার অর্ডারটি কনফার্ম করার জন্য পার্শিয়াল পেমেন্টের জন্য অনুরোধ করা হলো। অনুগ্রহ করে 01730-257623 বিকাশ পেমেন্ট অথবা নগদ সেন্ড মানির মাধ্যমে আপনার পার্শিয়াল অর্থ প্রদান করুন।'.' Invoice No '.$order->invoice_no . 'ধন্যবাদ।'
        .' "ZEONS PARK"';
        return self::smsApi($contacts,$sms);
    }

   public static function smsApi($contacts,$sms){

        $api_key = "C20089166176335073c5d9.63504545";
        $senderid = '8809612436466';
        $URL = "http://bulk.fmsms.biz/smsapi?api_key=" . urlencode($api_key) . "&type=text&contacts=" . urlencode($contacts) . "&senderid=" . urlencode($senderid) . "&msg=" . urlencode($sms);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $URL);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POST, 0);
        try {
            $output = $content = curl_exec($ch);
         //  print_r($output);
        } catch (Exception $ex) {
           return back();
        }
        return $output;

   }

    public static function sendShipmentMenssage($order){

      // find courier and send shipment  message to customer
        $shipment=Courier::where('id',$order->courier_id)->first();
        $courier_name=$shipment->name;
        $memo_no=$order->memo_no;
        $total= (($order->total + $order->shipping_cost) - $order->paid ) ;
        $customer_name=$order->customer_name;
        $contacts=$order->customer_phone;
        // $sms = 'Assalamualikum Dear ' . $customer_name .'.'. ' Your order has been shipped to '.$courier_name.' courier.'.' Your memo number is ' .$memo_no.' and payable amount '.$total.' Tk.'.' Thanks by smartdealbd.com';
        $sms = $customer_name .'.'. ' আপনার অর্ডারটি প্রেরণ করা হয়েছে '.$courier_name.' কুরিয়ার.'.' আপনার ইনভয়েস নাম্বার' .$memo_no.' পরিশোধনীয় টাকা '.$total.' Tk.'.' ধন্যবাদান্তে zeonspark.com';
        $sms = $customer_name .'.'. ' আপনার অর্ডারটি প্রেরণ করা হয়েছে '.$courier_name.' কুরিয়ার.'.' আপনার ইনভয়েস নাম্বার
        ' .$memo_no.' পরিশোধনীয় টাকা '.$total.' Tk.'.' ধন্যবাদান্তে dreambuzz.shop';
        // put here your dynamic message text here
       return self::smsApi($contacts,$sms);
    }



    public static function adminOrderAnalysis(){

      $admin_order=array();
      $admin_order['today_create']=Order::whereNotNull('create_admin_id')
                         ->where('created_at', '>=', Carbon::today()->startOfDay())
                         ->where('created_at', '<=', Carbon::today()->endOfDay())
                         ->select('create_admin_id',DB::raw('count(*) as total'),DB::raw('SUM(total) as total_amount') )
                         ->groupBy('create_admin_id')
                         ->orderBy('total','DESC')
                         ->with('createAdmin')
                         ->get();

      $admin_order['today_approved']=Order::where('status',3)->whereDate('approved_date',Carbon::today()->format('Y-m-d'))
                         ->select('approved_admin_id',DB::raw('count(*) as total'),DB::raw('SUM(total) as total_amount') )
                         ->groupBy('approved_admin_id')
                         ->orderBy('total','DESC')
                         ->with('approvedBy')
                         ->get();

      $admin_order['yesterday_create']=Order::whereNotNull('create_admin_id')
                  ->where('created_at', '>=', Carbon::yesterday()->startOfDay())
                  ->where('created_at', '<=', Carbon::yesterday()->endOfDay())
                  ->select('create_admin_id',DB::raw('count(*) as total'),DB::raw('SUM(total) as total_amount'))
                  ->groupBy('create_admin_id')
                  ->orderBy('total','DESC')
                  ->with('createAdmin')
                  ->get();

      $admin_order['yesterday_approved']=Order::where('status',3)->whereDate('approved_date',Carbon::yesterday()->format('Y-m-d'))
                    ->select('approved_admin_id',DB::raw('count(*) as total'),DB::raw('SUM(total) as total_amount') )
                    ->groupBy('approved_admin_id')
                    ->orderBy('total','DESC')
                    ->with('approvedBy')
                    ->get();

      $admin_order['this_week_create']=Order::whereNotNull('create_admin_id')
                  ->where('created_at', '>=', Carbon::today()->subDays('7')->startOfDay())
                  ->where('created_at', '<=', Carbon::today()->endOfDay())
                  ->select('create_admin_id',DB::raw('count(*) as total'),DB::raw('SUM(total) as total_amount'))
                  ->groupBy('create_admin_id')
                  ->orderBy('total','DESC')
                  ->with('createAdmin')
                  ->get();

      $admin_order['this_week_approved']=Order::where('status',3)
                                      ->whereNotNull('approved_admin_id')
                                     ->where('created_at', '>=', Carbon::today()->subDays('30')->startOfDay())
                                     ->where('created_at', '<=', Carbon::today()->endOfDay())
                                     ->select('approved_admin_id',DB::raw('count(*) as total'),DB::raw('SUM(total) as total_amount') )
                                     ->groupBy('approved_admin_id')
                                     ->orderBy('total','DESC')
                                     ->with('approvedBy')
                                     ->get();

      $admin_order['this_month_create']=Order::whereNotNull('create_admin_id')
                  ->where('created_at', '>=', Carbon::today()->subDays('30')->startOfDay())
                  ->where('created_at', '<=', Carbon::today()->endOfDay())
                  ->select('create_admin_id',DB::raw('count(*) as total'),DB::raw('SUM(total) as total_amount'))
                  ->groupBy('create_admin_id')
                  ->orderBy('total','DESC')
                  ->with('createAdmin')
                  ->get();

      $admin_order['this_month_approved']=Order::where('status',3)
                                    ->whereNotNull('approved_admin_id')
                                    ->where('created_at', '>=', Carbon::today()->subDays('30')->startOfDay())
                                    ->where('created_at', '<=', Carbon::today()->endOfDay())
                                    ->select('approved_admin_id',DB::raw('count(*) as total'),DB::raw('SUM(total) as total_amount') )
                                    ->groupBy('approved_admin_id')
                                    ->orderBy('total','DESC')
                                    ->with('approvedBy')
                                    ->get();


       return $admin_order;

    }

    public static function topSellingProductToday(){
      $products=OrderItem::where('created_at', '>=', Carbon::today()->startOfDay())
                         ->where('created_at', '<=', Carbon::today()->endOfDay())
                         ->select('product_id',DB::raw('count(*) as total'))
                         ->groupBy('product_id')
                         ->orderBy('total','DESC')
                         ->with('product:id,name,slug,product_code,thumbnail_img')
                         ->get();

     return $products;
    }

public static function orderCount(){
       $order=array();
        $order['total']=Order::count();

        $order['new_order']=Order::where('status',1)
                                  ->count();
        $order['pending_order']=Order::where('status',2)
                                ->count();
        $order['approved_order']=Order::where('status',3)
                                 ->count();
        $order['shipment_order']=Order::where('status',4)
                                  ->count();
        $order['delivered_order']=Order::where('status',5)
                                      ->count();
        $order['return_order']=Order::where('status',7)
                                   ->count();
        $order['cancel_order']=Order::where('status',6)
                                ->count();
        $order['wholesale']=Order::where('status',6)
        ->count();
       return $order;
}

public static function profite(){
  $profite=array();
  $profite['today']=0;
  $today_order_items=OrderItem::where('created_at','>=',Carbon::today()->startOfDay())
                              ->where('created_at','<=',Carbon::today()->endOfDay())
                              ->get()
                              ->map(function($value){
                                 return $value->price*$value->quantity;
                                });




  return  $today_order_items;
}

public static function due(){
  $due=[];
  $due['office_sale_due']=CustomerDue::where('status',0)->sum('amount');
   $shipment_order=Order::where('status',4)->get();
   $due['order_due']=0;
   $due['whole_sale_due']=0;
   foreach($shipment_order as $item){
    // return $item->order_type;
      if($item->order_type!=3){
        $due['order_due']+=($item->total+$item->shipping_cost)-($item->paid+$item->discount);
      }
      if($item->order_type==3){
        $due['whole_sale_due']+=($item->total+$item->shipping_cost)-($item->paid+$item->discount);
      }
   }
   $purchases=Purchase::all();

   $product_supplier_id=Supplier::where('status',1)->select('id')->pluck('id');
   $fabrice_supplier_id=Supplier::where('status',2)->select('id')->pluck('id');
   $product_purchase=Purchase::where('status',1)->sum('total');
   $fabrice_purchase=Purchase::where('status',2)->sum('total');
   $product_purchase_supplier_paid_amount=SupplierPayment::whereIn('supplier_id',$product_supplier_id)->sum('amount');
   $fabrics_purchase_supplier_paid_amount=SupplierPayment::whereIn('supplier_id',$fabrice_supplier_id)->sum('amount');
   $due['product_supplier']=$product_purchase-$product_purchase_supplier_paid_amount;
   $due['fabrics_supplier']=$fabrice_purchase-$fabrics_purchase_supplier_paid_amount;
   return $due;
  }


  //this method for analysir all type of order and sale
  //1.order
  //2.whole sale
  //3.office sale, etc
 public static function analysis(){

    $analysis=[];
   $analysis['order']=self::OrderAnalysis();
   $analysis['wholesale']=self::WholeSaleAnalysis();
   $analysis['sale']=self::SaleAnalysis();
   return $analysis;
  }

  public static function OrderAnalysis(){

    //get today order
    $today_orders=Order::where('created_at','>=',Carbon::today()->startOfDay())
                          ->where('created_at','<=',Carbon::today()->endOfDay())
                          ->where('status','!=',6)
                           ->where('order_type','!=',3)
                          ->get();

    //get yesterday order
    $yesterday_orders=Order::where('created_at','>=',Carbon::yesterday()->startOfDay())
                          ->where('created_at','<=',Carbon::yesterday()->endOfDay())
                          ->where('status','!=',6)
                           ->where('order_type','!=',3)
                          ->get();
   //get this week order
   $this_week_orders=Order::where('created_at','>=',Carbon::today()->subDays('7')->startOfDay())
                          ->where('created_at','<=', Carbon::today()->endOfDay())
                          ->where('status','!=',6)
                           ->where('order_type','!=',3)
                          ->get();

   //get this month order
   $this_month_orders=Order::where('created_at','>=',Carbon::today()->subDays('30')->startOfDay())
                          ->where('created_at','<=', Carbon::today()->endOfDay())
                          ->where('status','!=',6)
                          ->where('order_type','!=',3)
                          ->get();


$analysis=[];
$product_quantity_today=0;
$product_quantity_yesterday=0;
$product_quantity_week=0;
$product_quantity_month=0;

$analysis['today']=[];
$analysis['yesterday']=[];
$analysis['this_week']=[];
$analysis['this_month']=[];


//today order summary
  foreach($today_orders as $today_order){
       $product_quantity_today+=OrderItem::where('order_id',$today_order->id)->sum('quantity');
       $analysis['today']=[
          'order_quantity'=>$today_orders->count(),
          'product_quanity'=>$product_quantity_today,
          'amount'=>$today_orders->sum('total')-$today_orders->sum('discount')
         ];
    }


//yesterday order summary
  foreach($yesterday_orders as $yesterday_order){
       $product_quantity_yesterday+=OrderItem::where('order_id',$yesterday_order->id)->sum('quantity');
       $analysis['yesterday']=[
          'order_quantity'=>$yesterday_orders->count(),
          'product_quanity'=>$product_quantity_yesterday,
          'amount'=>$yesterday_orders->sum('total')-$yesterday_orders->sum('discount')
         ];
    }

//this week  order summary
     foreach($this_week_orders as $this_week_order){
       $product_quantity_week += OrderItem::where('order_id',$this_week_order->id)->sum('quantity');
       $analysis['this_week']=[
          'order_quantity'=>$this_week_orders->count(),
          'product_quanity'=>$product_quantity_week,
          'amount'=>$this_week_orders->sum('total')-$this_week_orders->sum('discount')
         ];
    }

//this month  order summary
     foreach($this_month_orders as $this_month_order){
       $product_quantity_month += OrderItem::where('order_id',$this_month_order->id)->sum('quantity');
       $analysis['this_month']=[
          'order_quantity'=>$this_month_orders->count(),
          'product_quanity'=>$product_quantity_month,
          'amount'=>$this_month_order->sum('total')-$this_month_order->sum('discount')
         ];
    }

    return $analysis;

  }



  public static function WholeSaleAnalysis(){

    //get today _whole_sales
    $today_whole_sales=Order::where('created_at','>=',Carbon::today()->startOfDay())
                          ->where('created_at','<=',Carbon::today()->endOfDay())
                          ->where('status','!=',6)
                           ->where('order_type',3)
                          ->get();

     //get yesterday _whole_sales
    $yesterday_whole_sales=Order::where('created_at','>=',Carbon::yesterday()->startOfDay())
                          ->where('created_at','<=',Carbon::yesterday()->endOfDay())
                          ->where('status','!=',6)
                           ->where('order_type',3)
                          ->get();

   //get this week _whole_sales
   $this_week_whole_sales=Order::where('created_at','>=',Carbon::today()->subDays('7')->startOfDay())
                          ->where('created_at','<=', Carbon::today()->endOfDay())
                          ->where('status','!=',6)
                           ->where('order_type',3)
                          ->get();

   //get this month _whole_sales
   $this_month_whole_sales=Order::where('created_at','>=',Carbon::today()->subDays('30')->startOfDay())
                          ->where('created_at','<=', Carbon::today()->endOfDay())
                          ->where('status','!=',6)
                          ->where('order_type',3)
                          ->get();
//return $this_month_whole_sales->count();

$analysis=[];
$product_quantity_today=0;
$product_quantity_yesterday=0;
$product_quantity_week=0;
$product_quantity_month=0;
$analysis['today']=[];
$analysis['yesterday']=[];
$analysis['this_week']=[];
$analysis['this_month']=[];


//today _whole_sales summary
  foreach($today_whole_sales as $totday_whole_sale){
       $product_quantity_today+=OrderItem::where('order_id',$totday_whole_sale->id)->sum('quantity');
       $analysis['today']=[
          'order_quantity'=>$today_whole_sales->count(),
          'product_quanity'=>$product_quantity_today,
          'amount'=>$today_whole_sales->sum('total')-$today_whole_sales->sum('discount')
         ];
  }

  //yesterday whole sales summary
  foreach($yesterday_whole_sales as $yesterday_whole_sale){
       $product_quantity_yesterday+=OrderItem::where('order_id',$yesterday_whole_sale->id)->sum('quantity');
       $analysis['today']=[
          'order_quantity'=>$yesterday_whole_sales->count(),
          'product_quanity'=>$product_quantity_yesterday,
          'amount'=>$yesterday_whole_sales->sum('total')-$yesterday_whole_sale->sum('discount')
         ];
  }

//this week  _whole_sales summary
     foreach($this_week_whole_sales as $this_week_whole_sale){
       $product_quantity_week += OrderItem::where('order_id',$this_week_whole_sale->id)->sum('quantity');
       $analysis['this_week']=[
          'order_quantity'=>$this_week_whole_sales->count(),
          'product_quanity'=>$product_quantity_week,
          'amount'=>$this_week_whole_sales->sum('total')-$this_week_whole_sales->sum('discount')
         ];
    }

//this month  _whole_sales summary
     foreach($this_month_whole_sales as $this_month_whole_sale){
       $product_quantity_month += OrderItem::where('order_id',$this_month_whole_sale->id)->sum('quantity');
       $analysis['this_month']=[
          'order_quantity'=>$this_month_whole_sales->count(),
          'product_quanity'=>$product_quantity_month,
          'amount'=>$this_month_whole_sales->sum('total')-$this_month_whole_sales->sum('discount')
         ];
    }

    return $analysis;

  }

   public static function SaleAnalysis(){

    //get today sales
    $today_sales=Sale::where('created_at','>=',Carbon::today()->startOfDay())
                        ->where('created_at','<=',Carbon::today()->endOfDay())
                        ->get();

     //get yester sales
    $yesterday_sales=Sale::where('created_at','>=',Carbon::yesterday()->startOfDay())
                        ->where('created_at','<=',Carbon::yesterday()->endOfDay())
                        ->get();

   //get this week _whole_sales
   $this_week_sales=Sale::where('created_at','>=',Carbon::today()->subDays('7')->startOfDay())
                         ->where('created_at','<=', Carbon::today()->endOfDay())
                         ->get();

   //get this month order
   $this_month_sales=Sale::where('created_at','>=',Carbon::today()->subDays('30')->startOfDay())
                          ->where('created_at','<=', Carbon::today()->endOfDay())
                          ->get();


$analysis=[];
$product_quantity_today=0;
$product_quantity_yesterday=0;
$product_quantity_week=0;
$product_quantity_month=0;
$analysis['today']=[];
$analysis['yesterday']=[];
$analysis['this_week']=[];
$analysis['this_month']=[];


//today order summary
  foreach($today_sales as $totday_sale){
       $product_quantity_today+=SaleItems::where('sale_id',$totday_sale->id)->sum('qty');
       $analysis['today']=[
          'order_quantity'=>$today_sales->count(),
          'product_quanity'=>$product_quantity_today,
          'amount'=>$today_sales->sum('total')-$today_sales->sum('discount')
         ];
    }
 //yesterday order summary
 foreach($yesterday_sales as $yesterday_sale){
     $product_quantity_yesterday +=SaleItems::where('sale_id',$yesterday_sale->id)->sum('qty');
     $analysis['yesterday']=[
       'order_quantity' => $yesterday_sales->count(),
       'product_quanity' => $product_quantity_yesterday,
       'amount' => $yesterday_sales->sum('total')-$yesterday_sales->sum('discount'),
     ];
 }
//this week  order summary
     foreach($this_week_sales as $this_week_sale){
       $product_quantity_week += SaleItems::where('sale_id',$this_week_sale->id)->sum('qty');
       $analysis['this_week']=[
          'order_quantity'=>$this_week_sales->count(),
          'product_quanity'=>$product_quantity_week,
          'amount'=>$this_week_sales->sum('total')-$this_week_sales->sum('discount')
         ];
    }

//this month  order summary
     foreach($this_month_sales as $this_monthe_sale){
       $product_quantity_month += SaleItems::where('sale_id',$this_monthe_sale->id)->sum('qty');
       $analysis['this_month']=[
          'order_quantity'=>$this_month_sales->count(),
          'product_quanity'=>$product_quantity_month,
          'amount'=>$this_month_sales->sum('total')-$this_month_sales->sum('discount')
         ];
    }

    return $analysis;

  }




}
