import * as DqwuserController from "./controller/DqwuserController";

export const AppRoutes = [
    {
        path: "/dqwuser",
        method: "get",
        action: DqwuserController.index
    },
    {
        path: "/dqwuser/:EMP_NO",
        method: "get",
        action: DqwuserController.empno
    }
];