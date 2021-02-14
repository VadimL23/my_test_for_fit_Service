import {Table, Column, Model, HasMany,ForeignKey, PrimaryKey,AutoIncrement, BelongsTo } from 'sequelize-typescript';
import {ObjectType, Field, ID, Int} from 'type-graphql';
import City from './city.model';

@ObjectType()
@Table
export default class Station extends Model{

@Field(()=>ID)
@PrimaryKey
@AutoIncrement
@Column
id:number;


@Field()
@Column
name?:string;
    
@Field()
@Column
street:string;
    
@Field(()=>Int, {nullable:true})
@Column
number_street:number;
 
@Field()
@Column
literal?:string;
    
@Field()
@Column
office?:string;

@Field()
@ForeignKey(()=>City)
@Column
city_id:number;
 
@Field(()=>City,{nullable:true})
@BelongsTo(()=>City)
city:City;
}