// Bring in our dependencies
const app = require('express')();
const routes = require('./routes');
const bodyParser = require('body-parser');
const cors = require('cors');
const jwtHelper = require('./helper/jwt');
const allowedOrigins = ['http://localhost:4200'];

//  Connect all our routes to our application
app.use(bodyParser.json());
app.use(
  bodyParser.urlencoded({
    extended: true,
  })
);
app.use(
  cors(
    (cors.CorsOptions = {
      origin: allowedOrigins,
    })
  )
);
app.use(jwtHelper());
app.use('/', routes);

// Turn on that server!
let server = app.listen(process.env.PORT || 4100, () => {
  var port = server.address().port;
  console.log(`App listening on port ${port}`);
});
