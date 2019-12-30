import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {dqwuser} from "./dqwuser";


@Entity("dqwlanguage" ,{schema:"apitypeorm" } )
export class dqwlanguage {

    @Column("varchar",{ 
        nullable:false,
        primary:true,
        length:2,
        name:"lang"
        })
    lang:string;
        

    @Column("varchar",{ 
        nullable:true,
        length:50,
        name:"language"
        })
    language:string | null;
        

   
    @OneToMany(()=>dqwuser, (dqwuser: dqwuser)=>dqwuser.lang,{ onDelete: 'RESTRICT' ,onUpdate: 'CASCADE' })
    dqwusers:dqwuser[];
    
}
