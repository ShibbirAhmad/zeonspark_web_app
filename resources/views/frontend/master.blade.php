<!DOCTYPE html>
<html>
<head>


    <?php
    $setting=App\Models\GeneralSetting::first();
    ?>

    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <!-- Facebook Domain Verification --->
    @if (!empty($setting->facebook_domain_verification))
        {!! $setting->facebook_domain_verification !!}
    @endif
    <!-- Facebook Domain Verification End --->

    <!-- Google Domain Verification --->
     @if (!empty($setting->google_domain_verification))
        {!! $setting->google_domain_verification !!}
    @endif
    <!-- Google Domain Verification End --->

    <!-- Facebook Pixel Code -->
       @if (!empty($setting->facebook_pixel_code))
          {!! $setting->facebook_pixel_code !!}
       @endif
    <!-- End Facebook Pixel Code -->

    <title>{{ $setting->title }}</title>
    <link href="{{ asset('storage/'.$setting->icon) }}" rel="icon" />
    <meta name="description" id="meta-description" content="one of the best e-commerce platform in Bangladesh. shirt, gadget, accessories home decoration, panjabi, toys, elecetronics items are our asset">
    @include('frontend.partials.css')

</head>

<body>


<div id="app">


<router-view :key="$route.fullPath"></router-view>
<vue-progress-bar></vue-progress-bar>
    <!-- Your Chat Plugin code -->
    @if (!empty($setting->facebook_chat_plugin))
       {!! $setting->facebook_chat_plugin !!} 
    @endif

    <!-- Your Google Analytics code -->
    @if (!empty($setting->google_analytics))
       {!! $setting->google_analytics !!} 
    @endif
</div>


<script src="{{asset('js/app.js')}}" type="text/javascript"></script>
<script> console.log("contributed fahim muntasir") </script>
<script> console.log("contributed shibbir ahmad") </script>


</body>
</html>
