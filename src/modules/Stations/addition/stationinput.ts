import { Length, IsEmail} from "class-validator";
import {Field, InputType, ID, Int } from "type-graphql";
import {IsStationAlreadyExist} from './isStationAlredyExist';
import Station from '../../../models/station.model'; 


@InputType()
export class StationInput{

@Field(()=>ID)
id:number;


@Field(()=>String)
@IsStationAlreadyExist({message:"Такая станция уже есть в базе данных"})
name:string;

@Field(()=>String)
street:string;
    
@Field(()=>Int,{nullable:true})
number_street:number;
 
@Field(()=>String)
literal?:string;
    
@Field(()=>String)
office?:string;

@Field(()=>Int)
city_id:number;


@Field(()=>String)
city_title:string;
}
    
module.exports = {StationInput} 



