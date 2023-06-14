
// mysql2
import mysql from 'mysql2'
export default async function handler(req, res) {
    const { name, location, date, phoneNumber } = await req.body
    console.log(`db server host :${process.env.DB_HOST}`)
    const connection = mysql.createConnection({
        user: process.env.DB_USERNAME,
        password: process.env.DB_PASSWORD,
        host: process.env.DB_HOST,
        port: process.env.DB_PORT,
        database: process.env.DB_DATABASE
    });
    connection.connect((err) => {
        const dataTrnsfer = `INSERT INTO doctor_appointment(name,location,date,phoneNumber)
                        VALUES("${name}","${location}","${date}","${phoneNumber}")`
                    connection.query(dataTrnsfer, function (err, result) {
                       
                    })
    })
}
