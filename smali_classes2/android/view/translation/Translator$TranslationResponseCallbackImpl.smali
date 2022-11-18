.class Landroid/view/translation/Translator$TranslationResponseCallbackImpl;
.super Landroid/service/translation/ITranslationCallback$Stub;
.source "Translator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/Translator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslationResponseCallbackImpl"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 398
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/translation/TranslationResponse;>;"
    invoke-direct {p0}, Landroid/service/translation/ITranslationCallback$Stub;-><init>()V

    .line 399
    iput-object p1, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    .line 400
    iput-object p2, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 401
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onTranslationResponse$0$android-view-translation-Translator$TranslationResponseCallbackImpl(Landroid/view/translation/TranslationResponse;)V
    .locals 1
    .param p1, "response"    # Landroid/view/translation/TranslationResponse;

    .line 409
    iget-object v0, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mCallback:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist onTranslationResponse(Landroid/view/translation/TranslationResponse;)V
    .locals 4
    .param p1, "response"    # Landroid/view/translation/TranslationResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    sget-boolean v0, Landroid/view/translation/UiTranslationController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "Translator"

    const-string v1, "onTranslationResponse called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    new-instance v0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/translation/Translator$TranslationResponseCallbackImpl;Landroid/view/translation/TranslationResponse;)V

    .line 410
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 412
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-static {v1, v2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->restoreCallingIdentity(J)V

    .line 415
    nop

    .line 416
    return-void

    .line 414
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;->restoreCallingIdentity(J)V

    .line 415
    throw v3
.end method
