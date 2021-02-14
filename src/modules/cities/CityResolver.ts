import {Resolver, Query, Mutation, Arg, Root, FieldResolver, Int, ID} from "type-graphql";
import {CityInput} from './addition/cityinput';
import {CityUpdateInput} from './addition/cityupdateinput';
import City from '../../models/city.model';


//const cityRepository = Sequelize.getRepository(City);


@Resolver(City)
export class CityResolver{
    
@Query(()=>[City])
cities( ){
     return City.findAll();
}
 
@Query(()=>City)
city(@Arg("id",()=>Int) id:number){
     return City.findOne({where:{id}});
}
  

@Mutation(()=>City)
async createCity(
    @Arg("data") {id,title,phone_code,phone_number}:CityInput):Promise<City>
    {    
   const city = await City.create({
       id, 
       title,
       phone_code,
       phone_number
   });

    return city;
 }
 
 

 @Mutation(()=>Boolean)
 async deleteCity(
 @Arg('id',()=>ID) id:number
 ){
     await City.destroy({where:{id}});
     return true;
 }
 
@Mutation(()=>Boolean)
async updateCity(@Arg('id',()=>Int) id:number,
                 @Arg('options', ()=>CityUpdateInput) options:CityUpdateInput
                 )
{
    await City.update(options,{where:{id}});
    return true;
}
  
}

module.exports = {CityResolver};