<?php declare(strict_types=1);

namespace App\GraphQL\Queries;

final class Mytest
{
    /**
     * @param  null  $_
     * @param  array{}  $args
     */
    public function __invoke($_, array $args)
    {
        return [
        "message" => "Hello World",
        "date" => date("Y-m-d"),
        "user" => auth()->user(),
        "args" => $args
    ];
    }
}
