# Neutron Interchain Accounts Example

This repository spins up two validators and a full node for each of
the latest Atom and Neutron versions, sets up replicated security
between them, and demonstrates creating an ICA account on Atom from a
smart contract on Neutron. This is orchestrated using the lovely
[interchaintest](https://github.com/strangelove-ventures/interchaintest)
by Strangelove, and uses the example contract from Neutron's [ICA
tutorial](https://docs.neutron.org/tutorials/cosmwasm_ica).

![image](https://user-images.githubusercontent.com/30676292/242716606-e64ed2ea-c8dd-4f41-81f6-4c208acd68a2.png)

In less technical terms: this repository demonstrates creating an
account on another blockchain from a smart contract and setting up a
good testing framework.

[interchaintest/ics_test.go](./interchaintest/ics_test.go) contains
well-commented integration test code.

## Testing

To run tests (you will need [just
installed](https://just.systems/man/en/chapter_1.html)):

```
just test
```
