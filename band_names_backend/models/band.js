const { v4: uuidv4 } = require("uuid");

class Band {
  constructor(name = "no-name") {
    this.id = uuidv4(); //identificador unico
    this.name = name;
    this.votes = 0;
  }
}

module.exports = Band;
