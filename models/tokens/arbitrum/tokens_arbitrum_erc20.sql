{{ config( alias='erc20', tags=['static'])}}

SELECT LOWER(contract_address) as contract_address, symbol, decimals
FROM (VALUES
        ('0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9', 'USDT', 6)
        ,('0xff970a61a04b1ca14834a43f5de4533ebddb5cc8', 'USDC', 6)
        ,('0xda10009cbd5d07dd0cecc66161fc93d7c9000da1', 'DAI', 18)
        ,('0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f', 'WBTC', 8)
        ,('0xfa7f8980b0f1e64a2062791cc3b0871572f1f7f0', 'UNI', 18)
        ,('0xf97f4df75117a78c1a5a0dbb814af92458539fb4', 'LINK', 18)
        ,('0x1a4da80967373fd929961e976b4b53ceec063a15', 'LUNC', 6)
        ,('0x17fc002b466eec40dae837fc4be5c67993ddbd6f', 'FRAX', 18)
        ,('0x4d15a3a2286d883af0aa1b3f21367843fac63e07', 'TUSD', 18)
        ,('0x13ad51ed4f1b7e9dc168d8a00cb3f4ddd85efa60', 'LDO', 18)
        ,('0x680447595e8b7b3aa1b43beb9f6098c79ac2ab3f', 'USDD', 18)
        ,('0x23a941036ae778ac51ab04cea08ed6e2fe103614', 'GRT', 18)
        ,('0x13780e6d5696dd91454f6d3bbc2616687fea43d0', 'USTC', 6)
        ,('0x354a6da3fcde098f8389cad84b0182725c6c91de', 'COMP', 18)
        ,('0x46d0ce7de6247b0a95f67b43b589b4041bae7fbe', 'LRC', 18)
        ,('0x9d2f299715d94d8a7e6f5eaa8e654e8c74a988a7', 'FXS', 18)
        ,('0x11cdb42b0eb46d95f990bedd4695a6e3fa034978', 'CRV', 18)
        ,('0xfc5a1a6eb076a2c7ad06ed22c90d7e710e35ad0a', 'GMX', 18)
        ,('0xa0b862f60edef4452f25b4160f177db44deb6cf1', 'GNO', 18)
        ,('0x82e3a8f066a6989666b031d916c43672085b1582', 'YFI', 18)
        ,('0xd4d42f0b6def4ce0383636770ef773390d85c61a', 'SUSHI', 18)
        ,('0x289ba1701c2f088cf0faf8b3705246331cb8a839', 'LPT', 18)
        ,('0xfea7a6a0b346362bf88a9e4a88416b77a57d6c2a', 'MIM', 18)
        ,('0x080f6aed32fc474dd5717105dba5ea57268f46eb', 'SYN', 18)
        ,('0x040d1edc9569d4bab2d15287dc5a4f10f56a56b8', 'BAL', 18)
        ,('0xd693ec944a85eeca4247ec1c3b130dca9b0c3b22', 'UMA', 18)
        ,('0x6fe14d3cc2f7bddffba5cdb3bbe7467dd81ea101', 'COTI', 18)
        ,('0xe4dddfe67e7164b0fe14e218d80dc4c08edc01cb', 'KNC', 18)
        ,('0x3e6648c5a70a150a88bce65f4ad4d506fe15d2af', 'SPELL', 18)
        ,('0x319f865b287fcc10b30d8ce6144e8b6d1b476999', 'CTSI', 18)
        ,('0x3a8b787f78d775aecfeea15706d4221b40f345ab', 'CELR', 18)
        ,('0xa970af1a584579b618be4d69ad6f73459d112f95', 'sUSD', 18)
        ,('0x9fb9a33956351cf4fa040f65a13b835a3c8764e3', 'MULTI', 18)
        ,('0x6694340fc020c5e6b96567843da2df01b2ce1eb6', 'STG', 18)
        ,('0xbfa641051ba0a0ad1b0acf549a89536a0d76472e', 'BADGER', 18)
        ,('0x3f56e0c36d275367b8c502090edf38289b3dea0d', 'MAI', 18)
        ,('0x69eb4fa4a2fbd498c257c57ea8b7655a2559a581', 'DODO', 18)
        ,('0x753d224bcf9aafacd81558c32341416df61d3dac', 'PERP', 18)
        ,('0x0d81e50bc677fa67341c44d7eaa9228dee64a4e1', 'BOND', 18)
        ,('0xfa5ed56a203466cbbc2430a43c66b9d8723528e7', 'agEUR', 18)
        ,('0xac9ac2c17cdfed4abc80a53c5553388575714d03', 'ATA', 18)
        ,('0x39f91452a6e9994762876e1edd87be28a46d5c99', 'DIA', 18)
        ,('0xef888bca6ab6b1d26dbec977c455388ecd794794', 'RGT', 18)
        ,('0x5298060a95205be6dd4abc21910a4bb23d6dcd8b', 'ROUTE', 18)
        ,('0x2ad62674a64e698c24831faf824973c360430140', 'UBT', 8)
        ,('0xa7aa2921618e3d63da433829d448b58c9445a4c3', 'DVF', 18)
        ,('0xbdef0e9ef12e689f366fe494a7a7d0dad25d9286', 'FUSE', 18)
        ,('0x7ba4a00d54a07461d9db2aef539e91409943adc9', 'SDT', 18)
        ,('0x99f40b01ba9c469193b360f72740e416b17ac332', 'MATH', 18)
        ,('0x031d35296154279dc1984dcd93e392b1f946737b', 'CAP', 18)
        ,('0x82af49447d8a07e3bd95bd0d56f35241523fbab1', 'WETH', 18)
        ,('0x1622bf67e6e5747b81866fe0b85178a93c7f86e3','UMAMI', 9)
        ,('0x5575552988a3a80504bbaeb1311674fcfd40ad4b', 'SPA', 18)
        ,('0xd74f5255d557944cf7dd0e45ff521520002d5748', 'USDs', 18)
        ,('0x539bde0d7dbd336b79148aa742883198bbf60342', 'MAGIC', 18)
        ,('0x6c2c06790b3e3e3c38e12ee22f8183b37a13ee55', 'DPX', 18)
        ,('0x51318b7d00db7acc4026c88c3952b66278b6a67f', 'PLS', 18)
        ,('0xb5de3f06af62d8428a8bf7b4400ea42ad2e0bc53', 'BRC', 18)
        ,('0x7ab08069a6ee445703116e4e09049e88a237af5e', 'vETH', 18)
        ,('0x32eb7902d4134bf98a28b963d26de779af92a212', 'RDPX', 18)
        ,('0xa72159fc390f0e3c6d415e658264c7c4051e9b87', 'TCR', 18)
        ,('0x2cab3abfc1670d1a452df502e216a66883cdf079', 'L2DAO', 18)
        ,('0xec70dcb4a1efa46b8f2d97c310c9c4790ba5ffa8', 'rETH', 18)
        ,('0xb766039cc6db368759c1e56b79affe831d0cc507', 'RPL', 18)
        ,('0xd3f1da62cafb7e7bc6531ff1cef6f414291f03d3', 'DBL', 18)
        ,('0x4e352cf164e64adcbad318c3a1e222e9eba4ce42', 'MCB', 18)
        ,('0xc74fe4c715510ec2f8c61d70d397b32043f55abe', 'MYC', 18)
        ,('0xf31644beb9410bad452557edbc8134aa84f84206', 'vQuote', 6)
        ,('0xaef5bbcbfa438519a5ea80b4c7181b4e78d419f2', 'RAI', 18)
        ,('0x55ff62567f09906a85183b866df84bf599a4bf70', 'KROM', 18)
        ,('0xa684cd057951541187f288294a1e1c2646aa2d24', 'VSTA', 18)
        ,('0xfd3713b309f843daa51c27022c249c5a9a5e311c', 'HOP', 18)
        ,('0xf4fe727c855c2d395852ca43f645cab4b504af23', 'HDX', 9)
        ,('0x61a1ff55c5216b636a294a07d77c6f4df10d3b56', 'APEX', 18)
        ,('0x8d9ba570d6cb60c7e3e0f31343efe75ab8e65fb1', 'gOHM', 18)
        ,('0xde903e2712288a1da82942dddf2c20529565ac30', 'SWPR', 18)
        ,('0x10393c20975cf177a3513071bc110f7962cd67da', 'JONES', 18)
        ,('0x62c7e128e7c3205964429f58a0c6f63a776d10d1', 'gBRC', 18)
        ,('0x6374d87c5a48c41b309a1ab7b12eeb4fe30d8d8a', 'WAD', 18)
        ,('0x51fc0f6660482ea73330e414efd7808811a57fa2', 'PREMIA', 18)
        ,('0x79f707d68cd49ca5d9aeb33affd4477c3ea8ea8f', 'ETHV', 18)
        ,('0xdc070b5cf1d3a14a88afee1ae51dd1825dac92c0', 'BTCV', 18)
        ,('0x759faf269d0c662b5dc78e01ef61392541d52750', 'fcAUD', 18)
        ,('0xbc60ff90497f99cbf6fb84ce1e31845637033445', 'USDR', 18)
        ,('0x873484f654a7203296931f529680449e8a642898', 'iETHV', 18)
        ,('0x7cb16cb78ea464ad35c8a50abf95dff3c9e09d5d', '0xBTC', 8)
        ,('0x6f5401c53e2769c858665621d22ddbf53d8d27c5', 'CNFI', 18)
        ,('0xbe00f3db78688d9704bcb4e0a827aea3a9cc0d62', 'USD24', 2)
        ,('0xb67c014fa700e69681a673876eb8bafaa36bff71', 'HOP-LP-USDC', 18)
        ,('0xdf6b7b551a09ddb8d879165b870e6085db027036', 'BRCF', 18)
        ,('0x62812d4f2c7043b41b815c07c686e72dfe4bb632', 'wa-USDC-NYC', 6)
        ,('0x0e15258734300290a651fdbae8deb039a8e7a2fa', 'ALCH', 18)
        ,('0xd14c03a985a7b09af1a08640e5f6aff806dc8249', 'iBTCV', 18)
        ,('0xa0459edcad5aac14dc32775d22ff7bd33027cac7', 'WIS', 18)
        ,('0xada42bb73b42e0472a994218fb3799dfcda21237', 'ZZ', 18)
        ,('0x5979d7b546e38e414f7e9822514be443a4800529', 'wstETH', 18)
        ,('0x0c4681e6c0235179ec3d4f4fc4df3d14fdd96017', 'RDNT', 18)
        ,('0x1a5b0aaf478bf1fda7b934c76e7692d722982a6d', 'BFR', 18)
        ,('0x4945970efeec98d393b4b979b9be265a3ae28a8b', 'GMD', 18)
        ,('0xba5ddd1f9d7f570dc94a51479a000e3bce967196', 'AAVE', 18) 
        ,('0xd22a58f79e9481d1a88e00c343885a588b34b68b', 'EURS', 2)
        ,('0xda492c29d88ffe9b7cbfa6dc068c2f9befae851b', 'CUSDCLP', 18)
        ,('0xb86af5eb59a8e871bfa573fa656123ea86f47c3a', 'CWETHLP', 18)
        ,('0x1426cf37caa89628c4da2864e40cf75e6d66ac6b', 'RELAY', 18)
        ,('0x912ce59144191c1204e64559fe8253a0e49e6548', 'ARB', 18)
        ,('0x3d9907f9a368ad0a51be60f7da3b97cf940982d8', 'GRAIL', 18)
        ,('0xb40dbbb7931cfef8be73aeec6c67d3809bd4600b', 'PPO', 18)
        ,('0x49e050df648e9477c7545fe1779b940f879b787a', 'esGMD', 18)
        ,('0x5d59e5837f7e5d0f710178eda34d9ecf069b36d2', 'Y2K(Dummy)', 18)
        ,('0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8', 'PENDLE', 18)
        ,('0x07e49d5de43dda6162fa28d24d5935c151875283', 'GOVI', 18)
        ,('0x65c936f008bc34fe819bce9fa5afd9dc2d49977f', 'Y2K', 18)
        ,('0xda51015b73ce11f77a115bb1b8a7049e02ddecf0', 'NEU', 18)
        ,('0x088cd8f5eF3652623c22D48b1605DCfE860Cd704', 'VELA', 18)
     ) AS temp_table (contract_address, symbol, decimals)
