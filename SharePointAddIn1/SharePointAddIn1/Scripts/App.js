'use strict';

ExecuteOrDelayUntilScriptLoaded(initializePage, "sp.js");

function initializePage()
{
    var context = SP.ClientContext.get_current();
    var user = context.get_web().get_currentUser();

    // Questa codice viene eseguito quando DOM è pronto e crea un oggetto contesto necessario per usare il modello a oggetti di SharePoint
    $(document).ready(function () {
        getUserName();
    });

    // Questa funzione prepara, carica e quindi esegue una query di SharePoint per ottenere le informazioni sugli utenti correnti
    function getUserName() {
        context.load(user);
        context.executeQueryAsync(onGetUserNameSuccess, onGetUserNameFail);
    }

    // Questa funzione viene eseguita se la chiamata precedente ha esito positivo
    // Sostituisce il contenuto dell'elemento 'message' con il nome utente
    function onGetUserNameSuccess() {
        $('#message').text('Hello ' + user.get_title());
    }

    // Questa funzione viene eseguita se la chiamata precedente ha esito negativo
    function onGetUserNameFail(sender, args) {
        alert('Failed to get user name. Error:' + args.get_message());
    }
}
