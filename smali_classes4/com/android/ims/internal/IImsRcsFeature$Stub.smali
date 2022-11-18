.class public abstract Lcom/android/ims/internal/IImsRcsFeature$Stub;
.super Landroid/os/Binder;
.source "IImsRcsFeature.java"

# interfaces
.implements Lcom/android/ims/internal/IImsRcsFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsRcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsRcsFeature$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsRcsFeature"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.android.ims.internal.IImsRcsFeature"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsRcsFeature$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRcsFeature;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    const-string v0, "com.android.ims.internal.IImsRcsFeature"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsRcsFeature;

    if-eqz v1, :cond_1

    .line 38
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsRcsFeature;

    return-object v1

    .line 40
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsRcsFeature$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsRcsFeature$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 49
    nop

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 44
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 60
    invoke-static {p1}, Lcom/android/ims/internal/IImsRcsFeature$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const-string v0, "com.android.ims.internal.IImsRcsFeature"

    .line 65
    .local v0, "descriptor":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 73
    goto :goto_0

    .line 69
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x1

    return v1

    .line 77
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch
.end method
