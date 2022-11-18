.class public Lcom/android/ims/internal/IImsExternalCallStateListener$Default;
.super Ljava/lang/Object;
.source "IImsExternalCallStateListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsExternalCallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsExternalCallStateListener;
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

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onImsExternalCallStateUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    .local p1, "externalCallDialogs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    return-void
.end method
