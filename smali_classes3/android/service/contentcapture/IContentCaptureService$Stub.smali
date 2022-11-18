.class public abstract Landroid/service/contentcapture/IContentCaptureService$Stub;
.super Landroid/os/Binder;
.source "IContentCaptureService.java"

# interfaces
.implements Landroid/service/contentcapture/IContentCaptureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/IContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onActivityEvent:I = 0x8

.field static final blacklist TRANSACTION_onActivitySnapshot:I = 0x5

.field static final blacklist TRANSACTION_onConnected:I = 0x1

.field static final blacklist TRANSACTION_onDataRemovalRequest:I = 0x6

.field static final blacklist TRANSACTION_onDataShared:I = 0x7

.field static final blacklist TRANSACTION_onDisconnected:I = 0x2

.field static final blacklist TRANSACTION_onSessionFinished:I = 0x4

.field static final blacklist TRANSACTION_onSessionStarted:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.service.contentcapture.IContentCaptureService"

    invoke-virtual {p0, p0, v0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    const-string v0, "android.service.contentcapture.IContentCaptureService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/contentcapture/IContentCaptureService;

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/service/contentcapture/IContentCaptureService;

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 106
    :pswitch_0
    const-string/jumbo v0, "onActivityEvent"

    return-object v0

    .line 102
    :pswitch_1
    const-string/jumbo v0, "onDataShared"

    return-object v0

    .line 98
    :pswitch_2
    const-string/jumbo v0, "onDataRemovalRequest"

    return-object v0

    .line 94
    :pswitch_3
    const-string/jumbo v0, "onActivitySnapshot"

    return-object v0

    .line 90
    :pswitch_4
    const-string/jumbo v0, "onSessionFinished"

    return-object v0

    .line 86
    :pswitch_5
    const-string/jumbo v0, "onSessionStarted"

    return-object v0

    .line 82
    :pswitch_6
    const-string/jumbo v0, "onDisconnected"

    return-object v0

    .line 78
    :pswitch_7
    const-string/jumbo v0, "onConnected"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 349
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 117
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.service.contentcapture.IContentCaptureService"

    .line 122
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 123
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 133
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 214
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 129
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v10

    .line 207
    :pswitch_1
    sget-object v0, Landroid/service/contentcapture/ActivityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/contentcapture/ActivityEvent;

    .line 208
    .local v0, "_arg0":Landroid/service/contentcapture/ActivityEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {v6, v0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    .line 210
    goto/16 :goto_0

    .line 197
    .end local v0    # "_arg0":Landroid/service/contentcapture/ActivityEvent;
    :pswitch_2
    sget-object v0, Landroid/view/contentcapture/DataShareRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/DataShareRequest;

    .line 199
    .local v0, "_arg0":Landroid/view/contentcapture/DataShareRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/contentcapture/IDataShareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IDataShareCallback;

    move-result-object v1

    .line 200
    .local v1, "_arg1":Landroid/service/contentcapture/IDataShareCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {v6, v0, v1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    .line 202
    goto/16 :goto_0

    .line 189
    .end local v0    # "_arg0":Landroid/view/contentcapture/DataShareRequest;
    .end local v1    # "_arg1":Landroid/service/contentcapture/IDataShareCallback;
    :pswitch_3
    sget-object v0, Landroid/view/contentcapture/DataRemovalRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/DataRemovalRequest;

    .line 190
    .local v0, "_arg0":Landroid/view/contentcapture/DataRemovalRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {v6, v0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    .line 192
    goto :goto_0

    .line 179
    .end local v0    # "_arg0":Landroid/view/contentcapture/DataRemovalRequest;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    .local v0, "_arg0":I
    sget-object v1, Landroid/service/contentcapture/SnapshotData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/contentcapture/SnapshotData;

    .line 182
    .local v1, "_arg1":Landroid/service/contentcapture/SnapshotData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {v6, v0, v1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    .line 184
    goto :goto_0

    .line 171
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/service/contentcapture/SnapshotData;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {v6, v0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onSessionFinished(I)V

    .line 174
    goto :goto_0

    .line 155
    .end local v0    # "_arg0":I
    :pswitch_6
    sget-object v0, Landroid/view/contentcapture/ContentCaptureContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/contentcapture/ContentCaptureContext;

    .line 157
    .local v12, "_arg0":Landroid/view/contentcapture/ContentCaptureContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 159
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 161
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v15

    .line 163
    .local v15, "_arg3":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 164
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    .line 166
    goto :goto_0

    .line 149
    .end local v12    # "_arg0":Landroid/view/contentcapture/ContentCaptureContext;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Lcom/android/internal/os/IResultReceiver;
    .end local v16    # "_arg4":I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDisconnected()V

    .line 150
    goto :goto_0

    .line 138
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 140
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 142
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 143
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onConnected(Landroid/os/IBinder;ZZ)V

    .line 145
    nop

    .line 217
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
