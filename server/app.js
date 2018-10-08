const express = require('express');
const cors = require('cors');
const mysql = require('mysql');
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'nuarca'
});
connection.connect();

const app = express();

app.use(cors());
app.set('port', process.env.PORT || 3000);

app.get('/', (req, res) => {
    const query = "SELECT * FROM orderlist o, custlist c, replist r WHERE o.repId = r.repId AND o.custId = c.custId";

    connection.query(query, (err, result) => {
        if (err) throw err;
        res.send(result);
    });
})

app.listen(app.get('port'), ()=> {
    console.log('API endpoint started on port ' + app.get('port'));
})