<?php
namespace App\GraphQL\Queries;

use App\Models\Device;

class DeviceQuery
{
    public function deviceByMacaddress($root, array $args)
    {
        return Device::where('macaddress', $args['macaddress'])->orderBy('created_at', 'desc')->first();
    }
}
