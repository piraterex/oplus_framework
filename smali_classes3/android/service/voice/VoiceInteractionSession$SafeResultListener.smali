.class Landroid/service/voice/VoiceInteractionSession$SafeResultListener;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafeResultListener"
.end annotation


# instance fields
.field private final blacklist mWeakSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/function/Consumer;Landroid/service/voice/VoiceInteractionSession;)V
    .locals 1
    .param p2, "session"    # Landroid/service/voice/VoiceInteractionSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/service/voice/VoiceInteractionSession;",
            ")V"
        }
    .end annotation

    .line 2306
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2307
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession$SafeResultListener;->mWeakSession:Ljava/lang/ref/WeakReference;

    .line 2308
    return-void
.end method


# virtual methods
.method public whitelist onResult(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Bundle;

    .line 2312
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$SafeResultListener;->mWeakSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession;

    .line 2313
    .local v0, "session":Landroid/service/voice/VoiceInteractionSession;
    if-eqz v0, :cond_0

    .line 2314
    invoke-static {v0, p0}, Landroid/service/voice/VoiceInteractionSession;->-$$Nest$mremoveSafeResultListener(Landroid/service/voice/VoiceInteractionSession;Landroid/service/voice/VoiceInteractionSession$SafeResultListener;)Ljava/util/function/Consumer;

    move-result-object v1

    .line 2315
    .local v1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    if-eqz v1, :cond_0

    .line 2316
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2319
    .end local v1    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/Bundle;>;"
    :cond_0
    return-void
.end method
