
// Modules
const express = require('express') // Required for server
const app = express() // Init express
const bP = require('body-parser') // Idk how to explain
const crypto = require('crypto') // Used for hashing


// Secret keys
const secretkey1 = 'GYW6dk8{Z5rnzDPHSaR-fB7E'; // Make sure it is atleast 24 characters long and is hard to rewrite.
const secretkey2 = 'GzsTENr2m9PU-XiBU5oX3Dgj'; // Same as above
const secretkey3 = "JHTYRJR5GzsTENr2m9PU-XiBU5oX3Dgj"; // Same as above


// Exploit fingerprints, current HWID.
const Fingerprints =
{
    Syn: 'Syn-Fingerprint',
    Krnl: 'Krnl-Hwid',
    SW: 'fingerprint',
    HWID: '' // Dont put 
}


app.get("/wl/getHWID2", (req, res) => {
    let HWID = req.headers['syn-fingerprint'] // < Grabs the headers sent by syanpse using syn.request and finds syn-fingerprint ( there hwid ) you can also change it to the syn uid shit
 
  
    res.send(HWID) // sends a response back with there hwid
  })



// Makes it so express uses body parser
app.use(bP());

// Hashing function
const hmac = (secret, data) => {
    const hash = crypto.createHash('sha512');
    hash.update(secret + data + secret);
    return hash.digest('hex').toString();
};

// Main server
app.get('/wl/getHwid', function(req, res) { // Get HWID
    if (req.header(Fingerprints.Syn)) { // If the user is using synapse
        Fingerprints.HWID = req.header(Fingerprints.Syn); // Put their HWID in the array
    } else if (req.header(Fingerprints.SW)) { // If the user is using scriptware
        Fingerprints.HWID = req.header(Fingerprints.SW); // Put their HWID in the array
    } else if (req.header(Fingerprints.Krnl)) { // If the user is using Krnl
        Fingerprints.HWID = req.header(Fingerprints.Krnl); // Put their HWID in the array
    } else { // If the user's exploit is not supported
        Fingerprints.HWID = 'unsupported';
    };



    res.end('') // end
})





app.get('/wl/check', async function(req, res) { // Checks if the HWID is in the database
    const HWIDS = 
    [
        '64464363336',
        '441646e623f29d7d7cf45ae2a383ddef242f4ab6914a61114fb4143ace1f23f0b5239cb7205f3cf22970a6e56e3ce83f48f14fa679994b09c3e6f8b4eb2e001d'
        




    ]; // Our HWID 'database' array

    if (HWIDS.includes(Fingerprints.HWID)) { // If the HWID 'database' array includes the user's HWID
        res.write(hmac('success' + secretkey2, secretkey1, secretkey1 + 'whitelisted')); // Write a response (static)
        res.end('') // end
    } else { // If it doesn't
        res.write('Not Whitelisted!') // Write a response, that the user is not whitelisted
        res.end('') // end
    }
})

//// for now we dont use this
const port = 5000;

app.listen(port, () => {
  console.log('Listening to: ', port)
})








