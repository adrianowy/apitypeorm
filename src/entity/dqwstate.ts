import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {dqwmenu} from "./dqwmenu";
import {dqwprofile} from "./dqwprofile";
import {dqwuser} from "./dqwuser";


@Entity("dqwstate" ,{schema:"apitypeorm" } )
@Index("STATE",["STATE",],{unique:true})
export class dqwstate {

    @PrimaryGeneratedColumn({
        type:"int", 
        name:"ID"
        })
    ID:number;
        

    @Column("varchar",{ 
        nullable:false,
        unique: true,
        length:20,
        name:"STATE"
        })
    STATE:string;
        

   
    @OneToMany(()=>dqwmenu, (dqwmenu: dqwmenu)=>dqwmenu.state,{ onDelete: 'RESTRICT' ,onUpdate: 'CASCADE' })
    dqwmenus:dqwmenu[];
    

   
    @OneToMany(()=>dqwprofile, (dqwprofile: dqwprofile)=>dqwprofile.state,{ onDelete: 'RESTRICT' ,onUpdate: 'CASCADE' })
    dqwprofiles:dqwprofile[];
    

   
    @OneToMany(()=>dqwuser, (dqwuser: dqwuser)=>dqwuser.state,{ onDelete: 'RESTRICT' ,onUpdate: 'CASCADE' })
    dqwusers:dqwuser[];
    
}
