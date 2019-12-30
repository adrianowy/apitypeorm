import {BaseEntity,Column,Entity,Index,JoinColumn,JoinTable,ManyToMany,ManyToOne,OneToMany,OneToOne,PrimaryColumn,PrimaryGeneratedColumn,RelationId} from "typeorm";
import {dqwmenu} from "./dqwmenu";


@Entity("dqwmenulang" ,{schema:"apitypeorm" } )
@Index("menu_fk",["menuFk",],{unique:true})
export class dqwmenulang {

    @PrimaryGeneratedColumn({
        type: "int",
        name: "ID"
    })
    ID: number;

    @OneToOne(()=>dqwmenu, (dqwmenu: dqwmenu)=>dqwmenu.dqwmenulang,{  nullable:false,onDelete: 'CASCADE',onUpdate: 'CASCADE' })
    @JoinColumn({ name:'menu_fk'})
    menuFk:dqwmenu | null;


    @Column("varchar",{ 
        nullable:true,
        length:100,
        name:"title_PT"
        })
    title_PT:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:100,
        name:"title_EN"
        })
    title_EN:string | null;
        

    @Column("varchar",{ 
        nullable:true,
        length:100,
        name:"title_CH"
        })
    title_CH:string | null;
        
}
