.class public Landroid/os/TransactionTooLargeException;
.super Landroid/os/RemoteException;
.source "TransactionTooLargeException.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    .line 60
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method
