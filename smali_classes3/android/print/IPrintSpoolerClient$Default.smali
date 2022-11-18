.class public Landroid/print/IPrintSpoolerClient$Default;
.super Ljava/lang/Object;
.source "IPrintSpoolerClient.java"

# interfaces
.implements Landroid/print/IPrintSpoolerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintSpoolerClient;
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

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "printService"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onAllPrintJobsHandled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
