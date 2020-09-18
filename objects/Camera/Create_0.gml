camera = camera_create();
var xview = 1280;
var yview = 720;
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(xview, yview, 1, 10000);
camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);
view_camera[view_current] = camera;

view_enabled = true;
view_set_visible(view_current, true);

//window_set_size(1920, 1080);


