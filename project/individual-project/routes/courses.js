var express = require("express");
var router = express.Router();
var dbconnection = require("../lib/db");

router.get("/", function (req, res, next) {
  const query = "SELECT * FROM course";
  dbconnection.query(query, function (err, rows) {
    if (err) {
      throw err;
    } else {
      res.render("courses", {
        title: "Courses",
        courses: rows,
      });
    }
  });
});

module.exports = router;
