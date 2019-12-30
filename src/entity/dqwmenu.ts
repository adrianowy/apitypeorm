import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {dqwsystem} from "./dqwsystem";
import {dqwstate} from "./dqwstate";
import {dqwmenulang} from "./dqwmenulang";
import {dqwpermission} from "./dqwpermission";


@Entity("dqwmenu" ,{schema:"apitypeorm" } )
@Index("FK_dqwmenu_dqwmenu",["father",])
@Index("FK_dqwmenu_dqwsystem",["system",])
@Index("FK_dqwmenu_dqwstate",["state",])
export class dqwmenu {

    @PrimaryGeneratedColumn({
        type:"int", 
        name:"ID"
        })
    ID:number;
        

   
    @ManyToOne(()=>dqwmenu, (dqwmenu: dqwmenu)=>dqwmenu.dqwmenus,{ onDelete: 'RESTRICT',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'FATHER'})
    father:dqwmenu | null;


    @Column("varchar",{ 
        nullable:false,
        length:50,
        name:"TITLE"
        })
    TITLE:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:40,
        name:"ICON"
        })
    ICON:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:50,
        name:"HREF"
        })
    HREF:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:20,
        name:"CLASS"
        })
    CLASS:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:20,
        name:"TARGET"
        })
    TARGET:string | null;
        

    @Column("int",{ 
        nullable:true,
        name:"S"
        })
    S:number | null;
        

    @Column("int",{ 
        nullable:true,
        name:"LEVEL"
        })
    LEVEL:number | null;
        

   
    @ManyToOne(()=>dqwsystem, (dqwsystem: dqwsystem)=>dqwsystem.dqwmenus,{  nullable:false,onDelete: 'RESTRICT',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'SYSTEM'})
    system:dqwsystem | null;


   
    @ManyToOne(()=>dqwstate, (dqwstate: dqwstate)=>dqwstate.dqwmenus,{  nullable:false,onDelete: 'RESTRICT',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'STATE'})
    state:dqwstate | null;


   
    @OneToMany(()=>dqwmenu, (dqwmenu: dqwmenu)=>dqwmenu.father,{ onDelete: 'RESTRICT' ,onUpdate: 'CASCADE' })
    dqwmenus:dqwmenu[];
    

   
    @OneToOne(()=>dqwmenulang, (dqwmenulang: dqwmenulang)=>dqwmenulang.menuFk,{ onDelete: 'CASCADE' ,onUpdate: 'CASCADE' })
    dqwmenulang:dqwmenulang | null;


   
    @OneToMany(()=>dqwpermission, (dqwpermission: dqwpermission)=>dqwpermission.menu,{ onDelete: 'CASCADE' ,onUpdate: 'CASCADE' })
    dqwpermissions:dqwpermission[];
    
}
