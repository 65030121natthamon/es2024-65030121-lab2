db = new Mongo().getDB("mydatabase");

db.students.insertMany([
    { studentCode: "121", firstName: "aim", lastName: "milin", age: 21, email: "cheese@example.com" },
    { studentCode: "099", firstName: "cream", lastName: "cheese", age: 22, email: "cream@example.com" }
]);
