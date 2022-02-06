<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\AboutAndContact;
use App\Models\OrderShipmentAndReturnPolicy;
use App\Models\ServiceInfo;

class PageInfoController extends Controller
{


    public function get_about_and_contact_info() {

      $setting = AboutAndContact::latest()->take(1)->first();
        if ($setting) {
            return response()->json([
                "status" => "OK",
                "setting" => $setting ,
            ]);
        }
     }



 public function edit_about_and_contact_info(Request $request,$id)
   {

        $setting = AboutAndContact::findOrFail($id);
        $setting->about_info=$request->about_info;
        $setting->contact_info=$request->contact_info;


        if ($setting->save()) {
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'About and contact information updated successfully',
            ]);
        }

    }




public function get_order_shipment_return_info() {

        $setting = OrderShipmentAndReturnPolicy::latest()->take(1)->first();
        if ($setting) {
            return response()->json([
                "status" => "OK",
                "setting" => $setting ,
            ]);
        }
     }



 public function edit_order_shipment_return_info(Request $request,$id)
   {

        $setting = OrderShipmentAndReturnPolicy::findOrFail($id);
        $setting->order_info=$request->order_info;
        $setting->shipment_info=$request->shipment_info;
        $setting->return_policy=$request->return_policy;

        if ($setting->save()) {
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Order,shipment and return information updated successfully',
            ]);
        }

    }





public function servieInfo() {

        $service = ServiceInfo::latest()->take(1)->first();
            return response()->json([
                "status" => "OK",
                "service" => $service ,
            ]);

     }



 public function updateServiceInfo(Request $request,$id){

        $service = ServiceInfo::findOrFail($id);
        $service->fast_delivery=$request->fast_delivery;
        $service->secure_payment=$request->secure_payment;
        $service->best_prices=$request->best_prices;
        $service->stiching=$request->stiching;
        $service->save();
        
        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'updated successfully',
        ]);

    }




}
