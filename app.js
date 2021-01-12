
const db = require('./db/DB.js')
const inquirer = require('inquirer');

inquirer
    .prompt([
        /* Pass your questions in here */
        {
            name: 'departmentName',
            type: 'input',
            message: 'What is the name of the new department?'
        }
    ])
    .then(answers => {
        // Use user feedback for... whatever!!
        db.createDepartment({ name: answers.departmentName })
        console.log(answers.departmentName + ' was successfully added!')
        // console.log(db.viewDepartments())
    })
    .catch(error => {
        if (error.isTtyError) {
            // Prompt couldn't be rendered in the current environment
        } else {
            // Something else when wrong
        }
    });
