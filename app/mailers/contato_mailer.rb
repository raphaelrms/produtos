#encoding: utf-8
class ContatoMailer < ActionMailer::Base
# encoding: utf-8
    default :from => "contato@hummbrownies.com"
    layout 'email'

    def contato(params)
      @nome = params[:nome]
      @email = params[:email]
      @assunto = params[:assunto]
      @telefone = params[:telefone_ddd] + params[:telefone]
      @mensagem = params[:mensagem]
      @assunto = "Contato - #{@nome} - #{@assunto}"
      mail(:subject => @assunto, :date => Time.now).deliver
    end
end
