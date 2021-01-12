const connection = require('./connection')

class DB {
    constructor(connection) {
        this.connection = connection
    }

    // make functions that read,create new, updadte, delete
    viewDepartments() {
        return this.connection.query(
            'SELECT * FROM department;'
        )
    }

    createDepartment(department) {
        return this.connection.query(
            'INSERT INTO department SET ?', department
        )
    }
}

module.exports = new DB(connection)