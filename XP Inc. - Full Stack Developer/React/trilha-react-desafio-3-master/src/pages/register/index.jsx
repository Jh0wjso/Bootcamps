import { Link, useNavigate } from "react-router-dom";
import { MdEmail, MdLock, MdPerson2 } from "react-icons/md";
import { Button } from "../../components/Button";
import { Header } from "../../components/Header";
import { Input } from "../../components/Input";
import { api } from "../../services/api";

import { useForm } from "react-hook-form";

import {
  Container,
  Title,
  Column,
  TitleLogin,
  SubtitleLogin,
  EsqueciText,
  CriarText,
  Row,
  Wrapper,
} from "./styles";

const Register = () => {
  const navigate = useNavigate();

  const {
    control,
    handleSubmit,
    formState: { errors },
  } = useForm({
    reValidateMode: "onChange",
    mode: "onChange",
  });

  const onSubmit = async (formData) => {
    try {
      const { data } = await api.post("/users", formData);

      if (data.id) {
        navigate("/login");
        return;
      }

      alert("Erro ao cadastrar");
    } catch (e) {
      alert("Erro ao cadastrar");
    }
  };

  console.log("errors", errors);

  return (
    <>
      <Header />
      <Container>
        <Column>
          <Title>
            A plataforma para você aprender com experts, dominar as principais
            tecnologias e entrar mais rápido nas empresas mais desejadas.
          </Title>
        </Column>
        <Column>
          <Wrapper>
            <TitleLogin>Faça seu cadastro</TitleLogin>
            <SubtitleLogin>Faça seu login e make the change._</SubtitleLogin>
            <form onSubmit={handleSubmit(onSubmit)}>
              <Input
                placeholder="Nome Completo"
                leftIcon={<MdPerson2 />}
                name="nome"
                control={control}
              />

              <Input
                placeholder="E-mail"
                leftIcon={<MdEmail />}
                name="email"
                control={control}
              />
              {errors.email && <span>E-mail é obrigatório</span>}
              <Input
                type="password"
                placeholder="Senha"
                leftIcon={<MdLock />}
                name="senha"
                control={control}
              />
              {errors.senha && <span>Senha é obrigatório</span>}
              <Button title="Cadastrar" variant="secondary" type="submit" />
            </form>
            <Row>
              <SubtitleLogin>
              Ao clicar em "criar minha conta grátis", declaro que aceito as Políticas de Privacidade e os Termos de Uso da DIO.
              </SubtitleLogin>
            </Row>
            <Row>
              <EsqueciText>Já tem conta?</EsqueciText>
              <Link to={"/login"}>
                <CriarText>Fazer Login</CriarText>
              </Link>
            </Row>
          </Wrapper>
        </Column>
      </Container>
    </>
  );
};

export { Register };
