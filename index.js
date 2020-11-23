const express = require('express')
const app = express()


const PORT = 80
const RELEASE = currentTimeStamp()
console.log('------------------------------------')
console.log(`starting a Node.js application release:${RELEASE}. Listening on port ${PORT}`)
console.log('------------------------------------')

app.use(express.static('public'))
app.get('/release', function(req,res) {
    res.json({release:RELEASE})
})

app.listen(PORT)


function currentTimeStamp() {
    var dateFormat = require('dateformat');
    var now = new Date();
    return dateFormat(now, "mm-d-yyyy-h:MM");
}