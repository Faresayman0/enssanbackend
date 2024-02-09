<?php declare(strict_types=1);

namespace App\GraphQL\Queries;

use App\Models\Device;

final class Mydevice
{
    /**
     * @param  null  $_
     * @param  array{}  $args
     */
    public function __invoke($_, array $args)
    {

        $usre=auth()->user()->device;
        return Device::where('macaddress',$usre)->get();
    }
}
