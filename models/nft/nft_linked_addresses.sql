{{ config(
    alias = 'linked_addresses',
    partition_by = ['blockchain'],
    materialized = 'incremental',
    file_format = 'delta',
    incremental_strategy = 'merge',
    unique_key = ['blockchain', 'master_address','alternative_address' ],
    post_hook='{{ expose_spells(\'["ethereum","solana"]\',
                                "sector",
                                "nft",
                                \'["springzh"]\') }}'
    )
}}


select distinct blockchain,
    case when buyer <= seller then buyer else seller end as master_address,
    case when buyer <= seller then seller else buyer end as alternative_address
from {{ ref('nft_trades') }}
where buyer is not null
    and seller is not null
    and blockchain is not null
{% if is_incremental() %}
and block_time >= date_trunc("day", now() - interval '1 week')
{% endif %}
