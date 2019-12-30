import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {dqwprofile} from "./dqwprofile";
import {dqwmenu} from "./dqwmenu";


@Entity("dqwpermission" ,{schema:"apitypeorm" } )
@Index("FK_dqwpermission_dqwprofile",["profile",])
@Index("FK_dqwpermission_dqwmenu",["menu",])
export class dqwpermission {

    @PrimaryGeneratedColumn({
        type:"int", 
        name:"ID"
        })
    ID:number;
        

   
    @ManyToOne(()=>dqwprofile, (dqwprofile: dqwprofile)=>dqwprofile.dqwpermissions,{  nullable:false,onDelete: 'CASCADE',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'PROFILE'})
    profile:dqwprofile | null;


   
    @ManyToOne(()=>dqwmenu, (dqwmenu: dqwmenu)=>dqwmenu.dqwpermissions,{  nullable:false,onDelete: 'CASCADE',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'MENU'})
    menu:dqwmenu | null;

}
