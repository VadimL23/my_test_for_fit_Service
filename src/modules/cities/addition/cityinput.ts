import { Length, IsEmail} from "class-validator";
import {Field, InputType, ID, Int } from "type-graphql";
import {IsCityAlreadyExist} from './isCityAlredyExist';
import Station from '../../../models/station.model'


@InputType()
export class CityInput{

@Field(()=>ID)
id:number;

@Field()
@IsCityAlreadyExist({message:"Такой город уже есть в базе данных"})
title:string;

@Field(()=>Int)
phone_code:number; 

@Field(()=>Int)
phone_number:number;
 

 
}

module.exports = {CityInput} 