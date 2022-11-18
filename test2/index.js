app.get("/getHWID2", (req, res) => {
    let HWID = req.headers['fingerprint', 'syn-user-identifier', 'sentinel-fingerprint', 'proto-user-identifier', 'shadow_hardware', 'krnl-hwid', 'exploit-guid'] // < Grabs the headers sent by syanpse using syn.request and finds syn-fingerprint ( there hwid ) you can also change it to the syn uid shit
    console.log(HWID) // logs it to console
  
  
    res.send(HWID) // sends a response back with there hwid
  })

  
