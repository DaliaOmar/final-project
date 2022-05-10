const mongodb = require('mongodb')
const Schema = mongodb.Schema

const newSchema = new Schema({
    name:String,
    phone:String,
    id:String,
    password:String,
    repassword:String,

})

module.exports = mongodb.model('User',newSchema)