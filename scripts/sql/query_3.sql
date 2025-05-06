select
  *,
  mongo.status_since AS utc_status_since,
  DATETIME(mongo.status_since, '+5 hours', '+30 minutes') AS status_since
from
  query_1 as mongo
  join query_2 as pg on mongo.device_id = pg.device_id;