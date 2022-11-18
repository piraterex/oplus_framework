.class public abstract Landroid/location/IGnssStatusListener$Stub;
.super Landroid/os/Binder;
.source "IGnssStatusListener.java"

# interfaces
.implements Landroid/location/IGnssStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGnssStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGnssStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.IGnssStatusListener"

.field static final greylist-max-o TRANSACTION_onFirstFix:I = 0x3

.field static final greylist-max-o TRANSACTION_onGnssStarted:I = 0x1

.field static final greylist-max-o TRANSACTION_onGnssStopped:I = 0x2

.field static final greylist-max-o TRANSACTION_onSvStatusChanged:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.location.IGnssStatusListener"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGnssStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "android.location.IGnssStatusListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/IGnssStatusListener;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/location/IGnssStatusListener;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Landroid/location/IGnssStatusListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IGnssStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 74
    :pswitch_0
    const-string v0, "onSvStatusChanged"

    return-object v0

    .line 70
    :pswitch_1
    const-string v0, "onFirstFix"

    return-object v0

    .line 66
    :pswitch_2
    const-string v0, "onGnssStopped"

    return-object v0

    .line 62
    :pswitch_3
    const-string v0, "onGnssStarted"

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

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 206
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 85
    invoke-static {p1}, Landroid/location/IGnssStatusListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-string v0, "android.location.IGnssStatusListener"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 101
    packed-switch p1, :pswitch_data_1

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 124
    :pswitch_1
    sget-object v2, Landroid/location/GnssStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssStatus;

    .line 125
    .local v2, "_arg0":Landroid/location/GnssStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 126
    invoke-virtual {p0, v2}, Landroid/location/IGnssStatusListener$Stub;->onSvStatusChanged(Landroid/location/GnssStatus;)V

    .line 127
    goto :goto_0

    .line 116
    .end local v2    # "_arg0":Landroid/location/GnssStatus;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/location/IGnssStatusListener$Stub;->onFirstFix(I)V

    .line 119
    goto :goto_0

    .line 110
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/location/IGnssStatusListener$Stub;->onGnssStopped()V

    .line 111
    goto :goto_0

    .line 105
    :pswitch_4
    invoke-virtual {p0}, Landroid/location/IGnssStatusListener$Stub;->onGnssStarted()V

    .line 106
    nop

    .line 134
    :goto_0
    return v1

    nop

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
