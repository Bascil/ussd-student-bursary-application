# PHP Implementation for Student Bursary Application on USSD

This is a PHP implementation for a student bursary application on USSD based on the `Africa's Talking` API.This is developed on sandbox (testing) mode. To go live contact `Africa's Talking Ltd` on https://www.africastalking.com/contact.

## Prerequisites

For testing download `Africa's Talking` android app from Google Playstore or use the web interface at https://simulator.africastalking.com:1517/


## Installation

This project supports both composer dependency management tool and can also be used without composer

* Run the following command to clone this repo

```
git clone https://github.com/Bascil/ussd-student-bursary-application.git

```
OR

* Download the source code as zipped 

## Configuration

1. Import the cdf_bursary.sql file into MySQL database.

2. Configure the database connection using dbConnector.php file

``` 
<?php 
     /* Configure Database */

     $conn = 'mysql:dbname=cdf_bursary;host=127.0.0.1;'; //database name
     $user = 'root'; // your mysql user 
     $password = ''; // your mysql password

     //  Create a PDO instance that will allow you to access your database
     try {
        $db = new PDO($conn, $user, $password);
     }

    catch(PDOException $e) {
     //var_dump($e);
        echo("PDO error occurred");
    }

    catch(Exception $e) {
    //var_dump($e);
    echo("Error occurred");
    }
    
?>

```
3. Go to "https://account.africastalking.com/". Create an account then click on the `Go to Sandbox App` button

4. In your sandbox account under USSD > Create Channel , pick a shared service code  such as `*384*` and a channel such as 1100 i.e `*384*1100#` (Be sure to take a unique channel which is not taken already)

5. Configure your callback URL (the URL that points to your application) e.g http://www.example.com/folder_name/ussd_cdf.php then click `Create channel`. This assumes you are working from a live server whose domain name is example.com.Replace the domain name with your own.

6. If working from localhost you can set up a `Ngrok` server or `Localtunnel` to expose your localhost to the internet. Use the temporary URL provided as your callback e.g  http://6a71f5ec.ngrok.io/folder_name/ussd.php. This only works when the computer is on and connected to the internet. If using `Ngrok` free package this address may change every 8 hours. You could opt for a paid version at 5 US dollars a month.

7. Now test the USSD application using `Africa's Talking` android app downloaded from Google Playstore or use the web interface at https://simulator.africastalking.com:1517/ using the USSD code you configured i.e. `*384*1100#`

## Support

Need support using this package:-

Email basilndonga@gmail.com or skype me at `basilndonga`. Feel free to call me on my cellphone number `+254 728 986 084`

If you wish to be added as a contributor to this project let me know. If you wish to buy me a drink, paypal me through `simplebasil@gmail.com`

If you were inspired by this project, don't forget to follow me on twitter `@basilndonga` and on github as well.

If you wish to engage me as a developer for your project, feel free to contact me

## License

This USSD Package is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).

Happy coding!!!!!!!

