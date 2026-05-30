const express = require("express");
const app = express();
const cors = require("cors");
const { Pool } = require("pg");

const PORT = 5050;

app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(cors());


// POSTGRESQL CONNECTION
const pool = new Pool({
    user: "postgres",
    host: "localhost",
    database: "hostel_management",
    password: "postgres123",
    port: 5432
});


// TEST ROUTE
app.get("/", (req, res) => {

    res.send("Hostel Management Backend Running");
});


// LOGIN API
app.post("/login", async (req, res) => {

    try {

        const { userId, password } = req.body;

        const result = await pool.query(
            `SELECT * FROM users
             WHERE user_id = $1
             AND password = $2`,
            [userId, password]
        );
        console.log(result);

        if (result.rows.length > 0) {

            res.send({
                success: true,
                user: result.rows[0]
            });

        } else {

            res.send({
                success: false,
                message: "Invalid ID or Password"
            });
        }

    } catch (error) {

        console.log(error);

        res.send({
            success: false,
            message: "Server Error"
        });
    }
});


// GET ALL STUDENTS
app.get("/students", async (req, res) => {

    try {

        const result = await pool.query(
            `SELECT * FROM users
             WHERE role='student'`
        );

        res.send(result.rows);

    } catch (error) {

        console.log(error);

        res.send([]);
    }
});


// ROOM REQUEST
app.post("/roomRequest", async (req, res) => {

    try {

        const {
            student_id,
            current_room,
            requested_room,
            reason
        } = req.body;

        const result = await pool.query(

            `INSERT INTO room_requests
            (student_id, current_room, requested_room, reason)

            VALUES ($1, $2, $3, $4)

            RETURNING *`,

            [
                student_id,
                current_room,
                requested_room,
                reason
            ]
        );

        res.send({
            success: true,
            data: result.rows[0]
        });

    } catch (error) {

        console.log(error);

        res.send({
            success: false
        });
    }
});


// GET ROOM REQUESTS FOR MANAGER
app.get("/roomRequests", async (req, res) => {

    try {

        const result = await pool.query(
            `SELECT * FROM room_requests`
        );

        res.send(result.rows);

    } catch (error) {

        console.log(error);

        res.send([]);
    }
});


// SERVER
app.listen(PORT, () => {

    console.log(`Server running on port ${PORT}`);
});