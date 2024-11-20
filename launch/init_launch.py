import os
from launch import LaunchDescription
from launch_ros.actions import Node
from ament_index_python.packages import get_package_share_directory

def generate_launch_description():
    # Cartographer 설정 디렉토리와 파일 경로 설정
    cartographer_config_dir = os.path.join(
        get_package_share_directory('cartographer_easystart'),
        'config')
    lua_file = 'localization_2d.lua'  # 올바른 lua 파일명으로 수정
    pbstream_file = '/home/orin_nx/localization/src/cartographer_easystart/maps/test.pbstream'

    # # Cartographer 노드
    # cartographer_node = Node(
    #     package='cartographer_ros',
    #     executable='cartographer_node',
    #     name='cartographer_node',
    #     output='screen',
    #     parameters=[{'use_sim_time': False}],
    #     arguments=[
    #         '-configuration_directory', cartographer_config_dir,
    #         '-configuration_basename', lua_file,
    #         '-load_state_filename', pbstream_file  # Load the saved map
    #     ],
    #     remappings=[
    #         ('/imu', '/gx5/imu/data')  # 기존 '/imu'를 '/new_imu_topic'으로 remap
    #     ],
    # )

    # # Occupancy Grid 노드
    # occupancy_grid_node = Node(
    #     package='cartographer_ros',
    #     executable='cartographer_occupancy_grid_node',
    #     name='cartographer_occupancy_grid_node',
    #     output='screen',
    #     parameters=[{'use_sim_time': False}],
    #     arguments=[
    #         '-resolution', '0.05',  # Occupancy Grid의 해상도 설정
    #         '-publish_period_sec', '1.0'
    #     ]
    # )

    # Carto Init Pose 노드
    carto_init_pose_node = Node(
        package='cartographer_easystart',  # carto_init_pose가 속한 패키지 이름
        executable='carto_init_pose',  # 빌드된 실행 파일 이름
        name='carto_init_pose_node',  # 노드 이름
        output='screen',
        parameters=[
            {'configuration_directory': cartographer_config_dir},  # 설정 디렉토리 전달
            {'configuration_basename': lua_file}  # Lua 파일명 전달
        ],
        remappings=[
            ('/initialpose', '/initialpose'),  # 필요시 토픽 리매핑
            ('/move_base_simple/goal', '/move_base_simple/goal')
        ]
    )

    return LaunchDescription([
        # cartographer_node,
        # occupancy_grid_node,
        carto_init_pose_node,
    ])
