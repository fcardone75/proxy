 public function onLogout(LogoutEvent $event): void
    {  // get the security token of the session that is about to be logged out
        $user = $event->getToken()?->getUser();
        $client_ip = $event->getRequest()?->getClientIp();

        if ($user == null || $client_ip == null) {
            return;
        }
        $this->logger->info("User logout: Account {user} has logged out. Client IP: {client_ip}", [
            'user' => $user->getEmail(),
            "client_ip" => $client_ip
        ]);
    }
