<?php
    require_once "Db.php";
    class CMS {
        static function getContent($id_key) {
            $language = isset($_COOKIE["language"]) ? $_COOKIE["language"] : "en";
            
            $db = new DB();
            return $db->getContentById($id_key);
            
            /*if ($id=="login") {
                if($language == "pl") {
                    return "loginPL";
                }
                if($language == "en") {
                    return "loginEN";
                }
                if($language == "de") {
                    return "loginDE";
                }
            }*/
            //print_r(Db::getContent())
        }
    }
?>