// We now import the connection object we exported in db.js.
const db = require("../controllers/db.js");

// More libraries…
const express = require("express");
const bodyParser = require("body-parser");

const router = express.Router();

router.use(bodyParser.json()); // Automatically parse all POSTs as JSON.
router.use(bodyParser.urlencoded({ extended: true })); // Automatically parse URL parameters

// Skeleton for POST request
router.post("/mypostapi", function (req, res) {
    let sql = `
        Your SQL Query Here
    `;
    db.query(sql, function (err, result) {
        console.log("Result: " + JSON.stringify(result));
        if (err) {
            res.send(err);
        } else {
            let returnedObject = {};
            // Your code here
            return res.result(returnedObject);
        }
    });
});

// Skeleton for GET Request
router.get("/mygetapi", function (req, res) {
    let sql = `
        Your SQL Query Here
    `;
    db.query(sql, function (err, result) {
        console.log("Result: " + JSON.stringify(result));
        if (err) {
            res.send(err);
        } else {
            let returnedObject = {};
            // Your code here 
            // You can use res.json(result); to send all data as a response 
            return res.result(returnedObject);
        }
    });
});

// ---

// Hello World
router.get("/health", function (req, res) {
    return res.send("ok");
});

// Basic Addition POST request
router.post("/add", function (req, res) {
    let body = req.body; // let is like var, but scoped
   
    let num1 = body.num1;
    let num2 = body.num2;

    let result = num1 + num2;

    return res.json({
        "result": result
    });
});

// Basic SQL GET Request
router.get("/countrycodes", function (req, res) {
    let sql = "Select * from Country;"

    db.query(sql, function (err, result) {
        console.log("Result: " + JSON.stringify(result));
        if (err) {
            res.send(err);
        } else {
            for (let i = 0; i < result.length; i++) {
                // You can do some processing on the data
                result[i]["name_length"] = result[i].length;
            }
            return res.send(result);
        }
    });
});

// router.get("/sendSMS", function(req, res) {
//     q = url.parse(req.url, true).query;
//     var sql = "INSERT INTO smsQ (phone, body) VALUES (";
//     sql = sql +q.phone+", "+q.message+")";
//     db.query(sql, function(err, result) {
//         if (err) throw err;
//         console.log("1 record inserted");
//         res.end("OK");
//     });
    
// });
// router.listen(3000, function() {
//     console.log("Example app listening on port 3000");
// });



// Export the created router
module.exports = router;
