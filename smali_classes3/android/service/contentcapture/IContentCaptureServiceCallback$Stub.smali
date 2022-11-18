.class public abstract Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IContentCaptureServiceCallback.java"

# interfaces
.implements Landroid/service/contentcapture/IContentCaptureServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/IContentCaptureServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_disableSelf:I = 0x3

.field static final blacklist TRANSACTION_setContentCaptureConditions:I = 0x2

.field static final blacklist TRANSACTION_setContentCaptureWhitelist:I = 0x1

.field static final blacklist TRANSACTION_writeSessionFlush:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.service.contentcapture.IContentCaptureServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    const-string v0, "android.service.contentcapture.IContentCaptureServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/contentcapture/IContentCaptureServiceCallback;

    if-eqz v1, :cond_1

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/service/contentcapture/IContentCaptureServiceCallback;

    return-object v1

    .line 54
    :cond_1
    new-instance v1, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 79
    :pswitch_0
    const-string/jumbo v0, "writeSessionFlush"

    return-object v0

    .line 75
    :pswitch_1
    const-string v0, "disableSelf"

    return-object v0

    .line 71
    :pswitch_2
    const-string/jumbo v0, "setContentCaptureConditions"

    return-object v0

    .line 67
    :pswitch_3
    const-string/jumbo v0, "setContentCaptureWhitelist"

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

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 233
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 90
    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 94
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.service.contentcapture.IContentCaptureServiceCallback"

    .line 95
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 96
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 106
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 151
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 102
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v10

    .line 136
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 138
    .local v12, "_arg0":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/ComponentName;

    .line 140
    .local v13, "_arg1":Landroid/content/ComponentName;
    sget-object v0, Landroid/service/contentcapture/FlushMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/service/contentcapture/FlushMetrics;

    .line 142
    .local v14, "_arg2":Landroid/service/contentcapture/FlushMetrics;
    sget-object v0, Landroid/content/ContentCaptureOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/ContentCaptureOptions;

    .line 144
    .local v15, "_arg3":Landroid/content/ContentCaptureOptions;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 145
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->writeSessionFlush(ILandroid/content/ComponentName;Landroid/service/contentcapture/FlushMetrics;Landroid/content/ContentCaptureOptions;I)V

    .line 147
    goto :goto_0

    .line 130
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Landroid/content/ComponentName;
    .end local v14    # "_arg2":Landroid/service/contentcapture/FlushMetrics;
    .end local v15    # "_arg3":Landroid/content/ContentCaptureOptions;
    .end local v16    # "_arg4":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->disableSelf()V

    .line 131
    goto :goto_0

    .line 121
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/view/contentcapture/ContentCaptureCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 124
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {v6, v0, v1}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->setContentCaptureConditions(Ljava/lang/String;Ljava/util/List;)V

    .line 126
    goto :goto_0

    .line 111
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/contentcapture/ContentCaptureCondition;>;"
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 113
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 114
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {v6, v0, v1}, Landroid/service/contentcapture/IContentCaptureServiceCallback$Stub;->setContentCaptureWhitelist(Ljava/util/List;Ljava/util/List;)V

    .line 116
    nop

    .line 154
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    return v10

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
