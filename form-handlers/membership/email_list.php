<?php
    include_once("../../headers/session_header.php");
/**
 * User: Evan
 * Date: 6/10/2015
 */
require_once("../../headers/security_header.php");

$request = $_SERVER['REQUEST_METHOD'];
if( permission_level() >= $djland_permission_levels['volunteer_leader']['level'] ) {
    switch($request){
        case "GET":
            if($_GET['from'] == "" || $_GET['to'] == ""){
                unset($_GET['from']);
                unset($_GET['to']);
            }
            //Get Permissions for a user
            if(isset($_GET['type']) && isset($_GET['value'])){
                $query = (isset($_GET['from'])  && isset($_GET['to']))==true ? "SELECT m.email FROM membership AS m INNER JOIN membership_years AS my ON m.id = my.member_id WHERE m.create_date >=:from AND m.create_date <= :to AND my.paid = '1'" : "SELECT m.email FROM membership AS m INNER JOIN membership_years AS my ON m.id = my.member_id WHERE my.membership_year=:year AND my.paid='1'";

                switch($_GET['type']){
                    case 'interest':
                        if(in_array($_GET['value'],$djland_interests) ) $query .=" AND my.{$_GET['value']}='1'";
                        break;
                    case 'member_type':
                        if(in_array($_GET['value'],$djland_member_types)) $query .= " AND member_type=:value";

                        break;
                    default:
                        http_response_code(400);
                        echo json_encode("Incorrect value given");
                        exit();
                        break;
                }
                //Prepare statement
                $statement = $pdo_db->prepare($query);

                if(isset($_GET['from']) && isset($_GET['to'])){
                    $statement->bindValue(':from',$_GET['from']);
                    $statement->bindValue(':to',$_GET['to']);
                }else{
                    $statement->bindvalue(':year',$_GET['year']);
                }

                switch($_GET['type']){
                    case 'member_type':
                        if($_GET['value'] != 'all' ) $statement->bindValue(':value',$_GET['value']);
                        break;
                    default:
                        break;
                }

                //$statement->debugDumpParams();

                //Try to execute statement
                try{
                    $statement->execute();
                    http_response_code(200);
                    $emails = new stdClass();
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);
                    foreach($result as $key=>$value){
                        $emails->emails[] = $value['email'];
                    }
                    echo json_encode($emails);
                }catch(PDOException $pdoe){
                    http_response_code(404);
                    echo json_encode($pdoe->getMessage());
                    exit();
                }
            }else{
                http_response_code(400);
                echo json_encode("Missing type of email list, or value");
                exit();
            }
            break;
        case "POST":
            http_response_code(501);
            exit();
        case "PUT":
            http_response_code(501);
            exit();
        case "DELETE":
            http_response_code(501);
            exit();
        default:
            http_response_code(400);
            exit();
    }
}else{
    http_response_code(401);
    echo json_encode("You do not have permission");
}
?>
