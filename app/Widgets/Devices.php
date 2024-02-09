<?php

namespace App\Widgets;

use App\Models\Device;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Widgets\BaseDimmer;
use Illuminate\Support\Facades\Auth;

class Devices extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = Device::count();
        $string = trans_choice('device logs', $count);

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-polaroid',
            'title'  => "{$count} {$string}",
            'text'   =>"You have {$count} {$string}. Click on button below to view all devices.",
            'button' => [
                'text' => " view all devices",
                'link' => route('voyager.devices.index'),
            ],
            'image' => voyager_asset('images/widget-backgrounds/01.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return Auth::user()->can('browse', Voyager::model('User'));
    }
}
