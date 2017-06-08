<?php

namespace app\controllers;

use Yii;
use yii\web\Controller;
use app\models\CustomerCarlist;
use moonland\phpexcel\Excel;

class Customer_carlistController extends Controller {

    public function actionExport() {
        $datas = Yii::$app->request->get();

        //数据库获取datas
        $excel_datas = array(
            0 => array(
                'id' => 1,
                'customer_name' => 'nanye',
                'phone_number' => 1234,
                'address' => '',
                'license_plate_number' => '',
                'VIN_code' => '',
                'brand' => '',
                'car_series' => '',
                'insurance_company' => '',
                'policy_number_business_risk' => '',
                'policy_number' => '',
                'insurance_due_date' => '',
                'remark' => '',
                'create_store' => '',
                'create_date' => '',
                'vip_number' => '',
                'customer_source' => ''
            )
        );
        //$excel_datas = CustomerCarlist::getDatas(); 
        
        Excel::export([
            'models' => $excel_datas,
            'fileName' => 'export数据', //导出文件名
            'columns' => ['customer_name', 'phone_number', 'address', 'license_plate_number', 'VIN_code', 'brand', 'car_series',
                'insurance_company', 'policy_number_business_risk', 'policy_number', 'insurance_due_date', 'remark', 'create_store',
                'create_date', 'vip_number', 'customer_source'], //需要导出的字段
            'headers' => [
                'customer_name' => '客户姓名',
                'phone_number' => '手机号码',
                'address' => '详细地址',
                'license_plate_number' => '车牌号',
                'VIN_code' => 'VIN',
                'brand' => '品牌',
                'car_series' => '车系',
                'insurance_company' => '保险公司',
                'policy_number_business_risk' => '保险单号（商业险）',
                'policy_number' => '保险单号（交强险）',
                'insurance_due_date' => '保险到期日',
                'remark' => '备注',
                'create_store' => '创建门店',
                'create_date' => '创建日期',
                'vip_number' => '会员号',
                'customer_source' => '客户来源'
            ]//汉化字段
        ]);
    }

}
