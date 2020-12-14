const connection = require('./connection')

class DB {
    constructor(connection) {
        this.connection = connection
    }

    // make functions that read,create new, updadte, delete

    createDepartment() {
        return this.connection.query(
            'INSERT INTO department SET ?', department
        )
    }
}

module.exports = new DB(connection)