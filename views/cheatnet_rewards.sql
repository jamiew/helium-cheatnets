drop materialized view cheatnet_rewards;
create materialized view cheatnet_rewards as 
select
    rewards.account,
		rewards.gateway,
    rewards.amount,
    to_timestamp(rewards.time)::timestamp as timestamp
from cheatnets
left join rewards on rewards.account = cheatnets.address;
