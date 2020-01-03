import { Request, Response } from "express";
import { getManager } from "typeorm";
import { validate } from "class-validator";
import { dqwuser } from "../entity/dqwuser";

export async function getAll (req: Request, res: Response) {
    
    const dqwuserRepository = getManager().getRepository(dqwuser);
    const result = await dqwuserRepository.find({ relations: ["profile", "state"] }).catch(error => console.log(error));
    res.json(result);

}

export async function getOne (req: Request, res: Response) {

    const dqwuserRepository = getManager().getRepository(dqwuser);
    const result = await dqwuserRepository.find({
                            where: {
                                EMP_NO: req.params.EMP_NO},
                                relations: ["profile","state"]
                            }).catch(error => console.log(error));
    res.json(result);

}

// https://typeorm.io/#/repository-api
export async function create (req: Request, res: Response) {

    const dqwuserRepository = getManager().getRepository(dqwuser);
    const newPost = dqwuserRepository.create(req.body);

    validate(newPost, { validationError: { target: false } }).then(errors => {
        if (errors.length > 0) {
            // console.log("validation failed. errors: ", errors);
            res.status(400).send({
                status: "Failure",
                data: { error: errors[0].constraints, validator: errors }
            });

        }else{
            // .save >> can be used fo insert or update
            // dqwuserRepository.save(newPost).then(() =>{

            dqwuserRepository.insert(newPost).then(() =>{
                res.status(201).send({
                    status: "OK",
                    data: { newPost }
                });
            }).catch(error => {
                // console.log(error);
                res.status(400).send({
                    status: "Failure",
                    data: { error: error.sqlMessage }
                });
            });
        }
    }).catch(
        error => console.log(error)
    );

}

export async function update (req: Request, res: Response) {

    const dqwuserRepository = getManager().getRepository(dqwuser);
    const newPost = dqwuserRepository.create(req.body);

    /**
     * update
     * >> repository.update({WHERE}, {SET});
     * await repository.update({ firstName: "Timber" }, { firstName: "Rizzrak" });
     * >> UPDATE user SET firstName = Rizzrak WHERE firstName = Timber
     */


    validate(newPost, { skipMissingProperties: true, validationError: { target: false } }).then(errors => {
        if (errors.length > 0) {
            res.status(400).send({
                status: "Failure",
                data: { error: errors[0].constraints, validator: errors }
            });

        } else {
            dqwuserRepository.update(req.params.id, req.body).then(() => {
                res.send({
                    status: "OK",
                    data: { newPost }
                });
            }).catch(error => {
                // console.log(error);
                res.status(400).send({
                    status: "Failure",
                    data: { error: error.sqlMessage }
                });
            });
        }
    }).catch(
        error => console.log(error)
    );

}

export async function destroy (req: Request, res: Response) {

    const dqwuserRepository = getManager().getRepository(dqwuser);

    dqwuserRepository.delete(req.params.id).then(() => {
        res.send({
            status: "OK",
            data: { 
                id: req.params.id
             }
        });
    }).catch(
        error => console.log(error)
    );

}

// https://typeorm.io/#/repository-api
// https://github.com/Kononnable/typeorm-model-generator#readme