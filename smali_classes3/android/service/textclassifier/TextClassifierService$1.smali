.class Landroid/service/textclassifier/TextClassifierService$1;
.super Landroid/service/textclassifier/ITextClassifierService$Stub;
.source "TextClassifierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/TextClassifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mCancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic blacklist this$0:Landroid/service/textclassifier/TextClassifierService;


# direct methods
.method constructor blacklist <init>(Landroid/service/textclassifier/TextClassifierService;)V
    .locals 1
    .param p1, "this$0"    # Landroid/service/textclassifier/TextClassifierService;

    .line 120
    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierService$Stub;-><init>()V

    .line 123
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onClassifyText$1$android-service-textclassifier-TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 4
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextClassification$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 142
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/TextClassifierService$ProxyCallback-IA;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method synthetic blacklist lambda$onCreateTextClassificationSession$7$android-service-textclassifier-TextClassifierService$1(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 1
    .param p1, "context"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p2, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 202
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0, p1, p2}, Landroid/service/textclassifier/TextClassifierService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method synthetic blacklist lambda$onDestroyTextClassificationSession$8$android-service-textclassifier-TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 209
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0, p1}, Landroid/service/textclassifier/TextClassifierService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method synthetic blacklist lambda$onDetectLanguage$5$android-service-textclassifier-TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 4
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextLanguage$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 181
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/TextClassifierService$ProxyCallback-IA;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method synthetic blacklist lambda$onGenerateLinks$2$android-service-textclassifier-TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 4
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextLinks$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 152
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/TextClassifierService$ProxyCallback-IA;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method synthetic blacklist lambda$onSelectionEvent$3$android-service-textclassifier-TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 162
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0, p1, p2}, Landroid/service/textclassifier/TextClassifierService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    return-void
.end method

.method synthetic blacklist lambda$onSuggestConversationActions$6$android-service-textclassifier-TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 4
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/ConversationActions$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 192
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/TextClassifierService$ProxyCallback-IA;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method synthetic blacklist lambda$onSuggestSelection$0$android-service-textclassifier-TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 4
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextSelection$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 131
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/TextClassifierService$ProxyCallback-IA;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method synthetic blacklist lambda$onTextClassifierEvent$4$android-service-textclassifier-TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "event"    # Landroid/view/textclassifier/TextClassifierEvent;

    .line 171
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0, p1, p2}, Landroid/service/textclassifier/TextClassifierService;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    return-void
.end method

.method public blacklist onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextClassification$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 140
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda7;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public blacklist onConnectedStateChanged(I)V
    .locals 3
    .param p1, "connected"    # I

    .line 214
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda0;-><init>(Landroid/service/textclassifier/TextClassifierService;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda1;-><init>(Landroid/service/textclassifier/TextClassifierService;)V

    .line 214
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method public blacklist onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 2
    .param p1, "context"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p2, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 199
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda4;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public blacklist onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 208
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda6;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public blacklist onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextLanguage$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 179
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda3;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

.method public blacklist onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextLinks$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 150
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda9;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method

.method public blacklist onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "event"    # Landroid/view/textclassifier/SelectionEvent;

    .line 160
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda5;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public blacklist onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/ConversationActions$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 190
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda8;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void
.end method

.method public blacklist onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "request"    # Landroid/view/textclassifier/TextSelection$Request;
    .param p3, "callback"    # Landroid/service/textclassifier/ITextClassifierCallback;

    .line 129
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda2;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public blacklist onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "event"    # Landroid/view/textclassifier/TextClassifierEvent;

    .line 169
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->-$$Nest$fgetmMainThreadHandler(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/textclassifier/TextClassifierService$1$$ExternalSyntheticLambda10;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method
