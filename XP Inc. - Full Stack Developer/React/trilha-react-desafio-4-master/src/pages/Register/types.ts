export interface IFormLogin {
    name: string;
    email: string;
    password: string;
}

export const defaultValues: IFormLogin = {
    name: '',
    email: '',
    password: ''
}