optimize:
    cd neutron_interchain_txs && docker run --rm -v "$(pwd)":/code \
      --mount type=volume,source="$(basename "$(pwd)")_cache",target=/code/target \
      --mount type=volume,source=registry_cache,target=/usr/local/cargo/registry \
      cosmwasm/rust-optimizer:0.12.13

test: optimize
    mkdir -p interchaintest/wasms
    cp neutron_interchain_txs/artifacts/neutron_interchain_txs.wasm interchaintest/wasms
    cd interchaintest && go test -v ./...
