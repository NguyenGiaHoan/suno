<div class="products">
    <div class="breadcrumbs-fixed panel-action">
        <div class="row">
            <div class="products-act">
                <div class="col-md-4 col-md-offset-2">
                    <div class="left-action text-left clearfix">
                        <h2><i class="fa fa-refresh" style="font-size: 14px; cursor: pointer;"
                               onclick="cms_vcrproduct('1')"></i>Sửa sản phẩm</h2>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="right-action text-right">
                        <div class="btn-groups">
                            <button type="button" class="btn btn-primary"
                                    onclick="cms_update_product(<?php if (isset($data['_detail_product'])) echo $data['_detail_product']['ID'] ?>);">
                                <i
                                    class="fa fa-check"></i> Lưu
                            </button>
                            <button type="button" class="btn btn-default"
                                    onclick="cms_javascript_redirect( cms_javascrip_fullURL() )"><i
                                    class="fa fa-arrow-left"></i> Hủy
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="main-space orders-space"></div>

    <div class="products-content" style="margin-bottom: 25px;">
        <div class="basic-info">
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-4 padd-0">
                        <h4>Thông tin cơ bản</h4>
                        <small>Nhập tên và các thông tin cơ bản của sản phẩm</small>
                    </div>
                    <div class="col-md-8">
                        <div class="row">
                            <div class="form-group clearfix">
                                <div class="col-md-12 padd-left-0">
                                    <label>Tên sản phẩm</label>
                                    <input type="text" id="prd_name"
                                           value="<?php if (isset($data['_detail_product'])) echo $data['_detail_product']['prd_name'] ?>"
                                           class="form-control"
                                           placeholder="Nhập tên sản phẩm"/>
                                </div>
                            </div>
                            <div class="form-group clearfix">
                                <div class="col-md-6 padd-left-0">
                                    <label>Số lượng</label>
                                    <input disabled="disabled" type="text" id="prd_sls"
                                           value="<?php if (isset($data['_detail_product'])) echo $data['_detail_product']['prd_sls'] ?>"
                                           placeholder="0"
                                           class="form-control text-right txtNumber"/>
                                </div>
                                <div class="col-md-6 padd-right-0">
                                    <label>Mã sản phẩm</label>
                                    <input type="text" id="prd_code" class="form-control"
                                           value="<?php if (isset($data['_detail_product'])) echo $data['_detail_product']['prd_code'] ?>"
                                           placeholder="Nếu không nhập, hệ thống sẽ tự sinh."/>
                                </div>
                            </div>
                            <div class="form-group clearfix">
                                <div class="col-md-6 padd-left-0">
                                    <label>Đơn vị tính</label>
                                    <div class="col-md-11 padd-0">
                                        <select class="form-control" id="prd_unit_id">
                                            <optgroup label="Chọn đơn vị tính">
                                                <?php $unit_id = 0;
                                                if (isset($data['_detail_product']))
                                                    $unit_id = $data['_detail_product']['prd_unit_id'];
                                                echo $unit_id;
                                                ?>
                                                <?php if (isset($data['_prd_unit']) && count($data['_prd_unit'])):
                                                    foreach ($data['_prd_unit'] as $key => $val) :
                                                        ?>
                                                        <option <?php if ($unit_id == $val['ID']) echo 'selected ' ?>
                                                            value="<?php echo $val['ID']; ?>"><?php echo $val['prd_unit_name']; ?></option>
                                                    <?php
                                                    endforeach;
                                                endif;
                                                ?>
                                            </optgroup>
                                            <optgroup label="------------------------">
                                                <option value="product_unit" data-toggle="modal"
                                                        data-target="#list-prd-unit">Tạo mới
                                                    Đơn vị tính
                                                </option>
                                            </optgroup>
                                        </select>
                                    </div>
                                    <div class="col-md-1 padd-0">
                                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                                data-target="#list-prd-unit"
                                                style="border-radius: 0 3px 3px 0; box-shadow: none;">...
                                        </button>
                                    </div>
                                </div>
                                <div class="col-md-6 padd-right-0">
                                    <label class="checkbox" style="display: block;"><input type="checkbox"
                                                                                           id="prd_edit_price"
                                                                                           class="checkbox"
                                                                                           name="confirm"
                                                                                           value="1"
                                            <?php if (isset($data['_detail_product']) and $data['_detail_product']['prd_edit_price'] == 1) echo 'checked="checked"' ?>
                                            ><span></span> Cho phép sửa giá?</label>
                                    <label class="checkbox"><input type="checkbox"
                                                                   id="prd_allownegative"
                                                                   class="checkbox"
                                                                   name="confirm"
                                                                   value="1"
                                            <?php if (isset($data['_detail_product']) and $data['_detail_product']['prd_allownegative'] == 1) echo 'checked="checked"' ?>>
                                        <span></span> Cho phép bán âm?</label>
                                </div>
                            </div>
                            <div class="form-group clearfix">
                                <div class="col-md-6 padd-left-0">
                                    <label>Giá vốn</label>
                                    <input type="text" id="prd_origin_price"
                                           value="<?php if (isset($data['_detail_product'])) echo $data['_detail_product']['prd_origin_price'] ?>"
                                           class="form-control text-right txtMoney" placeholder="Nhập giá vốn"/>

                                    <label>Thông tin thêm</label>
                                    <input type="text" id="infor"
                                           value="<?php if (isset($data['_detail_product'])) echo $data['_detail_product']['infor'] ?>"
                                           class="form-control text-right" placeholder="Thông tin thêm"/>
                                </div>
                                <div class="col-md-6 padd-right-0">
                                    <label>Giá bán lẻ</label>
                                    <input type="text" id="prd_sell_price"
                                           value="<?php if (isset($data['_detail_product'])) echo $data['_detail_product']['prd_sell_price'] ?>"
                                           class="form-control txtMoney text-right" placeholder="0"/>
                                    <label>Giá bán sỉ</label>
                                    <input type="text" id="prd_sell_price2"
                                           value="<?php if (isset($data['_detail_product'])) echo $data['_detail_product']['prd_sell_price2'] ?>"
                                           class="form-control txtMoney text-right" placeholder="0"/>
                                </div>
                            </div>
                            <div class="form-group clearfix">
                                <div class="col-md-6 padd-left-0">
                                    <label>Danh mục</label>
                                    <div class="col-md-11 padd-0">
                                        <select class="form-control" id="prd_group_id">
                                            <optgroup label="Chọn danh mục">
                                                <?php $group_id = 0;
                                                if (isset($data['_detail_product']))
                                                    $group_id = $data['_detail_product']['prd_group_id'];
                                                ?>
                                                <?php if (isset($data['_prd_group']) && count($data['_prd_group'])):
                                                    foreach ($data['_prd_group'] as $key => $item) :
                                                        ?>
                                                        <option <?php if ($group_id == $item['id']) echo 'selected ' ?>
                                                            value="<?php echo $item['id']; ?>"><?php echo $item['prd_group_name']; ?></option>
                                                    <?php
                                                    endforeach;
                                                endif;
                                                ?>
                                            </optgroup>
                                            <optgroup label="------------------------">
                                                <option value="product_group" data-toggle="modal"
                                                        data-target="#list-prd-group">Tạo mới danh
                                                    mục
                                                </option>
                                            </optgroup>
                                        </select>
                                    </div>
                                    <div class="col-md-1 padd-0">
                                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                                data-target="#list-prd-group"
                                                style="border-radius: 0 3px 3px 0; box-shadow: none;">...
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-12 padd-20">
                                <div class="zoomin jumbotron text-center" id="img_upload"
                                     style="border-radius: 0; margin-bottom: 10px; padding: 15px 20px;">
                                    <img src="public/templates/uploads/<?php if (isset($data['_detail_product'])) echo $data['_detail_product']['prd_image_url'] ?>" height="200">
                                    <h3>Upload hình ảnh sản phẩm</h3>
                                    <small style="font-size: 14px; margin-bottom: 5px; display: inline-block;">(Để
                                        tải và hiện thị nhanh, mỗi ảnh tải lên nên có dung lượng tối đa 10MB.)
                                    </small>
                                    <p>
                                    <center>
                                        <div id='img_preview' style="display: none;"></div>
                                        <form id="image_upload_form" method="post" enctype="multipart/form-data"
                                              action='product/upload_img' autocomplete="off">
                                            <div class="file_input_container">
                                                <div class="upload_button"><input type="file" name="photo" id="photo"
                                                                                  class="file_input"/></div>
                                            </div>
                                            <br clear="all">
                                        </form>
                                    </center>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    initSample();
</script>
