import * as DqwuserController from "./controller/DqwuserController";

export const AppRoutes = [
    {
        path: "/dqwuser",
        method: "get",
        action: DqwuserController.getAll
    },
    {
        path: "/dqwuser/:EMP_NO",
        method: "get",
        action: DqwuserController.getOne
    },
    {
        path: "/dqwuser",
        method: "post",
        action: DqwuserController.create
    },
    {
        path: "/dqwuser/:id",
        method: "put",
        action: DqwuserController.update
    },
    {
        path: "/dqwuser/:id",
        method: "delete",
        action: DqwuserController.destroy
    }
];