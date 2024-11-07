module MyModule {

    // Declare a resource
    resource struct Coin {
        value: u64,
    }

    // Initialize a coin with a given value
    public fun create_coin(value: u64): Coin {
        Coin { value }
    }

    // Transfer a coin from sender to recipient
    public fun transfer_coin(coin: Coin, recipient: &signer) {
        move_to(recipient, coin);
    }

    // Destroy a coin (if it's no longer needed)
    public fun destroy_coin(coin: Coin) {
        let _ = coin; // Consume the coin to release it
    }
}
