var express = require("express");
var router = express.Router();
var dbconnection = require("../lib/db");
var Student = require("../model/students");

router.get("/", function (req, res, next) {
  const query = "SELECT * FROM student";
  dbconnection.query(query, function (err, rows) {
    if (err) {
      throw err;
    } else {
      res.render("students", {
        title: "Students",
        students: rows,
      });
    }
  });
});

router.post("/", function (req, res, next) {
  res.redirect("students/add");
});

router.get("/add/", function (req, res, next) {
  res.render("students_new", { title: "Students - Add New" });
});

router.post("/add", function (req, res, next) {
  let student = new Student(
    undefined,
    req.body.firstName,
    req.body.lastName,
    req.body.birthOfDate,
    req.body.fees
  );
  const query = `INSERT INTO student (firstName,lastName,dateOfBirth,tuituonfees) VALUES ('${student.firstName}','${student.lastName}','${student.birthOfDate}','${student.fees}');`;
  console.log(query);
  dbconnection.query(query, function (err, status) {
    if (err) {
      throw err;
    } else {
      res.redirect("/students");
    }
  });
});

module.exports = router;
