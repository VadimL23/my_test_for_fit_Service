import {Table, Column, Model, HasMany,ForeignKey, PrimaryKey, AutoIncrement} from 'sequelize-typescript';
import {ObjectType, Field, ID} from 'type-graphql';

import Station from './station.model';

@ObjectType()
@Table
export default class City extends Model{

@Field(()=>ID)
@PrimaryKey
@AutoIncrement
@Column
id:number;


@Field()
@Column
title:string;

@Field()
@Column
phone_code:number; 

@Field()
@Column
phone_number:number;
 
@Field(type=>[Station])
@HasMany(()=>Station)
stations:Station[];
 

@Field()
@Column
createdAt:Date;
 
@Field()
@Column
updatedAt:Date;
}



    

/*    const Station = sequelize.define('station',{

                              
   references: {
      
     model: City,
     key: 'id',

     deferrable: DataTypes.Deferrable.INITIALLY_IMMEDIATE
   }
 },
});*/
    



    
//module.exports = {City,Station};
//module.exports.City = City;
//module.exports.Station = Station;


