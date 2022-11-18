.class public abstract Landroid/os/IIncidentReportStatusListener$Stub;
.super Landroid/os/Binder;
.source "IIncidentReportStatusListener.java"

# interfaces
.implements Landroid/os/IIncidentReportStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentReportStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentReportStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IIncidentReportStatusListener"

.field static final greylist-max-o TRANSACTION_onReportFailed:I = 0x4

.field static final greylist-max-o TRANSACTION_onReportFinished:I = 0x3

.field static final greylist-max-o TRANSACTION_onReportSectionStatus:I = 0x2

.field static final greylist-max-o TRANSACTION_onReportStarted:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.os.IIncidentReportStatusListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIncidentReportStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentReportStatusListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "android.os.IIncidentReportStatusListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IIncidentReportStatusListener;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/os/IIncidentReportStatusListener;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IIncidentReportStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_0
    const-string/jumbo v0, "onReportFailed"

    return-object v0

    .line 74
    :pswitch_1
    const-string/jumbo v0, "onReportFinished"

    return-object v0

    .line 70
    :pswitch_2
    const-string/jumbo v0, "onReportSectionStatus"

    return-object v0

    .line 66
    :pswitch_3
    const-string/jumbo v0, "onReportStarted"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 209
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/os/IIncidentReportStatusListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const-string v0, "android.os.IIncidentReportStatusListener"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 105
    packed-switch p1, :pswitch_data_1

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 129
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportFailed()V

    .line 130
    goto :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportFinished()V

    .line 125
    goto :goto_0

    .line 115
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 118
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2, v3}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportSectionStatus(II)V

    .line 120
    goto :goto_0

    .line 109
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/IIncidentReportStatusListener$Stub;->onReportStarted()V

    .line 110
    nop

    .line 137
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
