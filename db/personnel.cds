namespace personnel.test.db;

using {planets.test.db.Planets as Planets} from '../db/planets';


using {
    cuid,
    managed
} from '@sap/cds/common';

entity Employees : cuid, managed {
    first_name : String(100);
    last_name  : String(100);
    position   : String(100);
    eligible   : Boolean;
    planet     : Association to Planets;
}
