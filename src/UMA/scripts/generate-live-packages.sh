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
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address VotingToken 0x04Fa0d235C4abf4BcF4787aF4CF447DE572eF828
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Voting 0x8B1631ab830d11531aE83725fDa4D86012eCCd77
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Registry 0x3e532e6222afe9Bcf02DCB87216802c75D5113aE
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address FinancialContractsAdmin 0x4E6CCB1dA3C7844887F9A5aF4e8450d9fd90317A
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Governor 0x592349F7DeDB2b75f9d4F194d4b7C16D82E507Dc
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address DesignatedVotingFactory 0xDE7c02aD2b925587Bd16724810f994a2948c4a38
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address DesignatedVotingV2Factory 0x6B46a05f7f9F73d927abD99F5CB5c5652944C94F
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address WETH9 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address TokenFactory 0x52E60e859fe0e1a36F3d4cbaE1e2d6953f4b83B3
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address ExpiringMultiPartyLib 0xa10648Da824330d7C7670E26a234bEf442E77f20
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address ExpiringMultiPartyCreator 0xddfC7E3B4531158acf4C7a5d2c3cB0eE81d018A5
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address OptimisticOracle 0xc43767f4592df265b4a9f1a398b97ff24f38c6a6
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address OptimisticOracleV2 0xA0Ae6609447e57a42c51B50EAe921D701823FFAe
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address PerpetualLib 0x026ed73A36b37B871Be7bfd25D1C62B9bfB358b5
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address PerpetualCreator 0xE9f67235C1B0EE401e5F5e119fB9DFc9753F10F9
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address DSProxyFactory 0xAB75727d4e89A7f7F04f57C00234a35950527115
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address DSGuardFactory 0x63200E25db9Af015d1e3240D30269d29D80830F6
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address OracleRootTunnel 0x34dF79AB1F3Cb70445834e71D725f83A6d3e03eb
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address GovernorRootTunnel 0x4F490F4835B3693A8874aee87D7CC242c25DCCAf
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address LongShortPairCreator 0x439a990f83250FE2E5E6b8059F540af1dA1Ba04D
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address BinaryOptionLongShortPairFinancialProductLibrary 0x072819Bb43B50E7A251c64411e7aA362ce82803B
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address CoveredCallLongShortPairFinancialProductLibrary 0x37780b718c19F7f06D41f3c68C3A78ECB2Ca191f
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address LinearLongShortPairFinancialProductLibrary 0x488211B646b909C490d942f456481BeAE52fde27
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address RangeBondLongShortPairFinancialProductLibrary 0xc1f4e05738E5a7B7CB1f22bB689359CCb1610DA4
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address CappedYieldDollarLongShortPairFinancialProductLibrary 0x048bddE0E6D7340390B90C6d5019F8E73C1e1d8A
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address SimpleSuccessTokenLongShortPairFinancialProductLibrary 0xc803B46CD8d343dd583f56bbe742D2f600DccF13
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address SuccessTokenLongShortPairFinancialProductLibrary 0x67DE29D1A34FF2ea2b8C390B326456F4CBBE628F
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address SkinnyOptimisticOracle 0xeE3Afe347D5C74317041E2618C49534dAf887c24
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Arbitrum_ParentMessenger 0x278C6e83876B6D7163a2141B0eB6404a07EBcAB7
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address OracleHub 0x8fE658AeB8d55fd1F3E157Ff8B316E232ffFF372
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address GovernorHub 0x94520d90A4EBaA98e5A7B8D6809463f65198C104
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Multicall2 0x5ba1e12693dc8f9c48aad8770482f4739beed696
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Boba_ParentMessenger 0x7Fc15F642B66D07BB0641cbCcA28cf624448B52B
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Optimism_ParentMessenger 0x6455D800D1Dbf9B1C3a63c67CcF22B9308728dC4
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Base_ParentMessenger 0x721bA6f9A0a44657f008f3d68C6dBdDeDBDE831A
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Blast_ParentMessenger 0xe3C52FB4c395165b13f8184644D60357e7D3b995
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Proposer 0x226726Ac52e6e948D1B7eA9168F9Ff2E27DbcbB5
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address FixedSlashSlashingLibrary 0x9a406ba5a99983250fd663947b3c968d387ce5cd
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address VotingV2 0x004395edb43EFca9885CEdad51EC9fAf93Bd34ac
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address GovernorV2 0x7b292034084A41B9D441B71b6E3557Edd0463fa8
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address ProposerV2 0x50efaC9619225d7fB4703C5872da978849B6E7cC
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address EmergencyProposer 0x91F1804aCaf87C2D34A34A70be1bb16bB85D6748
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address VotingUpgraderV2 0x13852D4AF390d8C3404c0577fd8B8E43389A290b
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address OptimisticGovernor 0x28CeBFE94a03DbCA9d17143e9d2Bd1155DC26D5d
  # $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address OriginValidator 0xed883ce9bb10416FF3113FDB4Abcb9830617aD27

    
elif [ "$network" = "sepolia" ]; then
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Finder 0xf4C48eDAd256326086AEfbd1A53e1896815F8f13
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address IdentifierWhitelist 0xfcb6f77112951e1995d37542b519Fe0a85a1AA77
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address Store 0x39e7FFA77A4ac4D34021C6BbE4C8778d47F684F2
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address AddressWhitelist 0xE8DE4bcE27f6214dcE18D8a7629f233C66A97B84
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address OptimisticOracleV3 0xFd9e2642a170aDD10F53Ee14a93FcF2F31924944
  $CANNON alter uma-oov3:1.0.0@main --chain-id $chainId set-contract-address MockOracleAncillary 0x5FE28AEa36420414692b1C907F7d0114d304eb0C
fi