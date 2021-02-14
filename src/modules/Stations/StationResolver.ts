import {Resolver, Query, Mutation, Arg, Root, FieldResolver, Int, ID} from "type-graphql";
import {Sequelize} from 'sequelize';
import {StationInput} from './addition/stationinput';
import {StationUpdateInput} from './addition/stationupdateinput';
import Station from '../../models/station.model';



@Resolver(Station)
export class StationResolver{
    
@Query(()=>[Station])
stations(){
     return Station.findAll();
}
 

 
@Query(()=>Station || Boolean)
async station(@Arg("id",()=>Int) id:number){
 const station =  await Station.findOne({where:{id}});
if (station) return station;
return false;
}




@Mutation(()=>Station)
async createStation(
    @Arg("data") {
        id,
        name,
        street,
        number_street,
        literal,
        office,
        city_id}:StationInput):Promise<Station>
    {    
   const station = await Station.create({
     id,
     name,
     street,
     number_street,
     literal,
     office,
     city_id
    });
    
    return station;
 }
 
  @Mutation(()=>Boolean)
 async deleteStation(
 @Arg('id',()=>ID) id:number
 ){

 await Station.destroy({where:{id}});
   return true;
 
}
 

@Mutation(()=>Boolean)
async updateStation(@Arg('id',()=>Int) id:number,
                 @Arg('options', ()=>StationUpdateInput) options:StationUpdateInput
                 )
{
    await Station.update(options,{where:{id}});
    return true;
}
  
}

module.exports = {StationResolver};