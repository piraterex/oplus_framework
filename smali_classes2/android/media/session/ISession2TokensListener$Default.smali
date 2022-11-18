.class public Landroid/media/session/ISession2TokensListener$Default;
.super Ljava/lang/Object;
.source "ISession2TokensListener.java"

# interfaces
.implements Landroid/media/session/ISession2TokensListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISession2TokensListener;
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

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSession2TokensChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    return-void
.end method
