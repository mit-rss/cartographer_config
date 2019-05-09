include "map_builder.lua"
include "trajectory_builder.lua"

options = {
  map_frame = "cartographer_map",
  tracking_frame = "base_link",
  published_frame = "base_link",
  odom_frame = "cartographer_odom",
  provide_odom_frame = true,
  publish_frame_projected_to_2d = true,
  use_odometry = true,
  num_laser_scans = 1,
  num_subdivisions_per_laser_scan = 1,
  map_builder = MAP_BUILDER,
  trajectory_builder = TRAJECTORY_BUILDER,
  use_landmarks = false,
  use_nav_sat = false,
  num_multi_echo_laser_scans = 0,
  num_point_clouds = 0,
  lookup_transform_timeout_sec = 0.2,
  submap_publish_period_sec = 0.3,
  pose_publish_period_sec = 5e-3,
  trajectory_publish_period_sec = 30e-3,
  rangefinder_sampling_ratio = 1.,
  odometry_sampling_ratio = 1.,
  fixed_frame_pose_sampling_ratio = 1.,
  imu_sampling_ratio = 1.,
  landmarks_sampling_ratio = 1.,
}

MAP_BUILDER.use_trajectory_builder_2d = true
MAP_BUILDER.num_background_threads = 4.0
TRAJECTORY_BUILDER_2D.use_imu_data = false

return options
