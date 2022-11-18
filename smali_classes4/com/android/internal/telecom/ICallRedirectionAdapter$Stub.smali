.class public abstract Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;
.super Landroid/os/Binder;
.source "ICallRedirectionAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallRedirectionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallRedirectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelCall:I = 0x1

.field static final blacklist TRANSACTION_placeCallUnmodified:I = 0x2

.field static final blacklist TRANSACTION_redirectCall:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.android.internal.telecom.ICallRedirectionAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallRedirectionAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "com.android.internal.telecom.ICallRedirectionAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallRedirectionAdapter;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_0
    const-string/jumbo v0, "redirectCall"

    return-object v0

    .line 69
    :pswitch_1
    const-string/jumbo v0, "placeCallUnmodified"

    return-object v0

    .line 65
    :pswitch_2
    const-string v0, "cancelCall"

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

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 189
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    const-string v0, "com.android.internal.telecom.ICallRedirectionAdapter"

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 100
    packed-switch p1, :pswitch_data_1

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 115
    :pswitch_1
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 117
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 119
    .local v3, "_arg1":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 120
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->redirectCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 122
    goto :goto_0

    .line 109
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "_arg2":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->placeCallUnmodified()V

    .line 110
    goto :goto_0

    .line 104
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->cancelCall()V

    .line 105
    nop

    .line 129
    :goto_0
    return v1

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
