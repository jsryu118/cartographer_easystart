-- Copyright 2016 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

include "backpack_2d.lua"

TRAJECTORY_BUILDER.pure_localization_trimmer = {
  max_submaps_to_keep = 3,
}
MAP_BUILDER.num_background_threads = 6
POSE_GRAPH.constraint_builder.sampling_ratio = 0.01
POSE_GRAPH.optimize_every_n_nodes = 1
POSE_GRAPH.global_sampling_ratio = 0.01
TRAJECTORY_BUILDER_2D.min_z = -0.8
TRAJECTORY_BUILDER_2D.max_z = 8.0
TRAJECTORY_BUILDER_2D.max_range = 50.0

-- KR
-- POSE_GRAPH.optimization_problem.huber_scale = 1e3
-- TRAJECTORY_BUILDER_2D.ceres_scan_matcher.translation_weight = 0.2
-- TRAJECTORY_BUILDER_2D.ceres_scan_matcher.rotation_weight = 10
-- TRAJECTORY_BUILDER_2D.ceres_scan_matcher.translation_weight = 2
-- TRAJECTORY_BUILDER_2D.ceres_scan_matcher.rotation_weight = 2
TRAJECTORY_BUILDER_2D.ceres_scan_matcher.translation_weight = 0.001 --0.01
TRAJECTORY_BUILDER_2D.ceres_scan_matcher.rotation_weight = 0.0005 --25


-- TRAJECTORY_BUILDER_2D.ceres_scan_matcher.translation_weight = 0.4
-- TRAJECTORY_BUILDER_2D.ceres_scan_matcher.rotation_weight = 0.3

-- POSE_GRAPH.constraint_builder.global_localization_min_score =  0.5 --0.6
POSE_GRAPH.constraint_builder.loop_closure_translation_weight =  3e5 --3e5
POSE_GRAPH.constraint_builder.loop_closure_rotation_weight = 1e6 --1e6
-- POSE_GRAPH.constraint_builder.max_constraint_distance = 5 -- 15
POSE_GRAPH.constraint_builder.ceres_scan_matcher.translation_weight =  5 --10.  --0.01
POSE_GRAPH.constraint_builder.ceres_scan_matcher.rotation_weight =  0.1 --30 45 1.

-- POSE_GRAPH.optimization_problem.local_slam_pose_translation_weight = 1e6
-- POSE_GRAPH.optimization_problem.local_slam_pose_rotation_weight = 1e6


-- OG
-- TRAJECTORY_BUILDER_2D.ceres_scan_matcher.translation_weight = 0.01
-- TRAJECTORY_BUILDER_2D.ceres_scan_matcher.rotation_weight = 25 --25

-- POSE_GRAPH.constraint_builder.loop_closure_translation_weight =  3e5 --3e5
-- POSE_GRAPH.constraint_builder.loop_closure_rotation_weight = 1e6
-- -- POSE_GRAPH.constraint_builder.max_constraint_distance = 5 -- 15
-- POSE_GRAPH.constraint_builder.ceres_scan_matcher.translation_weight =  0.01 --10.
-- POSE_GRAPH.constraint_builder.ceres_scan_matcher.rotation_weight =  25 --30 45 1.




return options


-- -- Copyright 2016 The Cartographer Authors
-- --
-- -- Licensed under the Apache License, Version 2.0 (the "License");
-- -- you may not use this file except in compliance with the License.
-- -- You may obtain a copy of the License at
-- --
-- --      http://www.apache.org/licenses/LICENSE-2.0
-- --
-- -- Unless required by applicable law or agreed to in writing, software
-- -- distributed under the License is distributed on an "AS IS" BASIS,
-- -- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- -- See the License for the specific language governing permissions and
-- -- limitations under the License.

-- include "backpack_2d.lua"

-- TRAJECTORY_BUILDER.pure_localization_trimmer = {
--   max_submaps_to_keep = 3,
-- }
-- POSE_GRAPH.optimize_every_n_nodes = 20


-- return options
