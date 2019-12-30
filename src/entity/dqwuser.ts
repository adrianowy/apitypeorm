import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {dqwprofile} from "./dqwprofile";
import {dqwstate} from "./dqwstate";
import {dqwlanguage} from "./dqwlanguage";


@Entity("dqwuser" ,{schema:"apitypeorm" } )
@Index("EMP_NO",["EMP_NO",],{unique:true})
@Index("FK_dqwuser_dqwlanguage",["lang",])
@Index("FK_dqwuser_dqwprofile",["profile",])
@Index("FK_dqwuser_dqwstate",["state",])
export class dqwuser {

    @PrimaryGeneratedColumn({
        type:"int", 
        name:"ID"
        })
    ID:number;
        

    @Column("varchar",{ 
        nullable:false,
        unique: true,
        length:20,
        name:"EMP_NO"
        })
    EMP_NO:string;
        

    @Column("varchar",{ 
        nullable:false,
        length:80,
        name:"EMP_NAME"
        })
    EMP_NAME:string;
        

    @Column("varchar",{ 
        nullable:false,
        length:225,
        name:"PASSWORD"
        })
    PASSWORD:string;

   
    @ManyToOne(()=>dqwprofile, (dqwprofile: dqwprofile)=>dqwprofile.dqwusers,{  nullable:false,onDelete: 'RESTRICT',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'PROFILE'})
    profile:dqwprofile | null;


   
    @ManyToOne(()=>dqwstate, (dqwstate: dqwstate)=>dqwstate.dqwusers,{  nullable:false,onDelete: 'RESTRICT',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'STATE'})
    state:dqwstate | null;


    @Column("timestamp",{ 
        nullable:false,
        default: () => "CURRENT_TIMESTAMP",
        name:"LAST_UPD"
        })
    LAST_UPD:Date;
        

    @Column("varchar",{ 
        nullable:false,
        length:20,
        name:"UID1"
        })
    UID1:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:80,
        name:"EMAIL"
        })
    EMAIL:string | null;
        

    @Column("int",{ 
        nullable:true,
        default: () => "'0'",
        name:"SPECIAL_PERMISSION"
        })
    SPECIAL_PERMISSION:number | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:300,
        name:"HASH"
        })
    HASH:string | null;
        

   
    @ManyToOne(()=>dqwlanguage, (dqwlanguage: dqwlanguage)=>dqwlanguage.dqwusers,{  nullable:false,onDelete: 'RESTRICT',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'LANG'})
    lang:dqwlanguage | null;


    @Column("int",{ 
        nullable:true,
        default: () => "'1'",
        name:"FIRST_LOGIN"
        })
    FIRST_LOGIN:number | null;
        

    @Column("datetime",{ 
        nullable:true,
        name:"LAST_ACCESS"
        })
    LAST_ACCESS:Date | null;
        

    @Column("datetime",{ 
        nullable:true,
        name:"LAST_CHANGE_PASSWORD"
        })
    LAST_CHANGE_PASSWORD:Date | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:20,
        name:"IP"
        })
    IP:string | null;
        
}
