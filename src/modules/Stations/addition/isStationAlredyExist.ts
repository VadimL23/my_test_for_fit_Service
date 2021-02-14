import {
  registerDecorator,
  ValidationOptions,
  ValidatorConstraint,
  ValidatorConstraintInterface,
  ValidationArguments,
} from 'class-validator';
    
import Station from "../../../models/station.model";

@ValidatorConstraint({ async: true })
export class IsStationAlreadyExistConstraint implements ValidatorConstraintInterface {
  validate(title: string) {
    return Station.findOne({where:{title}}).then(station => {
      if (station) return false;
      return true;
    });
  }
}

export function IsStationAlreadyExist(validationOptions?: ValidationOptions) {
  return function (object: Object, propertyName: string) {
    registerDecorator({
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      constraints: [],
      validator: IsStationAlreadyExistConstraint,
    });
  };
}

module.exports = {IsStationAlreadyExist}

