.class public Landroid/service/textclassifier/ITextClassifierCallback$Default;
.super Ljava/lang/Object;
.source "ITextClassifierCallback.java"

# interfaces
.implements Landroid/service/textclassifier/ITextClassifierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/ITextClassifierCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onFailure()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onSuccess(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
