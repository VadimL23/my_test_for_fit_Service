import {CityResolver} from './CityResolver';
import City from '../../models/city.model';

var SequelizeMock = require('sequelize-mock');
var dbMock = new SequelizeMock();


jest.mock("../../models/city.model");

beforeEach(() => {
    jest.resetAllMocks();
});


describe("given a new instance of the city model with params, the constructor has been mocked",()=>{
    
    const _ = new CityResolver();
    
 test('should be defined',()=>{
      expect(_.createCity).toBeDefined();
 });
    

    test('should create',async ()=>{
const result = await _.createCity({id:100,title:'title',phone_code:1111,phone_number:9999});
         expect(City).toHaveBeenCalled();
 });
    
    
})

