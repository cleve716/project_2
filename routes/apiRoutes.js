var db = require("../models");

module.exports = function(app) {
  // Get all clowns table individual items
  app.get("/api/clowns", function(req, res) { //.get is created so api/clowns matches table name "clowns" in MySQL
    db.Clown.findAll({}).then(function(dbTableClowns) { // db."" must match var "Clown" in models js file then function can be called whatever you want it to be
      res.json(dbTableClowns); // must match above funtion name
    });
  });

  // get all carts table individual items
  app.get("/api/carts", function(req, res) { //.get is created so api/carts matches table in MySQL
    db.Cart.findAll({}).then(function(dbTableCart) { // db."" must match var "Cart" in models js file then function can be called whatever you want it to be
      res.json(dbTableCart); // must match above funtion name
    });
  });

  // Create a new example
  app.post("/api/examples", function(req, res) {
    db.Example.create(req.body).then(function(dbExample) {
      res.json(dbExample);
    });
  });

  // Delete an example by id
  app.delete("/api/examples/:id", function(req, res) {
    db.Example.destroy({ where: { id: req.params.id } }).then(function(dbExample) {
      res.json(dbExample);
    });
  });
};
