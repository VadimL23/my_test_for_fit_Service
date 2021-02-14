import "reflect-metadata";
import {ApolloServer} from "apollo-server-express";
import * as Express from "express";
import { buildSchema, Resolver,Query} from "type-graphql";
import { Table, Model } from 'sequelize-typescript';
import { DataTypes} from "sequelize";
import {Sequelize} from "sequelize-typescript";
import City from './models/city.model'
import {CityResolver} from './modules/cities/CityResolver';
import {StationResolver} from './modules/stations/StationResolver';


const sequelize = new Sequelize(
    {
        database: 'fit_service_db',
        dialect: 'mysql',
        username: 'root',
        password: 'toor',
        storage: ':memory:',
        models: [__dirname + '/**/*.model.ts'] // or [Player, Team],
});



/* -------------Testing the connection and synchronize --------*/

(async ()=>{
try {
  await sequelize.authenticate();
  console.log('Connection has been established successfully.');
    
sequelize.sync().then(result=>{
  console.log(result);
})
.catch(err=> console.log(err));
    
} catch (error) {
  console.error('Unable to connect to the database:', error);
}

})();

/* -------------Testing the connection  --------*/



(async () =>{
    
const schema = await buildSchema({
  resolvers: [ CityResolver, StationResolver],
});
    
   const  apolloServer = new ApolloServer({schema});
    const app = Express();
    apolloServer.applyMiddleware({app});
    
app.get("/", function(req,res){res.send("<h1>testing.. </h1>")});

app.listen(3000,()=>{console.log("Server started")});

})();


