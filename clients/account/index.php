<?php

require_once("../../global/session_start.php");
ft_check_permission("client");
$request = array_merge($_POST, $_GET);
$account_id = $_SESSION["ft"]["account"]["account_id"];

// store the current selected tab in memory
$page = ft_load_field("page", "account_page", "main");

$tabs = array(
  "main"     => array("tab_label" => $LANG["word_main"], "tab_link" => "{$_SERVER["PHP_SELF"]}?page=main"),
  "settings" => array("tab_label" => $LANG["word_settings"], "tab_link" => "{$_SERVER["PHP_SELF"]}?page=settings")
    );

// ------------------------------------------------------------------------------------------

switch ($page)
{
  case "main":
    include("page_main.php");
    break;
  case "settings":
    include("page_settings.php");
    break;
  default:
    include("page_main.php");
    break;
}
