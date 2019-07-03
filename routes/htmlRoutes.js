var db = require("../models");

module.exports = function (app) {
  // Load index page
  app.get("/", function (req, res) {
    db.Clown.findAll({}).then(function (dbClowns) {
      res.render("index", {
        msg: "The killer clown apocalypse storE",
        examples: dbClowns
      });
    });
  });

  app.get("/food", function (req, res) { //references path to hbs file under views: /food.handlebars
    db.Clown.findAll({ where: { category: "food" } }).then(function (db_table_clowns_cat_food) { // db."" must match var "Clown" in models js file then function can be called whatever you want it to be. 
      res.render("food", { // the render must match with "" the path on app.get /food
        examples: db_table_clowns_cat_food // db."" must match var "Cart" in models js file then function can be called whatever you want it to be
      });
    });
  });

  

  app.get("/gear", function (req, res) {
    db.Clown.findAll({ where: { category: "gear" } }).then(function (db_table_clowns_cat_gear) {  // db."" must match var "Clown" in models js file then function can be called whatever you want it to be
      res.render("gear", {// the render must match with "" the path on app.get /gear
        examples: db_table_clowns_cat_gear
      });
    });
  });
  app.get("/weapons", function (req, res) {
    db.Clown.findAll({ where: { category: "weapons" } }).then(function (db_table_clowns_cat_weapons) {
      res.render("weapons", {
        examples: db_table_clowns_cat_weapons
      });
    });
  });

  app.get("/cart", function (req, res) {
    db.Cart.findAll({}).then(function (dbClowns) {
      res.render("cart", {
      cart_items: dbClowns //cart_items refers to cart.hbs and the each that cart.hbs is pulling
      });
    });
  });



  // Load example page and pass in an example by id
  app.get("/example/:id", function (req, res) {
    db.Example.findOne({ where: { id: req.params.id } }).then(function (dbExample) {
      res.render("example", {
        example: dbExample
      });
    });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function (req, res) {
    res.render("404");
  });

};
