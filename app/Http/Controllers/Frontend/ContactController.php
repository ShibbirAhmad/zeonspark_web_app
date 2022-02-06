<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

use App\Models\Contact ;
use App\Models\PartnerRequest;

class ContactController extends Controller
{
    //


   public function contactCustomer(Request $req) {

      $validator= Validator::make($req->all(),[
         'name' => 'required',
         'email' => 'required|email',
         'message' => 'required',
        ]);

       if (!$validator->fails()) {
                  $contact = new Contact ();
                  $contact->name = $req->name ;
                  $contact->email=$req->email;
                  $contact->message=$req->message;

               if ($contact->save()) {
                  return response()->json([

                     "success" => "OK",
                     "message" => 'Thank you our customer servie will conatct with you' ,
               ]);

           }

         } else {

            return response()->json([
               "success" => "Fail",
               "message" => 'Message not sent try again ' ,
         ]);

         }

   }



   public function partnerRequest(Request $req) {

      $validator= Validator::make($req->all(),[
         'name' => 'required',
         'email' => 'required|email',
         'phone' => 'required|digits:11',
         'address' => 'required',
        ]);

       if (!$validator->fails()) {
                  $contact = new PartnerRequest ();
                  $contact->name = $req->name ;
                  $contact->email = $req->email ;
                  $contact->phone = $req->phone ;
                  $contact->city =  $req->city ;
                  $contact->country = $req->country ;
                  $contact->address = $req->address ;
                  $contact->product_details = $req->product_details ;
                  $contact->save();
                  return response()->json([
                     "success" => "OK",
                     "message" => 'Thanks for your request.' ,
                  ]);
         } else {

            return response()->json([
               "success" => "Fail",
               "message" => 'Message not sent try again ' ,
            ]);

         }

   }






}
