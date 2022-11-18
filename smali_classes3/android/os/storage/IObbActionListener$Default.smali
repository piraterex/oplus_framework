.class public Landroid/os/storage/IObbActionListener$Default;
.super Ljava/lang/Object;
.source "IObbActionListener.java"

# interfaces
.implements Landroid/os/storage/IObbActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IObbActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onObbResult(Ljava/lang/String;II)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "nonce"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
