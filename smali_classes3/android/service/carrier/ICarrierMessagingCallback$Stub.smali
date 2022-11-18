.class public abstract Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.super Landroid/os/Binder;
.source "ICarrierMessagingCallback.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.carrier.ICarrierMessagingCallback"

.field static final greylist-max-o TRANSACTION_onDownloadMmsComplete:I = 0x5

.field static final greylist-max-o TRANSACTION_onFilterComplete:I = 0x1

.field static final greylist-max-o TRANSACTION_onSendMmsComplete:I = 0x4

.field static final greylist-max-o TRANSACTION_onSendMultipartSmsComplete:I = 0x3

.field static final greylist-max-o TRANSACTION_onSendSmsComplete:I = 0x2


# direct methods
.method public constructor greylist-max-p <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    const-string v0, "android.service.carrier.ICarrierMessagingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/carrier/ICarrierMessagingCallback;

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/service/carrier/ICarrierMessagingCallback;

    return-object v1

    .line 56
    :cond_1
    new-instance v1, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_0
    const-string/jumbo v0, "onDownloadMmsComplete"

    return-object v0

    .line 81
    :pswitch_1
    const-string/jumbo v0, "onSendMmsComplete"

    return-object v0

    .line 77
    :pswitch_2
    const-string/jumbo v0, "onSendMultipartSmsComplete"

    return-object v0

    .line 73
    :pswitch_3
    const-string/jumbo v0, "onSendSmsComplete"

    return-object v0

    .line 69
    :pswitch_4
    const-string/jumbo v0, "onFilterComplete"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 255
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    const-string v0, "android.service.carrier.ICarrierMessagingCallback"

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 112
    packed-switch p1, :pswitch_data_1

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return v1

    .line 155
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onDownloadMmsComplete(I)V

    .line 158
    goto :goto_0

    .line 145
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 148
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2, v3}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendMmsComplete(I[B)V

    .line 150
    goto :goto_0

    .line 135
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 138
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendMultipartSmsComplete(I[I)V

    .line 140
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2, v3}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendSmsComplete(II)V

    .line 130
    goto :goto_0

    .line 117
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v2}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onFilterComplete(I)V

    .line 120
    nop

    .line 165
    .end local v2    # "_arg0":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
