// TODO: Include packages needed for this application
const inquirer = require('inquirer');
// const db = require('./db/')
// TODO: Create an array of questions for user input
 const userChoices = [
    'view all departments',
    'view all roles',
    'view all employees',
    'add a department',
    'add a role',
    'add an employee',
    'update an employee role',
]
const questions = [
    {
        type: 'list',
        name: 'selections',
        message: 'select an action?',
        choices: userChoices
    },
    
];
function getHelp(){
    console.log('smth');
}
function init() {
    inquirer.prompt(questions)
    .then(answers =>{
    if(questions.choices === userChoices[0])

    if(questions.choices === userChoices[1]) console.log('wow that works1');
    
    if(questions.choices === userChoices[2]) console.log('wow that works2');
    
    if(questions.choices === userChoices[3]) console.log('wow that works3');
    
    if(questions.choices === userChoices[4]) console.log('wow that works4');
    })}
// Function call to initialize app
init();


//********************************************SQL STUFF********************************************//


