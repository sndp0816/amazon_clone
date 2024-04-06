const express = require('express');
const adminRouter = express.Router();
const admin = require('../Middleware/admin');
const Product = require('../models/product');


//creating admin middleware

adminRouter.post('/admin/add-product',admin, async(req,res) => {
    try{
        const {
            name,
            description,
            quantity,
            image,
            category,
            price,
            
        } =req.body;

        let product = Product({
            name,
            description,
            quantity,
            image,
            category,
            price,
        });

        
        product = await product.save();
        res.json(product);

    }
    catch(e){
        res.status(500).json({error : e.message});
    }
});


module.exports = adminRouter;