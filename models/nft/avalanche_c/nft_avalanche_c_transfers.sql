{{ config(
        alias ='transfers',
        partition_by='block_date',
        materialized='incremental',
        file_format = 'delta',
        unique_key = ['unique_transfer_id']
)
}}
 SELECT 'avalanche_c' AS blockchain
, t.evt_block_time AS block_time
, date_trunc('day', t.evt_block_time) AS block_date
, t.evt_block_number AS block_number
, 'erc721' AS token_standard
, 'single' AS transfer_type
, t.evt_index
, t.contract_address
, t.tokenId AS token_id
, 1 AS amount
, t.from
, t.to
, t.evt_tx_hash AS tx_hash
, 'avalanche_c' || t.evt_tx_hash || '-erc721-' || t.contract_address || '-' || t.tokenId || '-' || t.from || '-' || t.to || '-' || '1' || '-' || t.evt_index AS unique_transfer_id
FROM {{ source('erc721_avalanche_c','evt_transfer') }} t
{% if is_incremental() %}
    ANTI JOIN {{this}} anti_table
        ON t.evt_tx_hash = anti_table.tx_hash
    {% endif %}
{% if is_incremental() %}
WHERE t.evt_block_time >= date_trunc("day", now() - interval '1 week')
{% endif %}
UNION ALL
SELECT 'avalanche_c' AS blockchain
, t.evt_block_time AS block_time
, date_trunc('day', t.evt_block_time) AS block_date
, t.evt_block_number AS block_number
, 'erc1155' AS token_standard
, 'single' AS transfer_type
, t.evt_index
, t.contract_address
, t.id AS token_id
, t.value AS amount
, t.from
, t.to
, t.evt_tx_hash AS tx_hash
, 'avalanche_c' || t.evt_tx_hash || '-erc721-' || t.contract_address || '-' || t.id || '-' || t.from || '-' || t.to || '-' || t.value || '-' || t.evt_index AS unique_transfer_id
FROM {{ source('erc1155_avalanche_c','evt_transfersingle') }} t
{% if is_incremental() %}
    ANTI JOIN {{this}} anti_table
        ON t.evt_tx_hash = anti_table.tx_hash
    {% endif %}
{% if is_incremental() %}
WHERE t.evt_block_time >= date_trunc("day", now() - interval '1 week')
{% endif %}
UNION ALL
SELECT 'avalanche_c' AS blockchain
, evt_block_time AS block_time
, date_trunc('day', evt_block_time) AS block_date
, evt_block_number AS block_number
, 'erc1155' AS token_standard
, 'batch' AS transfer_type
, evt_index
, contract_address
, ids_and_count.ids AS token_id
, ids_and_count.values AS amount
, from
, to
, evt_tx_hash AS tx_hash
, 'avalanche_c' || evt_tx_hash || '-erc1155-' || contract_address || '-' || ids_and_count.ids || '-' || from || '-' || to || '-' || ids_and_count.values || '-' || evt_index AS unique_transfer_id
FROM (
    SELECT t.evt_block_time, t.evt_block_number, t.evt_tx_hash, t.contract_address, t.from, t.to, t.evt_index
    , explode(arrays_zip(t.values, t.ids)) AS ids_and_count
    FROM {{ source('erc1155_avalanche_c', 'evt_transferbatch') }} t
    {% if is_incremental() %}
        ANTI JOIN {{this}} anti_table
            ON t.evt_tx_hash = anti_table.tx_hash
    {% endif %}
    {% if is_incremental() %}
    WHERE t.evt_block_time >= date_trunc("day", now() - interval '1 week')
    {% endif %}
    GROUP BY t.evt_block_time, t.evt_block_number, t.evt_tx_hash, t.contract_address, t.from, t.to, t.evt_index, t.values, t.ids
    )
WHERE ids_and_count.values > 0
GROUP BY blockchain, evt_block_time, evt_block_number, evt_tx_hash, contract_address, from, to, evt_index, token_id, amount
