  <?php
/**
Authors: Basil Ndonga
Title:     USSD Based CDF Bursary Application
Follow:  @basilndonga on Twitter
Version: 1.0.0
 **/

// Ensure ths code runs only after a POST from AT
if (!empty($_POST) && !empty($_POST['phoneNumber'])) {
    require_once 'dbConnector.php';

    // Receive the POST from AT
    $sessionId = $_POST['sessionId'];
    $serviceCode = $_POST['serviceCode'];
    $phoneNumber = $_POST['phoneNumber'];
    $text = $_POST['text'];

    // Explode the text to get the value of the latest interaction - think 1*1
    $textArray = explode('*', $text);
    $userResponse = trim(end($textArray));

    // Set the default level of the user
    $level = 0;

    // Check the user level from the DB and retain default level if none is found for this session
    $LevelQuery = $db->query("select level from session_levels where session_id ='" . $sessionId . " '");
    $LevelQuery->execute();

    if ($result = $LevelQuery->fetch(PDO::FETCH_ASSOC)) {
        $level = $result['level'];
    }

    // Check if the user is in the db
    $stmt = $db->query("SELECT * FROM student_details WHERE phone LIKE '%" . $phoneNumber . "%'");
    $stmt->execute();

    $userAvailable = $stmt->fetch(PDO::FETCH_ASSOC);

    // Check if the user is available (yes)->Serve the menu;
    if ($userAvailable['othernames'] or $userAvailable['phone'] != null) {

        // Serve the Services Menu (if the user is fully registered,level 0 and 1 serve the basic menus
        if ($level == 0 || $level == 1) {

            //Check that the user actually typed something, else demote level and start at home
            switch ($userResponse) {

                case "1":
                    if ($level == 1) {

                        // Find user details
                        $stmt = $db->query("SELECT * FROM student_details WHERE phone LIKE '%" . $phoneNumber . "%'");
                        $stmt->execute();

                        if ($stmt->rowCount() > 0) {
                            echo "CON ";

                            foreach ($stmt->fetchALL(PDO::FETCH_ASSOC) as $row) {

                                $date = $row['date_approved'];
                                $phpdate = strtotime($date);
                                $new_date = date("d/m/Y", $phpdate);

                                //Respond with Bursary Status
                                $bursary_status = "Your bursary of Ksh. " . $row['bursary_awarded'] . " " . $row['approved'] . " on " . $new_date . "\n";
                                echo $bursary_status;
                            }

                            $back = "0:Back\n";
                            echo $back;

                            //Update sessions to level 1
                            $stmt = $db->query("UPDATE `session_levels` SET `level`=1 where `session_id`='" . $sessionId . "'");
                            $stmt->execute();
                            // Print the response onto the page so that our gateway can read it
                            header('Content-type: text/plain');

                        } else {

                            $response = "CON You did not apply for bursary\n";
                            $response .= "0:Back\n";
                            //Update sessions to level 1
                            $stmt = $db->query("UPDATE `session_levels` SET `level`=1 where `session_id`='" . $sessionId . "'");
                            $stmt->execute();

                            // Print the response onto the page so that our gateway can read it
                            header('Content-type: text/plain');
                            echo $response;

                        }

                    }
                    break;

                case "2":
                    if ($level == 1) {

                        // Find user details
                        $stmt = $db->query("SELECT * FROM student_details WHERE phone LIKE '%" . $phoneNumber . "%'");
                        $stmt->execute();

                        if ($stmt->rowCount() > 0) {
                            echo "CON ";

                            foreach ($stmt->fetchALL(PDO::FETCH_ASSOC) as $row) {

                                $date = $row['date_sent'];
                                $phpdate = strtotime($date);
                                $new_date = date("d/m/Y", $phpdate);

                                //Respond with Disbursement Status
                                $bursary_status = "Your bursary of Ksh. " . $row['bursary_awarded'] . " " . $row['disbursement_status'] . " on " . $new_date . "\n";
                                echo $bursary_status;
                            }

                            $back = "0:Back\n";
                            echo $back;

                            //Update sessions to level 1
                            $stmt = $db->query("UPDATE `session_levels` SET `level`=1 where `session_id`='" . $sessionId . "'");
                            $stmt->execute();
                            // Print the response onto the page so that our gateway can read it
                            header('Content-type: text/plain');

                        } else {

                            $response = "CON Your bursary has not been disbursed\n";
                            $response .= "0:Back\n";
                            //Update sessions to level 1
                            $stmt = $db->query("UPDATE `session_levels` SET `level`=1 where `session_id`='" . $sessionId . "'");
                            $stmt->execute();

                            // Print the response onto the page so that our gateway can read it
                            header('Content-type: text/plain');
                            echo $response;

                        }

                    }
                    break;

                case "3":
                    if ($level == 1) {

                        // Find CDF news and events
                        $stmt = $db->query("SELECT DISTINCT title,description,cname,phone,date_posted FROM cdf_news_details WHERE date_posted >='" . date("Y/m/d") . "' AND (phone LIKE '%" . $phoneNumber . "%') ORDER BY date_posted ASC");
                        $stmt->execute();

                        if ($stmt->rowCount() > 0) {
                            echo "CON ";

                            foreach ($stmt->fetchALL(PDO::FETCH_ASSOC) as $row) {
                                //while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                                //extract($row);

                                $date = $row['date_posted'];
                                $phpdate = strtotime($date);
                                $new_date = date("d/m/Y", $phpdate);

                                //Display CDF News
                                $cdf_news = "-" . $row['description'] . "\n";
                                echo $cdf_news;
                            }

                            $back = "0:Back\n";
                            echo $back;

                            //Update sessions to level 1
                            $stmt = $db->query("UPDATE `session_levels` SET `level`=1 where `session_id`='" . $sessionId . "'");
                            $stmt->execute();
                            // Print the response onto the page so that our gateway can read it
                            header('Content-type: text/plain');

                        } else {

                            $response = "CON CDF news not available at the moment\n ";
                            $response .= "0:Back\n";
                            //Update sessions to level 1
                            $stmt = $db->query("UPDATE `session_levels` SET `level`=1 where `session_id`='" . $sessionId . "'");
                            $stmt->execute();

                            // Print the response onto the page so that our gateway can read it
                            header('Content-type: text/plain');
                            echo $response;
                        }

                    }
                    break;
                case "4":
                    if ($level == 1) {

                        // Find CDF Contact Details
                        $stmt = $db->query("SELECT DISTINCT phone_number,email,title,cname,phone FROM enquiries_details WHERE phone LIKE '%" . $phoneNumber . "%'");
                        $stmt->execute();

                        if ($stmt->rowCount() > 0) {
                            echo "CON ";

                            foreach ($stmt->fetchALL(PDO::FETCH_ASSOC) as $row) {

                                //Display Contacts Details
                                $contacts = "Phone Number: " . $row['phone_number'] . "\nEmail: " . $row['email'] . "\nContact: " . $row['title'] . "\n\n";
                                echo $contacts;
                            }

                            $back = "0:Back\n";
                            echo $back;

                            //Update sessions to level 1
                            $stmt = $db->query("UPDATE `session_levels` SET `level`=1 where `session_id`='" . $sessionId . "'");
                            $stmt->execute();
                            // Print the response onto the page so that our gateway can read it
                            header('Content-type: text/plain');

                        } else {

                            $response = "CON Contact details not available at the moment\n ";
                            $response .= "0:Back\n";
                            //Update sessions to level 1
                            $stmt = $db->query("UPDATE `session_levels` SET `level`=1 where `session_id`='" . $sessionId . "'");
                            $stmt->execute();

                            // Print the response onto the page so that our gateway can read it
                            header('Content-type: text/plain');
                            echo $response;
                        }

                    }
                    break;

                case "5":
                    if ($level == 1) {

                        // Find student details
                        $stmt = $db->query("SELECT * FROM student_details WHERE phone LIKE '%" . $phoneNumber . "%'");
                        $stmt->execute();

                        if ($stmt->rowCount() > 0) {
                            echo "CON ";

                            foreach ($stmt->fetchALL(PDO::FETCH_ASSOC) as $row) {

                                //Respond with User Details

                                $details = " Name: " . $row['surname'] . " " . $row['othernames'] . "\n";
                                $details .= " School: " . $row['school'] . "\n";
                                $details .= " County: " . $row['countyname'] . "\n";
                                $details .= " Constituency: " . $row['cname'] . "\n";
                                $details .= " Bursary Status: " . $row['approved'] . "\n";

                                echo $details;
                            }

                            $back = "0:Back\n";
                            echo $back;

                            //Update sessions to level 1
                            $stmt = $db->query("UPDATE `session_levels` SET `level`=1 where `session_id`='" . $sessionId . "'");
                            $stmt->execute();
                            // Print the response onto the page so that our gateway can read it
                            header('Content-type: text/plain');

                        } else {

                            $response = "CON Your bursary has not been disbursed\n";
                            $response .= "0:Back\n";
                            //Update sessions to level 1
                            $stmt = $db->query("UPDATE `session_levels` SET `level`=1 where `session_id`='" . $sessionId . "'");
                            $stmt->execute();

                            // Print the response onto the page so that our gateway can read it
                            header('Content-type: text/plain');
                            echo $response;

                        }

                    }
                    break;

                default:

                    // Serve the Main Menu
                    $stmt = $db->query("INSERT INTO `session_levels`(`session_id`,`phoneNumber`,`level`) VALUES('" . $sessionId . "','" . $phoneNumber . "',1)");
                    $stmt->execute();
                    //Serve our services menu
                    $response = "CON Welcome to " . $userAvailable['cname'] . " CDF\nChoose an option.\n";

                    $response .= " 1. Bursary Status\n";
                    $response .= " 2. Disbursement Status\n";
                    $response .= " 3. News and Events\n";
                    $response .= " 4. Enquiries\n";
                    $response .= " 5. My Details\n";

                    // Print the response onto the page so that our gateway can read it
                    header('Content-type: text/plain');
                    echo $response;
                    break;
            }

        }
    } else {
        $response = "END Sorry,your phone number is not in the CDF Bursary System.\n";
        // Print the response onto the page so that our gateway can read it
        header('Content-type: text/plain');
        echo $response;

    }
}

?>