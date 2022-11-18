.class public Landroid/service/textclassifier/ITextClassifierService$Default;
.super Ljava/lang/Object;
.source "ITextClassifierService.java"

# interfaces
.implements Landroid/service/textclassifier/ITextClassifierService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/ITextClassifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextClassification$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onConnectedStateChanged(I)V
    .locals 0
    .param p1, "connected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 0
    .param p1, "context"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p2, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextLanguage$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextLinks$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "event"    # Landroid/view/textclassifier/SelectionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/ConversationActions$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextSelection$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 0
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "event"    # Landroid/view/textclassifier/TextClassifierEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
