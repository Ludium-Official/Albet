import credits.aleo;

// The 'coinflip' program.
program coinflip_9_27_v5.aleo {
    record coin_flip_record {
        owner: address;
        id: u64;
        count: u64;
        bet: bool;
    }
    mapping coin_flip_state_by_id: u64 => u64;

    async transition do_coin_flip(public id: u64, public count: u64, public bet: bool) -> (coin_flip_record, Future) {
        let f1: Future = credits.aleo/transfer_public_as_signer(coinflip_9_27_v5.aleo as address, count * 100000u64);
        // 1. Generate betting record
        let r: coin_flip_record = coin_flip_record {
            owner: self.caller,
            id: id,
            count: count,
            bet: bet,
        };

        return (r, gen_answer(f1, self.caller, id, count, bet));
    }

    async function gen_answer(f1: Future, sender: address, id: u64, count: u64, bet: bool) {
        // 3. Await transfer credit from user to this contract
        f1.await();
        // 4. Generate random bool, true = win, false = lose
        let b: bool = ChaCha::rand_bool();
        // 5. Set user betting result to map
        let exist: u64 = Mapping::get_or_use(coin_flip_state_by_id, id, 0u64);
        asset(exist != 0u64);

        if b == bet {
            Mapping::set(coin_flip_state_by_id, id, count);
        }
    }

    async transition claim(r: coin_flip_record) -> Future {
        let f1: Future = credits.aleo/transfer_public(r.owner, 200000u64 * r.count);
        return get_answer_and_remove(f1, r.id, r.owner);
    }

    async function get_answer_and_remove(f1: Future, id: u64, sender: address) {
        let claimable: u64 = Mapping::get_or_use(coin_flip_state_by_id, id, 0u64);
        assert(claimable > 0u64);
        Mapping::remove(coin_flip_state_by_id, id);
        f1.await();
    }
}
