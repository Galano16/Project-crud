var express = require("express");
var router = express.Router();
var dbconnection = require("../lib/db");

router.get("/", function (req, res, next) {
  const query = "SELECT * FROM assigment";
  dbconnection.query(query, function (err, rows) {
    if (err) {
      throw err;
    } else {
      res.render("assigments", {
        title: "Assigments",
        assigments: rows,
      });
    }
  });
});

module.exports = router;
