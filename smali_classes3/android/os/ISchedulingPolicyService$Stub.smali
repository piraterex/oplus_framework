.class public abstract Landroid/os/ISchedulingPolicyService$Stub;
.super Landroid/os/Binder;
.source "ISchedulingPolicyService.java"

# interfaces
.implements Landroid/os/ISchedulingPolicyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISchedulingPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISchedulingPolicyService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.ISchedulingPolicyService"

.field static final greylist-max-o TRANSACTION_requestCpusetBoost:I = 0x2

.field static final greylist-max-o TRANSACTION_requestPriority:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.os.ISchedulingPolicyService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISchedulingPolicyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/ISchedulingPolicyService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    const-string v0, "android.os.ISchedulingPolicyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ISchedulingPolicyService;

    if-eqz v1, :cond_1

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/os/ISchedulingPolicyService;

    return-object v1

    .line 63
    :cond_1
    new-instance v1, Landroid/os/ISchedulingPolicyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ISchedulingPolicyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_0
    const-string/jumbo v0, "requestCpusetBoost"

    return-object v0

    .line 76
    :pswitch_1
    const-string/jumbo v0, "requestPriority"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/os/ISchedulingPolicyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const-string v0, "android.os.ISchedulingPolicyService"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 107
    packed-switch p1, :pswitch_data_1

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 103
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 128
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 130
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 131
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2, v3}, Landroid/os/ISchedulingPolicyService$Stub;->requestCpusetBoost(ZLandroid/os/IBinder;)I

    move-result v4

    .line 133
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    goto :goto_0

    .line 112
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 116
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 118
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 119
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/ISchedulingPolicyService$Stub;->requestPriority(IIIZ)I

    move-result v6

    .line 121
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    nop

    .line 142
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
