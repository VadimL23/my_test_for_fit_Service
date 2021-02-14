import { Length, IsEmail} from "class-validator";
import {Field, InputType, ID, Int } from "type-graphql";
import {IsStationAlreadyExist} from './isStationAlredyExist';
import Station from '../../../models/station.model'


@InputType()
export class StationUpdateInput{

@Field(()=>ID,{nullable:true})
id?:number;


@Field(()=>String,{nullable:true})
@IsStationAlreadyExist({message:"Такая станция уже есть в базе данных"})
name?:string;

@Field(()=>String,{nullable:true})
street?:string;
    
@Field(()=>Int,{nullable:true})
number_street?:number;
 
@Field(()=>String,{nullable:true})
literal?:string;
    
@Field(()=>String,{nullable:true})
office?:string;

@Field(()=>Int,{nullable:true})
city_id?:number;
}
    
module.exports = {StationUpdateInput} 



