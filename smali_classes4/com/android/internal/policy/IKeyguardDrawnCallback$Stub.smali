.class public abstract Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;
.super Landroid/os/Binder;
.source "IKeyguardDrawnCallback.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardDrawnCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardDrawnCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardDrawnCallback"

.field static final greylist-max-o TRANSACTION_onDrawn:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.android.internal.policy.IKeyguardDrawnCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    const-string v0, "com.android.internal.policy.IKeyguardDrawnCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v1, :cond_1

    .line 37
    move-object v1, v0

    check-cast v1, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    return-object v1

    .line 39
    :cond_1
    new-instance v1, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 48
    packed-switch p0, :pswitch_data_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 52
    :pswitch_0
    const-string/jumbo v0, "onDrawn"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 43
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 63
    invoke-static {p1}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 67
    const-string v0, "com.android.internal.policy.IKeyguardDrawnCallback"

    .line 68
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 79
    packed-switch p1, :pswitch_data_1

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 75
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return v1

    .line 83
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->onDrawn()V

    .line 84
    nop

    .line 91
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
