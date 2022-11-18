.class public abstract Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.super Landroid/os/Binder;
.source "IKeyguardStateCallback.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardStateCallback"

.field static final greylist-max-o TRANSACTION_onInputRestrictedStateChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onShowingStateChanged:I = 0x1

.field static final greylist-max-o TRANSACTION_onSimSecureStateChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onTrustedChanged:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardStateCallback;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/IKeyguardStateCallback;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 57
    packed-switch p0, :pswitch_data_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_0
    const-string/jumbo v0, "onTrustedChanged"

    return-object v0

    .line 69
    :pswitch_1
    const-string/jumbo v0, "onInputRestrictedStateChanged"

    return-object v0

    .line 65
    :pswitch_2
    const-string/jumbo v0, "onSimSecureStateChanged"

    return-object v0

    .line 61
    :pswitch_3
    const-string/jumbo v0, "onShowingStateChanged"

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

    .line 52
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 232
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 84
    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 88
    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

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

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 134
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 135
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onTrustedChanged(Z)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 126
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onInputRestrictedStateChanged(Z)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    goto :goto_0

    .line 116
    .end local v2    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 117
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onSimSecureStateChanged(Z)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    goto :goto_0

    .line 105
    .end local v2    # "_arg0":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 107
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->onShowingStateChanged(ZI)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    nop

    .line 145
    .end local v2    # "_arg0":Z
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
