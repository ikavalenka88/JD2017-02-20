package by.it.psmishenko.project.java.controller;

import javax.servlet.http.HttpServletRequest;


 class CmdIndex extends Action {
    @Override
    public Action execute(HttpServletRequest request) {
        if(Utils.getSessionUser(request)!=null) return Actions.HOME.command;
        else return null;
    }
}
