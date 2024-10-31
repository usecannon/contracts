#!/bin/bash

set -e

network=$1
chainId=$2

CANNON=${CANNON:-cannon}

echo "Configuring Oracle v3"
if [ "$network" = "mainnet" ]; then
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Finder 0x40f941E48A552bF496B154Af6bf55725f18D77c3
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address IdentifierWhitelist 0xcF649d9Da4D1362C4DAEa67573430Bd6f945e570
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Store 0x54f44eA3D2e7aA0ac089c4d8F7C93C27844057BF
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address AddressWhitelist 0xdBF90434dF0B98219f87d112F37d74B1D90758c7
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address OptimisticOracleV3 0xfb55F43fB9F48F63f9269DB7Dde3BbBe1ebDC0dE
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address MockOracleAncillary 0x514Ae88aB0d24088C0a9d8E76E66457DF200fEe3

    
elif [ "$network" = "sepolia" ]; then
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Finder 0xf4C48eDAd256326086AEfbd1A53e1896815F8f13
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address IdentifierWhitelist 0xfcb6f77112951e1995d37542b519Fe0a85a1AA77
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Store 0x39e7FFA77A4ac4D34021C6BbE4C8778d47F684F2
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address AddressWhitelist 0xE8DE4bcE27f6214dcE18D8a7629f233C66A97B84
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address OptimisticOracleV3 0xFd9e2642a170aDD10F53Ee14a93FcF2F31924944
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address MockOracleAncillary 0x5FE28AEa36420414692b1C907F7d0114d304eb0C
fi

elif [ "$network" = "optimism"]; then
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Finder 0x278d6b1aA37d09769E519f05FcC5923161A8536D
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address IdentifierWhitelist 0xd90A27EaF88c81F50e30e0E0333036838814181e
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Store 0x5be04e53b465c6fD89ECfF3d36dDf666D198e31a
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address AddressWhitelist 0xad7c5516b25661e0A204646b08024cD82ffe6C48
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address OptimisticOracleV3 0x072819Bb43B50E7A251c64411e7aA362ce82803B
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address OracleSpoke 0x55743451B0921B555B4AeAf878c2f3E37aA41755
fi