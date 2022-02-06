<?php

namespace App\Http\Controllers\Admin;

use App\Models\Banner;
use App\Models\OfferBanner;
use Illuminate\Http\Request;
use App\Models\SaleCampaign ;
use App\Models\BuyOneGetOneOffer;
use App\Http\Controllers\Controller;

class SaleCampaignController extends Controller
{



public function get_sale_campaign_list() {

        $sale_campaigns = SaleCampaign::orderBy('id','desc')->get();
            return response()->json([
                'status' => "OK",
                 'sale_campaigns' => $sale_campaigns,
            ]);

}



public function store_sale_campaign(Request $request)
 {

      $validatedData = $request->validate([
          'name'  => 'required',
          'expired_date'  => 'required',
          'border_width'  => 'required',

      ]);

      $sale_campaign =new SaleCampaign();
      $sale_campaign->name=$request->name;
      $sale_campaign->expired_date=$request->expired_date;
      $sale_campaign->background_color=$request->background_color;
      $sale_campaign->border_color=$request->border_color;
      $sale_campaign->border_width=$request->border_width;
      $sale_campaign->order_by=$request->order_by;
      $sale_campaign->status=1;

      if ($sale_campaign->save()) {
          return response()->json([
              'status' => 'SUCCESS',
              'message' => 'Sale capmaign addedsuccessfully',
          ]);
      }else{
          return response()->json([
              'status' => 'FAIL',
              'message' => 'Expire date is required and something went wrong',
          ]);
      }
}




public function active_sale_campaign($id) {

    $sale_campaign = SaleCampaign::findOrFail($id);
    $sale_campaign->status=1 ;
    if ($sale_campaign->save()) {
        return response()->json([
            "status" => "OK",
            "message" => "this campaign activated",
        ]);
    }

}




public function de_active_sale_campaign($id) {

    $sale_campaign = SaleCampaign::findOrFail($id);
    $sale_campaign->status=0 ;
    if ($sale_campaign->save()) {
        return response()->json([
            "status" => "OK",
            "message" => "this campaign de-activated",
        ]);
     }
  }




    public function destroy_sale_campaign($id) {

            $sale_campaign = SaleCampaign::findOrFail($id);
            if ($sale_campaign->delete()) {
                return response()->json([
                    "status" => "OK",
                    "message" => "this campaign destroyed",
                ]);
        }
    }






    public function get_edit_campaign($id) {

        $sale_campaign = SaleCampaign::findOrFail($id);
            return response()->json([
                'status' => "OK",
                'sale_campaign'=>$sale_campaign,
            ]);

        }





  public function update_sale_campaign(Request $request,$id){

    $validatedData = $request->validate([
        'name'  => 'required',
        'expired_date'  => 'required',
        'border_width'  => 'required',

    ]);

    $sale_campaign = SaleCampaign::findOrFail($id);
    $sale_campaign->name=$request->name;
    $sale_campaign->expired_date=$request->expired_date;
    $sale_campaign->background_color=$request->background_color;
    $sale_campaign->border_color=$request->border_color;
    $sale_campaign->border_width=$request->border_width;
    $sale_campaign->order_by=$request->order_by;
    $sale_campaign->status=1;

    if ($sale_campaign->save()) {
        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'Sale capmaign updated successfully',
        ]);
    }else{
        return response()->json([
            'status' => 'FAIL',
            'message' => 'Expire date is required and something went wrong',
        ]);
     }

 }





     //buy one get one is here
     public function get_buy_one_get_one_campaign(){

            $campaign = BuyOneGetOneOffer::latest()->take(1)->first();
            if ($campaign) {
                return response()->json([
                    "status" => "OK",
                    "campaign" => $campaign ,
                ]);
            }

        }


     public function edit_buy_one_get_one_campaign(Request $request,$id){

         $validatedData = $request->validate([
                'product_code' => 'required',
            ]);

            $campaign = BuyOneGetOneOffer::findOrFail($id);
            $campaign->product_code=$request->product_code;
            if ($request->hasFile('banner') ) {
                $banner_path = $request->file('banner')->store('images/buy_one_get_one', 'public');
                $campaign->banner = $banner_path;
            }
            if ($campaign->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'Campaign updated successfully',
                ]);
            }

        }





     public function get_banner(){

            $campaign = Banner::latest()->first();
            if ($campaign) {
                return response()->json([
                    "status" => "OK",
                    "campaign" => $campaign ,
                ]);
            }

        }



    public function update_banner(Request $request,$id){
            // return $request->all();
            $campaign = Banner::findOrFail($id);
            if ($request->besie_slider_banner=='yes') {
                $campaign->beside_slider_banner_url_1=$request->beside_slider_banner_url_1;
                $campaign->beside_slider_banner_url_2=$request->beside_slider_banner_url_2;
                $campaign->beside_slider_banner_status=$request->beside_slider_banner_status;

                if ($request->hasFile('beside_slider_banner_1') ) {
                    $banner_path = $request->file('beside_slider_banner_1')->store('images/add_banner', 'public');
                    $campaign->beside_slider_banner_1 = $banner_path;
                }

                if ($request->hasFile('beside_slider_banner_2') ) {
                    $banner_path = $request->file('beside_slider_banner_2')->store('images/add_banner', 'public');
                    $campaign->beside_slider_banner_2 = $banner_path;
                }

            }else{
                $campaign->under_new_arrival_banner_url_1=$request->under_new_arrival_banner_url_1;
                $campaign->under_new_arrival_banner_url_2=$request->under_new_arrival_banner_url_2;
                $campaign->under_new_arrival_banner_status=$request->under_new_arrival_banner_status;

                if ($request->hasFile('under_new_arrival_banner_1') ) {
                        $banner_path = $request->file('under_new_arrival_banner_1')->store('images/add_banner', 'public');
                        $campaign->under_new_arrival_banner_1 = $banner_path;
                 }

                if ($request->hasFile('under_new_arrival_banner_2') ) {
                        $banner_path = $request->file('under_new_arrival_banner_2')->store('images/add_banner', 'public');
                        $campaign->under_new_arrival_banner_2 = $banner_path;
                }
            }

            $campaign->save();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'updated successfully',
            ]);
    }






   public  function offerBanners(){

        $banners= OfferBanner::orderBy('id','DESC')->get();
        return response()->json([
            "status" => "OK",
            "banners" => $banners ,
        ]);
    }



    public function addOfferBanner(Request $request){

        $validatedData = $request->validate([
            'url'  => 'required',
            // 'quate'  => 'required',
            // 'short_description'  => 'required',
        ]);

           $offer= new OfferBanner ();
           $offer->url=$request->url;
        //    $offer->quate=$request->quate;
        //    $offer->short_description=$request->short_description;
           $offer->status=1;
           if ($request->hasFile('image') ) {
                $image_path = $request->file('image')->store('images/offer_banner', 'public');
                $offer->image = $image_path;
            }
           $offer->save();

            return response()->json([
                "status" => "OK",
                "message" => 'added successfully ' ,
            ]);



    }




    public function updateOfferBanner(Request $request,$id){

            $validatedData = $request->validate([
                'url'  => 'required',
                // 'quate'  => 'required',
                // 'short_description'  => 'required',
            ]);

           $offer= OfferBanner::findOrFail($id);
           $offer->url=$request->url;
        //    $offer->quate=$request->quate;
        //    $offer->short_description=$request->short_description;
           if ($request->hasFile('image') ) {
                $image_path = $request->file('image')->store('images/offer_banner', 'public');
                $offer->image = $image_path;
            }
           $offer->save();
            return response()->json([
                "status" => "OK",
                "message" => 'updated successfully ' ,
            ]);


    }


    public function getOfferBanner($id){

        $offer= OfferBanner::findOrFail($id);
            return response()->json([
                "offer" => $offer ,
            ]);

    }

    public function activeOfferBanner($id){

        $offer= OfferBanner::findOrFail($id);
        $offer->status=1 ;
        if ($offer->save()) {

            return response()->json([
                "status" => "OK",
                "message" => 'This offer activated ' ,
            ]);
        }
    }


    public function deactiveOfferBanner($id){

        $offer= OfferBanner::findOrFail($id);
        $offer->status=0 ;
        if ($offer->save()) {
            return response()->json([
                "status" => "OK",
                "message" => 'This offer de-activated ' ,
            ]);
        }
    }




    public function destroyOfferBanner($id){

        $offer= OfferBanner::findOrFail($id);
        if ($offer->delete()) {
            return response()->json([
                "status" => "OK",
                "message" => 'removed ' ,
            ]);
        }
    }





}









