#Data alteração 21243
<?php
/***
 * Este arquivo foi criado com o intuido de permitir que
 * o instalado Windows ou linux copiem as bibliotecas do ftp.
 */

$_host            = 'ftp.zanthus.com.br';

if (empty($argv[1])) {
    echo "Por favor informe a pasta onde o aplicativo foi instalado\n";
    die();
}

echo "Iniciando o processo que baixa os arquivos do FTP \n";
//O caminho ser� passado
$_caminho         = $argv[1];



/**
 * Class ftp_instalador
 * Criei esta classe pois faz inumeras tentativas,
 * e n�o queria a depend�ncia do Manager nela.
 *
 */
class ftp_instalador {

    protected  $_conexao        = null;
    protected  $_lista_dir      = Array();
    protected  $_cont_erro      = 0;
    protected  $_cont_sucesso   = 0;
    public     $_caminho_ftp    = "";
    protected  $_caminho_local  = "";
    protected  $_max_tentativas = 5;
        protected  $_host                       = "";
    public     $_usuario_ftp    = "";
    protected  $_senha_ftp      = "";

    public function conectarFtp($_host) {
                $this->_host      = $_host;
        $this->_conexao   = ftp_connect($this->_host, 21, 120);
                //Se n�o funcionar a 21 tentaremos a 2142
                if ($this->_conexao === false) {
                        $this->_conexao   = ftp_connect($this->_host, 2142, 120);
                }
        $_ret             = true;
        if ($this->_conexao === false) {
                        return false;
        }

        $_ret = ftp_login($this->_conexao, 'anonymous', '');
        //$_ret = ftp_login($this->_conexao, 'blabla', '');
        while ($_ret === false) {
            if (empty($this->_usuario_ftp)) {
                $this->solicitarUsuarioFtp();
            }
            if (($_ret = ftp_login($this->_conexao, $this->_usuario_ftp, $this->_senha_ftp)) === false) {
                echo "Usuario ou senha incorretos, por favor tente novamente\n";
                $this->_usuario_ftp = "";
            }
        }
        ftp_pasv($this->_conexao, true);
        return $_ret;
    }

    /**
     * Limpar tela prompt
     */
    public function limparTela() {
        $clearscreen = chr(27) . "[H" . chr(27) . "[2J";
        print $clearscreen;
    }

    /**
     * Se o anonymous falhar vamos pedir a senha do usu�rio
     */
    public function solicitarUsuarioFtp() {
        do {
            echo "Por favor entre com o seu usu�rio de ftp \n";
            $_handle = fopen ("php://stdin","r");
            $this->_usuario_ftp = trim(fgets($_handle));
            fclose($_handle);
            //$this->_usuario_ftp = readline();
        } while (empty($this->_usuario_ftp));

        do {
            echo "Por favor entre com a senha do usu�rio ftp \n";
            //$this->_senha_ftp = readline();
            $_handle = fopen ("php://stdin","r");

            //Colocar a fonte em uma cor "invis�vel" preto rsrsrsr
            echo "\033[5;30m;\033[48m";
            $this->_senha_ftp = trim(fgets($_handle));
            $this->limparTela();
            //Volta a cor normal, pra ver o resto.
            echo "\033[0m";
            fclose($_handle);
        } while (empty($this->_senha_ftp));
        //echo "qual o usu�ri [{$this->_usuario_ftp}] a senha [{$this->_senha_ftp}]\n";
    }

    public function criarDiretorio($_caminho) {
        $this->_caminho_local = $_caminho;
        if (!file_exists($_caminho)) {
            /**
             * Se somente criar a pasta a permiss�o fica somente com o usu�rio criador
             * Se dermos o CHMOD funciona.
             */
            $_ret = mkdir($_caminho,0777,true);
            $_ret = chmod($_caminho,0777);
            if ($_ret === false) {
                echo "O aplicativo n�o conseguiu criar a pasta {$_caminho}\n";
                echo "Por favor fa�a isso manualmente.";
                die();
            }
        }
    }


    protected function entrarNoDiretorio() {
        $_tentativas     = 0;
        $_erro           = true;
        while ($_erro && $_tentativas < $this->_max_tentativas) {
            $_erro = !ftp_chdir($this->_conexao,$this->_caminho_ftp);
            $_tentativas++;
        }

        return !$_erro;
    }

    protected function obterListaArquivos() {
        $_tentativas     = 0;
        $_erro           = false;
        while ($_erro === false && $_tentativas < $this->_max_tentativas) {
            $_erro  = ftp_nlist($this->_conexao, ".");
            $_tentativas++;
        }

        if ($_erro === false) {
            $this->_lista_dir = Array();
            return false;
        } else {
            $this->_lista_dir = $_erro;
            return true;
        }

    }

    public function obterListaDiretorio($_caminho) {
        $this->_caminho_ftp = $_caminho;


        if($this->entrarNoDiretorio() !== false) {
            return $this->obterListaArquivos();
        } else {
            return false;
        }
    }


    protected function copiarArquivo($_local_file, $_file) {
        $_tentativas     = 0;
        $_erro           = true;
        ftp_set_option($conn_id, FTP_TIMEOUT_SEC, 120);
        ftp_set_option($conn_id, FTP_AUTOSEEK, false);
        while ($_erro && $_tentativas < $this->_max_tentativas) {
            $_erro = !ftp_get($this->_conexao,  $_local_file, $_file, FTP_BINARY);
                        if ($_erro) {
                                //Se deu erro aqui fecho a conex�o, reconecto e tento novamente entrar no diret�rio
                                $this->fecharConexao();
                                $this->conectarFtp($this->_host);
                                $this->entrarNoDiretorio();
                        }
            $_tentativas++;
            if ($_tentativas > 1)
                echo "t";
        }

        return !$_erro;

    }
    public function copiarArquivos() {
        $this->_cont_erro    = 0;
        $this->_cont_sucesso = 0;
        foreach ($this->_lista_dir as $_file) {
            if ($_file == "." || $_file == "..") {
                continue;
            }
            //echo "\nArquivo {$_file}";
            $_local_file = $this->_caminho_local . $_file;
            // try to download $remote_file and save it to $handle
            if ($this->copiarArquivo($_local_file,$_file)) {
                $this->_cont_sucesso ++;
                echo ".";
                //echo "\nSucesso ao copiar {$_local_file}";
            } else {
                $this->_cont_erro ++;
                echo "e";
                //echo "\n*** Problemas ao copiar aquivo {$_file}\n";
            }
        }
    }


    /**
     * Pega a data do arquivo no ftp.
     * @param $_file
     * @return int
     */
    protected function pegarDataFtp($_file) {
        $_tentativas     = 0;
        $_erro           = -1;
        while ($_erro === -1 && $_tentativas < $this->_max_tentativas) {
            $_erro = ftp_mdtm($this->_conexao,$_file);
            $_tentativas++;
        }
        echo "\nArquivo {$_file} - " . date("F d Y H:i:s.", $_erro);
        return $_erro;
    }


    /**
     * Retorna se � linux ou windows.
     * @return bool
     */
    public function isLinux() {
        if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN') {
            return false;
        } else {
            return true;
        }
    }

    /**
     * Rever depois...
     * Pois estamos pegando por data... e isso n�o ser� efetivo.
     */
    public function pegarVersaoMaisRecente() {
        $_versao         = "";
        $_versao_checar  = "";
        $_arquivo_copiar = "";
        foreach ($this->_lista_dir as $_file) {
            if ($_file == "." || $_file == "..") {
                continue;
            }

            if (strpos($_file,'php_5_6') === false && strpos($_file,'php5.6') === false) {
                continue;
            }
            $_nome_arq      = explode("_",$_file);
            //Tem que ser no novo padr�o
            if (count($_nome_arq) < 8) {
                continue;
            }
            //echo "\nqtd " . count($_nome_arq);
            $_versao_checar = $_nome_arq[4];

            //echo "\nvers�o {$_versao_checar} - {$_file}";

            //$_hora_checar   = $this->pegarDataFtp($_file);
            if ($_versao_checar > $_versao) {
               // echo "\n� maior {$_versao_checar} > {$_versao}";
                $_versao    = $_versao_checar;
                $_arquivo   = $_file;
            }

        }
        $_retorno = false;
        if (!empty($_arquivo)) {
            $this->fomatarMensagem("\nArquivo escolhido foi " . $_arquivo);
            $this->fomatarMensagem("\nIniciando c�pia do arquivo " . $_arquivo . " do ftp");
            if ($this->copiarArquivo($this->_caminho_local . $_arquivo,$_arquivo)) {
                $_zip_file      = new ZipArchive();
                $this->fomatarMensagem("\nAbrindo o arquivo " . $_arquivo);
                if ($_zip_file->open($this->_caminho_local . $_arquivo)) {
                    $this->fomatarMensagem("\nDescompactando o arquivo " . $_arquivo);
                    if ($_zip_file->extractTo($this->_caminho_local)) {
                        $this->fomatarMensagem("\nArquivo descompactado na pasta {$this->_caminho_local}");
                        $_retorno = true;
                    }
                } else {
                    echo "\nN�o foi poss�vel abrir o arquivo " . $this->_caminho_local . $_arquivo;
                }
                unlink($this->_caminho_local . $_arquivo);
            }
        } else {
            echo "\nN�o havia nenhum arquivo que continha as palavras php_5_6 ou php5.6 em seu nome";
        }
        return $_retorno;
    }

    public function fomatarMensagem($_msg) {
        echo "\n*****************************************";
        echo $_msg;
        echo "\n*****************************************";
    }

    public function retornarMensagem($_tipo) {
        if ($this->_cont_erro > 0) {
            $this->fomatarMensagem("\n {$this->_cont_erro} arquivo" . ($this->_cont_erro > 1 ? "s" : "") . " com erro" .
                                   "\nERRO, Por favor fa�a o processo de c�pia de {$_tipo} manualmente");

        } else {
            $this->fomatarMensagem("\n {$this->_cont_sucesso} arquivo" . ($this->_cont_sucesso > 1 ? "s" : "") . " copiado" . ($this->_cont_sucesso > 1 ? "s" : "") . " com sucesso" .
                                   "\nProcesso de c�pia conclu�do com sucesso");
        }
        echo "\n\n\n";
    }

    public function fecharConexao() {
        ftp_close($this->_conexao);
    }

}
