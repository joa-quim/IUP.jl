# Skipping MacroDefinition: imcdCanvasPutImage(_canvas,_image,_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax){if(_image->color_space==IM_RGB){if(_image->has_alpha)cdCanvasPutImageRectRGBA(_canvas,_image->width,_image->height,(unsignedchar*)_image->data[0],(unsignedchar*)_image->data[1],(unsignedchar*)_image->data[2],(unsignedchar*)_image->data[3],_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax);elsecdCanvasPutImageRectRGB(_canvas,_image->width,_image->height,(unsignedchar*)_image->data[0],(unsignedchar*)_image->data[1],(unsignedchar*)_image->data[2],_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax);}elsecdCanvasPutImageRectMap(_canvas,_image->width,_image->height,(unsignedchar*)_image->data[0],_image->palette,_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax);}
immutable imImage
    width::Cint
    height::Cint
    color_space::Cint
    data_type::Cint
    has_alpha::Cint
    depth::Cint
    line_size::Cint
    plane_size::Cint
    size::Cint
    count::Cint
    data::Ptr{Ptr{Void}}
    palette::Ptr{Clong}
    palette_count::Cint
    attrib_table::Ptr{Void}
end
