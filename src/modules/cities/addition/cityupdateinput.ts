import { Length, IsEmail} from "class-validator";
import {Field, InputType, ID, Int } from "type-graphql";
import {IsCityAlreadyExist} from './isCityAlredyExist';
import Station from '../../../models/station.model'

@InputType()
export class CityUpdateInput{

@Field(()=>ID, {nullable:true})
id?:number;

@Field(()=>String, {nullable:true})
@IsCityAlreadyExist({message:"Такой город уже есть в базе данных"})
title?:string;

@Field(()=>Int, {nullable:true})
phone_code?:number; 

@Field(()=>Int, {nullable:true})
phone_number?:number;
}

module.exports = {CityUpdateInput} 