.class public interface abstract Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
.super Ljava/lang/Object;
.source "ListenerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/listeners/ListenerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ListenerOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public blacklist onComplete(Z)V
    .locals 0
    .param p1, "success"    # Z

    .line 72
    .local p0, "this":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    return-void
.end method

.method public blacklist onFailure(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .line 53
    .local p0, "this":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    return-void
.end method

.method public blacklist onPostExecute(Z)V
    .locals 0
    .param p1, "success"    # Z

    .line 62
    .local p0, "this":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    return-void
.end method

.method public blacklist onPreExecute()V
    .locals 0

    .line 46
    .local p0, "this":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    return-void
.end method

.method public abstract blacklist operate(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
