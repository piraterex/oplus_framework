.class public Landroid/view/IInputFilterHost$Default;
.super Ljava/lang/Object;
.source "IInputFilterHost.java"

# interfaces
.implements Landroid/view/IInputFilterHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IInputFilterHost;
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

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
