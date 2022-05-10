const mongodb = require('mongodb');
const MongoClient = mongodb.MongoClient
const connectionUrl = 'mongodb://localhost:27017';
const databaseName = 'task-manager';
MongoClient.connect(connectionUrl,{useNewUrlParser:true},(error,client)=>{
    if(error){
        return console.log('Unable to connect to database')
    }
  //  console.log('connected correctly')
    const db = client.db(databaseName)
    db.collection('users').insertOne({
       name :'Dalia',
       id : '333' 
    }, (error,result)=>{
        if(error){
            return console.log('Unable to insert user')
        }
        return console.log(result.ops)
    }
    )
})
