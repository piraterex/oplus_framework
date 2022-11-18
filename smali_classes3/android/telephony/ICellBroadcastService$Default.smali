.class public Landroid/telephony/ICellBroadcastService$Default;
.super Ljava/lang/Object;
.source "ICellBroadcastService.java"

# interfaces
.implements Landroid/telephony/ICellBroadcastService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ICellBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handleCdmaCellBroadcastSms(I[BI)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "bearerData"    # [B
    .param p3, "serviceCategory"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist handleCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p3, "originatingAddress"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    .local p2, "programData":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    return-void
.end method

.method public blacklist handleGsmCellBroadcastSms(I[B)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
