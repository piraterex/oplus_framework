.class public abstract Landroid/os/IProcessInfoService$Stub;
.super Landroid/os/Binder;
.source "IProcessInfoService.java"

# interfaces
.implements Landroid/os/IProcessInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProcessInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IProcessInfoService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IProcessInfoService"

.field static final greylist-max-o TRANSACTION_getProcessStatesAndOomScoresFromPids:I = 0x2

.field static final greylist-max-o TRANSACTION_getProcessStatesFromPids:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.os.IProcessInfoService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IProcessInfoService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IProcessInfoService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "android.os.IProcessInfoService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IProcessInfoService;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/os/IProcessInfoService;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Landroid/os/IProcessInfoService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IProcessInfoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 70
    :pswitch_0
    const-string v0, "getProcessStatesAndOomScoresFromPids"

    return-object v0

    .line 66
    :pswitch_1
    const-string v0, "getProcessStatesFromPids"

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

    .line 57
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 81
    invoke-static {p1}, Landroid/os/IProcessInfoService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 85
    const-string v0, "android.os.IProcessInfoService"

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 97
    packed-switch p1, :pswitch_data_1

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 119
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 121
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .local v3, "_arg1_length":I
    if-gez v3, :cond_1

    .line 123
    const/4 v4, 0x0

    .local v4, "_arg1":[I
    goto :goto_0

    .line 125
    .end local v4    # "_arg1":[I
    :cond_1
    new-array v4, v3, [I

    .line 128
    .restart local v4    # "_arg1":[I
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 129
    .local v5, "_arg2_length":I
    if-gez v5, :cond_2

    .line 130
    const/4 v6, 0x0

    .local v6, "_arg2":[I
    goto :goto_1

    .line 132
    .end local v6    # "_arg2":[I
    :cond_2
    new-array v6, v5, [I

    .line 134
    .restart local v6    # "_arg2":[I
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v4, v6}, Landroid/os/IProcessInfoService$Stub;->getProcessStatesAndOomScoresFromPids([I[I[I)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 138
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 139
    goto :goto_3

    .line 102
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[I
    .end local v5    # "_arg2_length":I
    .end local v6    # "_arg2":[I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 104
    .restart local v2    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 105
    .restart local v3    # "_arg1_length":I
    if-gez v3, :cond_3

    .line 106
    const/4 v4, 0x0

    .restart local v4    # "_arg1":[I
    goto :goto_2

    .line 108
    .end local v4    # "_arg1":[I
    :cond_3
    new-array v4, v3, [I

    .line 110
    .restart local v4    # "_arg1":[I
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {p0, v2, v4}, Landroid/os/IProcessInfoService$Stub;->getProcessStatesFromPids([I[I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 114
    nop

    .line 146
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1_length":I
    .end local v4    # "_arg1":[I
    :goto_3
    return v1

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
