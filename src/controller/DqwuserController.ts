import { Request, Response } from "express";
import { getManager } from "typeorm";
import { dqwuser } from "../entity/dqwuser";

export async function index (req: Request, res: Response) {
    
    const dqwuserRepository = getManager().getRepository(dqwuser);
    const result = await dqwuserRepository
                                .find()
                                .catch(error => console.log(error));
    res.json(result);
}

export async function empno(req: Request, res: Response) {

    console.log(req.params);

    const dqwuserRepository = getManager().getRepository(dqwuser);
    const result = await dqwuserRepository.find({
        where: {EMP_NO: req.params.EMP_NO},
        relations: ["profile","state"]
    })
                            .catch(error => console.log(error));
    res.json(result);
}

// https://github.com/Kononnable/typeorm-model-generator#readme