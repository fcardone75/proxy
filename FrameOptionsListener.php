<?php

namespace App\EventListener;

use Symfony\Component\HttpKernel\Event\ResponseEvent;
use Symfony\Component\HttpKernel\HttpKernelInterface;

class FrameOptionsListener
{
    public function onKernelResponse(ResponseEvent $event)
    {
        if ($event->getRequestType() !== HttpKernelInterface::MAIN_REQUEST) {
            return;
        }

        $request = $event->getRequest();
        $response = $event->getResponse();

        // Imposta `DENY` come default
        $frameOption = 'DENY';

        // Permetti `SAMEORIGIN` solo su una route specifica
        if ($request->attributes->get('_route') === 'nome_della_route') {
            $frameOption = 'SAMEORIGIN';
        }

        $response->headers->set('X-Frame-Options', $frameOption);
    }
}



services:
    App\EventListener\FrameOptionsListener:
        tags:
            - { name: kernel.event_listener, event: kernel.response, method: onKernelResponse }
