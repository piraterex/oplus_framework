.class Landroid/view/translation/Translator$ServiceBinderReceiver;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "Translator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/Translator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceBinderReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
    }
.end annotation


# instance fields
.field private blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLatch:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mSessionId:I

.field private final blacklist mTranslator:Landroid/view/translation/Translator;


# direct methods
.method constructor blacklist <init>(Landroid/view/translation/Translator;)V
    .locals 2
    .param p1, "translator"    # Landroid/view/translation/Translator;

    .line 113
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 114
    iput-object p1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    .line 115
    return-void
.end method

.method constructor blacklist <init>(Landroid/view/translation/Translator;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "translator"    # Landroid/view/translation/Translator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/Translator;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/Translator;>;"
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 109
    iput-object p1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    .line 110
    iput-object p2, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mCallback:Ljava/util/function/Consumer;

    .line 111
    return-void
.end method


# virtual methods
.method blacklist getSessionStateResult()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 126
    nop

    .line 127
    iget v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mSessionId:I

    return v0

    .line 120
    :cond_0
    :try_start_1
    new-instance v1, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;

    const-string v2, "Session not created in 60000ms"

    invoke-direct {v1, v2, v0}, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;-><init>(Ljava/lang/String;Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException-IA;)V

    .end local p0    # "this":Landroid/view/translation/Translator$ServiceBinderReceiver;
    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    .restart local p0    # "this":Landroid/view/translation/Translator$ServiceBinderReceiver;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 125
    new-instance v2, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;

    const-string v3, "Session not created because interrupted"

    invoke-direct {v2, v3, v0}, Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;-><init>(Ljava/lang/String;Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException-IA;)V

    throw v2
.end method

.method public blacklist send(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 132
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 133
    iget-object v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 134
    iget-object v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 135
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 137
    :cond_0
    return-void

    .line 140
    :cond_1
    if-eqz p2, :cond_2

    .line 141
    const-string v0, "sessionId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mSessionId:I

    .line 142
    const-string v0, "binder"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 143
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_3

    .line 144
    const-string v1, "Translator"

    const-string v2, "No binder extra result"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 148
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_2
    const/4 v0, 0x0

    .line 150
    .restart local v0    # "binder":Landroid/os/IBinder;
    :cond_3
    iget-object v1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    invoke-static {v1, v0}, Landroid/view/translation/Translator;->-$$Nest$msetServiceBinder(Landroid/view/translation/Translator;Landroid/os/IBinder;)V

    .line 151
    iget-object v1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 152
    iget-object v1, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mCallback:Ljava/util/function/Consumer;

    if-eqz v1, :cond_4

    .line 153
    iget-object v2, p0, Landroid/view/translation/Translator$ServiceBinderReceiver;->mTranslator:Landroid/view/translation/Translator;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 155
    :cond_4
    return-void
.end method
