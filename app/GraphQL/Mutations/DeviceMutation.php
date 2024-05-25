<?php
namespace App\GraphQL\Mutations;

use App\Models\Device;

class DeviceMutation
{
    public function createOrUpdateDevice($root, array $args)
    {
        $device = Device::where('macaddress', $args['macaddress'])->first();

        if ($device) {
            // جهاز موجود، تحديث البيانات
            $device->longitude = $args['longitude'];
            $device->latitude = $args['latitude'];
            $device->bloodpressure = $args['bloodpressure'];
            $device->updated_at = now();
            $device->save();
        } else {
            // جهاز جديد، إنشاء
            $device = Device::create([
                'macaddress' => $args['macaddress'],
                'longitude' => $args['longitude'],
                'latitude' => $args['latitude'],
                'bloodpressure' => $args['bloodpressure'],
            ]);
        }

        return $device;
    }
}
