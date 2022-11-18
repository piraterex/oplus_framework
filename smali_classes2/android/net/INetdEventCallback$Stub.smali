.class public abstract Landroid/net/INetdEventCallback$Stub;
.super Landroid/os/Binder;
.source "INetdEventCallback.java"

# interfaces
.implements Landroid/net/INetdEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetdEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetdEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetdEventCallback"

.field static final greylist-max-o TRANSACTION_onConnectEvent:I = 0x4

.field static final greylist-max-o TRANSACTION_onDnsEvent:I = 0x1

.field static final blacklist TRANSACTION_onNat64PrefixEvent:I = 0x2

.field static final greylist-max-o TRANSACTION_onPrivateDnsValidationEvent:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "android.net.INetdEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetdEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/INetdEventCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    const-string v0, "android.net.INetdEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetdEventCallback;

    if-eqz v1, :cond_1

    .line 93
    move-object v1, v0

    check-cast v1, Landroid/net/INetdEventCallback;

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Landroid/net/INetdEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetdEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 120
    :pswitch_0
    const-string v0, "onConnectEvent"

    return-object v0

    .line 116
    :pswitch_1
    const-string v0, "onPrivateDnsValidationEvent"

    return-object v0

    .line 112
    :pswitch_2
    const-string v0, "onNat64PrefixEvent"

    return-object v0

    .line 108
    :pswitch_3
    const-string v0, "onDnsEvent"

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

    .line 99
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 354
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 131
    invoke-static {p1}, Landroid/net/INetdEventCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    move-object/from16 v10, p0

    move/from16 v11, p1

    const-string v12, "android.net.INetdEventCallback"

    .line 136
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v11, v13, :cond_0

    const v0, 0xffffff

    if-gt v11, v0, :cond_0

    .line 137
    move-object/from16 v14, p2

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    move-object/from16 v14, p2

    .line 139
    :goto_0
    packed-switch v11, :pswitch_data_0

    .line 147
    move-object/from16 v15, p3

    packed-switch v11, :pswitch_data_1

    .line 215
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 143
    :pswitch_0
    move-object/from16 v15, p3

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return v13

    .line 202
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 206
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 208
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 209
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-wide v3, v8

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetdEventCallback$Stub;->onConnectEvent(Ljava/lang/String;IJI)V

    .line 211
    goto :goto_1

    .line 188
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":J
    .end local v16    # "_arg3":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 190
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 195
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/net/INetdEventCallback$Stub;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 197
    goto :goto_1

    .line 174
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 178
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 181
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/net/INetdEventCallback$Stub;->onNat64PrefixEvent(IZLjava/lang/String;I)V

    .line 183
    goto :goto_1

    .line 152
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 154
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 156
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 158
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 160
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    .line 162
    .local v20, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 164
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 166
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 167
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/net/INetdEventCallback$Stub;->onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V

    .line 169
    nop

    .line 218
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":[Ljava/lang/String;
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":I
    :goto_1
    return v13

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
