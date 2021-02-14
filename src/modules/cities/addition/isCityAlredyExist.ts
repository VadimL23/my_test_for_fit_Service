import {
  registerDecorator,
  ValidationOptions,
  ValidatorConstraint,
  ValidatorConstraintInterface,
  ValidationArguments,
} from 'class-validator';
    
import City from "../../../models/city.model"

@ValidatorConstraint({ async: true })
export class IsCityAlreadyExistConstraint implements ValidatorConstraintInterface {
  validate(title: string) {
    return City.findOne({where:{title}}).then(city => {
      if (city) return false;
      return true;
    });
  }
}

export function IsCityAlreadyExist(validationOptions?: ValidationOptions) {
  return function (object: Object, propertyName: string) {
    registerDecorator({
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      constraints: [],
      validator: IsCityAlreadyExistConstraint,
    });
  };
}

module.exports = {IsCityAlreadyExist}

