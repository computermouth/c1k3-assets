import bpy
import os

filepath = os.path.basename(bpy.data.filepath)
basepath = os.path.splitext(filepath)
output_file_path = basepath[0] + ".gltf"

# export_format='GLB'
bpy.ops.export_scene.gltf(
		filepath=output_file_path,
		export_format="GLTF_EMBEDDED",
		export_lights=True,
		export_extras=True,
		export_yup=False
	)



# filepath=''
# check_existing=True
# export_import_convert_lighting_mode='SPEC'
# gltf_export_id=''
# export_format='GLB'
# ui_tab='GENERAL'
# export_copyright=''
# export_image_format='AUTO'
# export_texture_dir=''
# export_jpeg_quality=75
# export_keep_originals=False
# export_texcoords=True
# export_normals=True
# export_draco_mesh_compression_enable=False
# export_draco_mesh_compression_level=6
# export_draco_position_quantization=14
# export_draco_normal_quantization=10
# export_draco_texcoord_quantization=12
# export_draco_color_quantization=10
# export_draco_generic_quantization=12
# export_tangents=False
# export_materials='EXPORT'
# export_original_specular=False
# export_colors=True
# export_attributes=False
# use_mesh_edges=False
# use_mesh_vertices=False
# export_cameras=False
# use_selection=False
# use_visible=False
# use_renderable=False
# use_active_collection_with_nested=True
# use_active_collection=False
# use_active_scene=False
# export_extras=False
# export_yup=True
# export_apply=False
# export_animations=True
# export_frame_range=False
# export_frame_step=1
# export_force_sampling=True
# export_animation_mode='ACTIONS'
# export_nla_strips_merged_animation_name='Animation'
# export_def_bones=False
# export_hierarchy_flatten_bones=False
# export_optimize_animation_size=True
# export_optimize_animation_keep_anim_armature=True
# export_optimize_animation_keep_anim_object=False
# export_negative_frame='SLIDE'
# export_anim_slide_to_zero=False
# export_bake_animation=False
# export_anim_single_armature=True
# export_reset_pose_bones=True
# export_current_frame=False
# export_rest_position_armature=True
# export_anim_scene_split_object=True
# export_skins=True
# export_all_influences=False
# export_morph=True
# export_morph_normal=True
# export_morph_tangent=False
# export_morph_animation=True
# export_morph_reset_sk_data=True
# export_lights=False
# export_nla_strips=True
# will_save_settings=False
# filter_glob='*.glb')
