const mongoose = require('mongoose');

const userSchema = mongoose.Schema({


    name :{
        require: true,
        type: String,
        trim: true
    },

    description:{
        require:true,
        type: String,
        trim: true
    },
    quantity:{
        require:true,
        type: Number,
        
    },

    image:[{
        require:true,
        type: String,
        
    }],

    category:{
        require:true,
        type: String,
        trim: true
    },

    price:{
        require:true,
        type: Number,
        
    }


});

const Product = mongoose.model('Product', userSchema);
module.exports = Product;