select
  vehicles.plate_number,
  vehicles.vehicle_type,
  devices.device_id,
  organizations.display_name
from
  vehicles
  inner join devices on devices.id = vehicles.device_id
  inner join organizations on organizations.id = vehicles.organisation_id;