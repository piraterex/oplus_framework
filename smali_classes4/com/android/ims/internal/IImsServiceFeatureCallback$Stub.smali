.class public abstract Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;
.super Landroid/os/Binder;
.source "IImsServiceFeatureCallback.java"

# interfaces
.implements Lcom/android/ims/internal/IImsServiceFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsServiceFeatureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsServiceFeatureCallback"

.field static final greylist-max-o TRANSACTION_imsFeatureCreated:I = 0x1

.field static final greylist-max-o TRANSACTION_imsFeatureRemoved:I = 0x2

.field static final greylist-max-o TRANSACTION_imsStatusChanged:I = 0x3

.field static final blacklist TRANSACTION_updateCapabilities:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.android.ims.internal.IImsServiceFeatureCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    const-string v0, "com.android.ims.internal.IImsServiceFeatureCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsServiceFeatureCallback;

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsServiceFeatureCallback;

    return-object v1

    .line 56
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_0
    const-string/jumbo v0, "updateCapabilities"

    return-object v0

    .line 77
    :pswitch_1
    const-string v0, "imsStatusChanged"

    return-object v0

    .line 73
    :pswitch_2
    const-string v0, "imsFeatureRemoved"

    return-object v0

    .line 69
    :pswitch_3
    const-string v0, "imsFeatureCreated"

    return-object v0

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

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 230
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 96
    const-string v0, "com.android.ims.internal.IImsServiceFeatureCallback"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 108
    packed-switch p1, :pswitch_data_1

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 141
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 142
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->updateCapabilities(J)V

    .line 144
    goto :goto_0

    .line 131
    .end local v2    # "_arg0":J
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 134
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->imsStatusChanged(II)V

    .line 136
    goto :goto_0

    .line 123
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->imsFeatureRemoved(I)V

    .line 126
    goto :goto_0

    .line 113
    .end local v2    # "_arg0":I
    :pswitch_4
    sget-object v2, Lcom/android/ims/ImsFeatureContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/ImsFeatureContainer;

    .line 115
    .local v2, "_arg0":Lcom/android/ims/ImsFeatureContainer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 116
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->imsFeatureCreated(Lcom/android/ims/ImsFeatureContainer;I)V

    .line 118
    nop

    .line 151
    .end local v2    # "_arg0":Lcom/android/ims/ImsFeatureContainer;
    .end local v3    # "_arg1":I
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
