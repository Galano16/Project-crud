var express = require("express");
var router = express.Router();
var dbconnection = require("../lib/db");
var Trainer = require("../model/trainers");

router.get("/", function (req, res, next) {
  const query = "SELECT * FROM trainer";
  dbconnection.query(query, function (err, rows) {
    if (err) {
      throw err;
    } else {
      res.render("trainers", {
        title: "Trainers",
        trainers: rows,
      });
    }
  });
});

router.post("/", function (req, res, next) {
  res.redirect("/trainers/add");
});

router.get("/add/", function (req, res, next) {
  res.render("trainers_new", { title: "Trainers - Add New" });
});

router.post("/add", function (req, res, next) {
  let trainer = new Trainer(
    undefined,
    req.body.firstName,
    req.body.lastName,
    req.body.subject,
    req.body.student_id
  );
  const query = `INSERT INTO trainer (firstName,lastName,subject,student_id) VALUES ('${trainer.firstName}','${trainer.lastName}','${trainer.subject}','${trainer.student_id}');`;
  console.log(query);
  dbconnection.query(query, function (err, status) {
    if (err) {
      throw err;
    } else {
      res.redirect("/trainers");
    }
  });
});

module.exports = router;
