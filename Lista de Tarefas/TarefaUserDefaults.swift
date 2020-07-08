//
//  TarefaUserDefaults.swift
//  Lista de Tarefas
//
//  Created by Edwy Lugo on 22/06/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    
    let key = "listaTarefas"
    var tarefas: [String] = []
    
    func remover(indice: Int) {
        //Recuperar tarefas já salvas
        tarefas = listar()
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: key)
    }
    
    func salvar(tarefa: String) {
        
        //Recuperar tarefas já salvas
        tarefas = listar()
        
        //Salvar tarefa
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: key)
    }
    
    func listar() -> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: key)
        
        if dados != nil {
            return dados as! Array<String>
        } else {
            return []
        }
        
    }
    
}
