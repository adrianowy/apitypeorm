import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {dqwmenu} from "./dqwmenu";


@Entity("dqwsystem" ,{schema:"apitypeorm" } )
@Index("SYSTEM",["SYSTEM",],{unique:true})
export class dqwsystem {

    @PrimaryGeneratedColumn({
        type:"int", 
        name:"ID"
        })
    ID:number;
        

    @Column("varchar",{ 
        nullable:false,
        unique: true,
        length:50,
        name:"SYSTEM"
        })
    SYSTEM:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:70,
        name:"URL"
        })
    URL:string | null;
        

   
    @OneToMany(()=>dqwmenu, (dqwmenu: dqwmenu)=>dqwmenu.system,{ onDelete: 'RESTRICT' ,onUpdate: 'CASCADE' })
    dqwmenus:dqwmenu[];
    
}
