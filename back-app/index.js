import express from "express"
import cors from "cors"
import mysql from "mysql"
import bcrypt from 'bcrypt';
const conn = mysql.createConnection({
    host: "localhost",
    user: "root",
    port:"3308",
    database:"event",
    
  });
  conn.connect(err=>{
    if(err) {
        console.log(err)
        return (err)
    }
    else{
        console.log("Database---->ok")
    }
  })
const app = express()
app.use(cors({
  origin:"http://localhost:3000"
}))
app.use(express.json())

app.post("/dataUser", (req,res)=>{
    let cikle = req.body.cikle -1;
    console.log(cikle +"--->cikle")
    var limit = req.body.limitFetch ;
    console.log(limit)
    var offset = cikle * limit;
    const sql = `SELECT * FROM users LIMIT ${limit} OFFSET ${offset}`;
    conn.query(sql, (error, results, fields) => {
        if (error) throw error;
        return res.json(results)
    });



})
app.post("/dataRegister",async (req,res)=>{
  var email = req.body.email
  var password = req.body.password
  var last_name = req.body.last_name
  var first_name = req.body.first_name
  var phone = req.body.phone
  var address = req.body.address
  var role = "user"
  var dateObj = new Date();
  var newdate = dateObj.getUTCFullYear() + "-" + dateObj.getUTCMonth() + 1 + "-" + dateObj.getUTCDate();
  const encode = await bcrypt.hash(password,10)
  console.log(encode + "--->encode")
    conn.connect(function(err) {
      let leng = 0
      var sql = `INSERT INTO users (role,email,last_name,first_name,phone, address,password,created_at) VALUES ("user","${email}","${last_name}","${first_name}","${phone}","${address}","${encode}","${newdate}")`;
         conn.query(`SELECT * FROM users WHERE email = "${email}"`, function (err, result) {
          if (err) throw err;
          const x = result.length
          console.log(x)
          if(x>0){
            console.log("there is already a page with this email")
            return res.json({ 
              message: 'there is already a page with this email',
              scses:false
           })
            
          }else{
            conn.query(sql,function (err, result) {
              if (err) throw err;
                 console.log(result.affectedRows="line53");
              });
              console.log("successfully")
              return res.json({ 
                message: 'successfully',
                scses:true
               })
          }




         });

    });

    
})

app.post('/userLogin', function(req, res) {
    console.log("start userLogin post in line 76")
    const email = req.body.email;
    const password = req.body.password;
    const sql = 'SELECT * FROM users WHERE email = ?';
    conn.query(sql, [email], async function(err, results) {
        if (err) throw err;

        if (results.length > 0) {
            const user = results[0];
            console.log(user);
            const validPass = await bcrypt.compare(password, user.password)
            if (validPass) {
                return res.json({
                    id:`${user.id}`,
                    // last_name:user.last_name,
                    // first_name:user.first_name,
                    // phone:user.phone,
                    // address:user.address,
                    // role:user.role,
                })

            } else {
                return res.json({
                    message:"Incorrect password"
                })
            }
        } else {
            return res.json({
                message:"User not found"
            })

        }
    });
});
app.listen(3001)