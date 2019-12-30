import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {dqwstate} from "./dqwstate";
import {dqwpermission} from "./dqwpermission";
import {dqwuser} from "./dqwuser";


@Entity("dqwprofile" ,{schema:"apitypeorm" } )
@Index("PROFILE",["PROFILE",],{unique:true})
@Index("FK_dqwprofile_dqwstate",["state",])
export class dqwprofile {

    @PrimaryGeneratedColumn({
        type:"int", 
        name:"ID"
        })
    ID:number;
        

    @Column("varchar",{ 
        nullable:false,
        unique: true,
        length:40,
        name:"PROFILE"
        })
    PROFILE:string;
        

   
    @ManyToOne(()=>dqwstate, (dqwstate: dqwstate)=>dqwstate.dqwprofiles,{  nullable:false,onDelete: 'RESTRICT',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'STATE'})
    state:dqwstate | null;


   
    @OneToMany(()=>dqwpermission, (dqwpermission: dqwpermission)=>dqwpermission.profile,{ onDelete: 'CASCADE' ,onUpdate: 'CASCADE' })
    dqwpermissions:dqwpermission[];
    

   
    @OneToMany(()=>dqwuser, (dqwuser: dqwuser)=>dqwuser.profile,{ onDelete: 'RESTRICT' ,onUpdate: 'CASCADE' })
    dqwusers:dqwuser[];
    
}
