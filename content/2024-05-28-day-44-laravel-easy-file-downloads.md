+++
title = 'Day 44: Laravel makes file downloads easy'
slug = 'day-44-laravel-easy-file-downloads'
date = 2024-05-28T19:53:45-05:00
location = 'Waukee, Iowa'
type = 'post'
category = 'work-journal'
unlisted = false
draft = false
+++

Today I continued work on the portal where people can buy Dashify Pro and manage their licenses: I added a button to download the Dashify Pro plugin zip if the user has an active subscription.

Laravel made it really easy.

All I had to do is make a route like this:

```php
Route::get('/download/{version}', [DashifyProController::class, 'download'])
    ->middleware('auth');
```

And create the controller class, with the actual downloading code being just a few lines:

```php
<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Storage;

class DashifyProController extends Controller
{
    public function download(string $version)
    {
        $filename = "dashify-pro.$version.zip";
        if (!Storage::exists($filename)) {
            return 'This version of Dashify Pro is missing or not available. If you think it should exist, contact john@getdashify.com for support.';
        }
        return Storage::download($filename);
    }
}
```

`Storage` is an abstraction in Laravel for wherever the file may be stored, whether filesystem, S3, or something else.

For now, I plan to manually publish each new version of Dashify Pro as a zip to the repo for this portal, where it will become available for download.

Some things I considered but decided to worry about later:

- People may want to download an older version of the Pro plugin, so I could add something in the UI to allow them to select an older version, or just have a list of the older versions on some page.
- Technically, the route is available to anyone who is authenticated, but that doesn’t mean they have an active subscription. Only in the UI does it hide the download button if they no longer have an active subscription. I suppose a middleware to check for an active subscription could make the premium plugin zip a little more secure. I’m not worrying about this right now because paid WordPress plugins are fundamentally flawed in this way. Anyone can buy a plugin, request a refund, keep the plugin code and remove all the license checks—though they’d just have that particular version. In fact, there are marketplaces for these “nulled” plugins, but many have malicious code added to them! Beware!
