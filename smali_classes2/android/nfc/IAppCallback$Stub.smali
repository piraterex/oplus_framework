.class public abstract Landroid/nfc/IAppCallback$Stub;
.super Landroid/os/Binder;
.source "IAppCallback.java"

# interfaces
.implements Landroid/nfc/IAppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/IAppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/IAppCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.nfc.IAppCallback"

.field static final greylist-max-o TRANSACTION_createBeamShareData:I = 0x1

.field static final greylist-max-o TRANSACTION_onNdefPushComplete:I = 0x2

.field static final greylist-max-o TRANSACTION_onTagDiscovered:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "android.nfc.IAppCallback"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/IAppCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    const-string v0, "android.nfc.IAppCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/IAppCallback;

    if-eqz v1, :cond_1

    .line 45
    move-object v1, v0

    check-cast v1, Landroid/nfc/IAppCallback;

    return-object v1

    .line 47
    :cond_1
    new-instance v1, Landroid/nfc/IAppCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/IAppCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 56
    packed-switch p0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 68
    :pswitch_0
    const-string v0, "onTagDiscovered"

    return-object v0

    .line 64
    :pswitch_1
    const-string v0, "onNdefPushComplete"

    return-object v0

    .line 60
    :pswitch_2
    const-string v0, "createBeamShareData"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 51
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 195
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 79
    invoke-static {p1}, Landroid/nfc/IAppCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 83
    const-string v0, "android.nfc.IAppCallback"

    .line 84
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 95
    packed-switch p1, :pswitch_data_1

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 91
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 118
    :pswitch_1
    sget-object v2, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 119
    .local v2, "_arg0":Landroid/nfc/Tag;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/nfc/IAppCallback$Stub;->onTagDiscovered(Landroid/nfc/Tag;)V

    .line 121
    goto :goto_0

    .line 110
    .end local v2    # "_arg0":Landroid/nfc/Tag;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 111
    .local v2, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Landroid/nfc/IAppCallback$Stub;->onNdefPushComplete(B)V

    .line 113
    goto :goto_0

    .line 100
    .end local v2    # "_arg0":B
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 101
    .restart local v2    # "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, v2}, Landroid/nfc/IAppCallback$Stub;->createBeamShareData(B)Landroid/nfc/BeamShareData;

    move-result-object v3

    .line 103
    .local v3, "_result":Landroid/nfc/BeamShareData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 105
    nop

    .line 128
    .end local v2    # "_arg0":B
    .end local v3    # "_result":Landroid/nfc/BeamShareData;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
