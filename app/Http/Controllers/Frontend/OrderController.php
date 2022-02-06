<?php

namespace App\Http\Controllers\Frontend;


use Picqer;
use App\User;
use App\Models\Order;
use GuzzleHttp\Client;
use App\Models\Product;
use App\Models\Customer;
use App\Models\OrderItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Gloudemans\Shoppingcart\Facades\Cart;


class OrderController extends Controller
{


    public function checkout(Request $request){
     //   return $request->all();
        $validatedData = $request->validate([
            'mobile_no' => 'required|digits:11',
            'name' => 'required ',
            'address' => 'required',
            'city' => 'required',
        ]);

        DB::transaction(function() use($request){

              if ($request->create_account==true) {
                  $user=User::where('mobile_no',$request->mobile_no)->first();
                  //update user city and address
                  if ($user) {
                        $user->city=$request->city;
                        $user->address=$request->address;
                        $user->name=$request->name;
                        $user->email=$request->email ?? null;
                        $user->save();
                  }else{
                        $user=new User();
                        $user->mobile_no=$request->mobile_no;
                        $user->password=Hash::make($request->password);
                        $user->name=$request->name;
                        $user->email=$request->email ?? null;
                        $user->city=$request->city;
                        $user->address=$request->address;
                        $user->status=1;
                        $user->save();
                    }
               }
               $total=Cart::total();
               $discount=0 ;
                if( $request->coupon_discount > 0  ){
                    $discount += intval($request->coupon_discount);
                }
                //save the order
                $id = Order::max('id') ?? 0;
                $invoice = 100 + $id;
                $order=new Order();
                $order->host_name=$request->getHttpHost();
                $order->customer_name=$request->name;
                $order->customer_phone=$request->mobile_no;
                $order->city=$request->city ;
                $order->thana=$request->thana ?? null ;
                $order->customer_address=$request->address;
                $order->invoice_no=$invoice;
                $order->order_type=1;
                $order->shipping_cost=$request->shipping_cost ?? 0;
                $order->discount=$discount ;
                $order->paid=$request->paid ?? 0;
                $order->total=$total;
                $order->status=1;
                $order->note=$request->note ?? null;
                $order->shipping_method=$request->shipping_method ;
                if ($request->billing_address==true) {
                    $order->billing_address_is='other';
                    $order->shipping_name=$request->shipping_name;
                    $order->shipping_phone=$request->shipping_mobile_no;
                    $order->shipping_city=$request->shipping_city ;
                    $order->shipping_thana=$request->shipping_thana ?? null ;
                    $order->shipping_address=$request->shipping_address;
                }else{
                    $order->billing_address_is='same';
                }
                $order->save();

                foreach(Cart::content() as $product){
                    $details=new OrderItem();
                    $details->order_id=$order->id;
                    $details->product_id=$product->id;
                    $details->price=$product->price;
                    $details->quantity=$product->qty;
                    $details->attribute_id=$product->options->attribute_id??null;
                    $details->variant_id=$product->options->variant_id??null;
                    $details->total=$product->qty*$product->price;
                    $details->save();
                }
            //sending message
             $invoice=$order->invoice_no;
             $name=$request->name;
             $number=$order->customer_phone;
            //  Order::SendMessageCustomer($number,$name,$invoice);
             Cart::destroy() ;
        });
             return \response()->json([
                'status'=>'SUCCESS',
                'message'=>'Order submited successfully',
                 'order_id' => Order::max('id') ,
            ]);



    }






// end online payment transaction

    public function onlinePayment($order_id) {

    }



    public function paymentSuccess(){
       $order_id=session()->get('order_id');
       $order=Order::findOrFail($order_id);
       if(!$order){
        return "Sorry!! Error Establish";
       }else{

         $order->paid=( ( $order->total + $order->shipping_cost) - $order->discount ) ;
         $order->save();
            session()->flush('order_id');
            return view('frontend.success');
       }

    }


    public  function paymentFailed(){


    }


// end online payment transaction






    public function orderList(){

       $user=Auth::user();
       $orders=Order::where('customer_phone',$user->mobile_no)->orderBy('id','desc')->paginate(10);
        return response()->json([
            'status'=>'SUCCESS',
            'orders'=>$orders
        ]);

    }


    public function user_order_details($id){

          $order =  Order::findOrFail($id);
          $order_items=OrderItem::where('order_id',$order->id)->with(['product.productVariant.variant.attribute','attribute','variant'])->get();

          return response()->json([
            'status'=>'SUCCESS',
            'order'=>$order,
            'items'=>$order_items
        ]);
    }




    public function customer_invoice_print($id){

           $order_id = explode(',',$id) ;
           $orders = Order::whereIn('id',$order_id)->get();
           return view('frontend.pdf.invoicePrint', \compact('orders'));
    }






}
