<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\GeneralSetting;


class GeneralSettingController extends Controller
{




    public function get_site_info() {

            $setting = GeneralSetting::latest()->take(1)->first();
            if ($setting) {
                return response()->json([
                    "status" => "OK",
                    "setting" => $setting ,
                ]);
            }

      }


    public function edit_site_info(Request $request,$id)
      {

        $validatedData = $request->validate([
                'title' => 'required',
                'header_contact_number' => 'required',
            ]);

            $setting = GeneralSetting::findOrFail($id);
            $setting->title=$request->title;
            $setting->wallet_point_value=$request->wallet_point_value;
            $setting->header_contact_number=$request->header_contact_number;
            $setting->invoice_address_details=$request->invoice_address_details;
            $setting->facebook_chat_plugin = $request->facebook_chat_plugin;
            $setting->facebook_domain_verification = $request->facebook_domain_verification;
            $setting->facebook_pixel_code = $request->facebook_pixel_code;
            $setting->google_domain_verification = $request->google_domain_verification;
            $setting->google_analytics = $request->google_analytics;

            if ($request->hasFile('logo') ) {
                $logo_path = $request->file('logo')->store('images/general_setting', 'public');
                $setting->logo = $logo_path;
            }

            if ($request->hasFile('icon') ) {
                $icon_path = $request->file('icon')->store('images/general_setting', 'public');
                $setting->icon = $icon_path;
            }

            if ($setting->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'Site Info updated successfully',
                ]);
            }

      }










}
