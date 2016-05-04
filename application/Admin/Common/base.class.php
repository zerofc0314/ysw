<?php

namespace Admin\Common;

/**
 * 公用基础类库
 *
 * @author 阿夏
 */
class base {

    public function __construct() {
        
    }

    static function base() {
        return new self;
    }

    /**
     * 获取文件列表
     * @param str       $dir        路径
     * @return array                返回文件数组
     */
    public function getFile($dir) {
        $fileArray[] = NULL;
        if (false != ($handle = opendir($dir))) {
            $i = 0;
            while (false !== ($file = readdir($handle))) {
                //去掉"“.”、“..”以及带“.xxx”后缀的文件
                if ($file != "." && $file != ".." && strpos($file, ".")) {
                    $fileArray[$i] = $file;
                    if ($i == 100) {
                        break;
                    }
                    $i++;
                }
            }
            //关闭句柄
            closedir($handle);
        }
        return $fileArray;
    }

}
