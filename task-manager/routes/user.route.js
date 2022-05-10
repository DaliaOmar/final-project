const express = require('express')
const User = require('../models/user.model')
const router = express.Router()


router.post('/signup',(req,res)=>{
    User.findOne({id:req.body.id},(err,user)=>{
        if(err){
            console.log(err)
            res.json(err)
        }else{
            if(user==null){
                const user = User({
                   name:req.body.name,
                   phone:req.body.phone,
                   id:req.body.id,
                    password:req.body.password,
                    repassword:req.body.repassword
                })
                user.save()
                .then((err)=>{
                    if(err){
                        console.log(err)
                        res.json(err)
                    }else{
                        console.log(user)
                        res.json(user)
                    }
                    
                })
            }else{

            res.json({
                message:'id is not avilable'
            })   
            }
        }
    })
    
})

router.post('/login',(req,res)=>{
    User.findOne({id:req.body.id,password:req.body.password},(err,user)=>{
        if(err){
            console.log(err)
            res.json(err)
        }else{
            res.json(user)   
        }
    })
})
module.exports = router